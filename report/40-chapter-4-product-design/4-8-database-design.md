## 4.8. Database Design

La persistencia de Nexa se organiza por bounded context. En lugar de dejar todo el modelo en un único diagrama general, esta sección separa las tablas principales de cada bloque del dominio para que la relación con los class diagrams sea más clara. Los servicios de soporte como pagos y notificaciones no se modelan aquí como contextos propios, porque en esta etapa funcionan como integraciones auxiliares.

### 4.8.1. Database Diagrams

Los siguientes diagramas muestran la estructura relacional principal de cada contexto. Cuando una tabla depende de otra parte del sistema, esa referencia se incluye de forma mínima para no repetir el modelo completo en cada imagen.

#### 4.8.1.1. Identity

```mermaid
erDiagram
    ROLE {
        int id PK
        string name
        string description
    }
    USER {
        int id PK
        int role_id FK
        string email
        string password_hash
        string status
        string created_at
    }
    PERMISSION {
        int id PK
        string code
        string description
    }
    ROLE_PERMISSION {
        int role_id FK
        int permission_id FK
    }
    AUDIT_LOG {
        int id PK
        int user_id FK
        string action
        string timestamp
    }
    LOGIN_HISTORY {
        int id PK
        int user_id FK
        string ip_address
        string login_at
    }

    ROLE ||--o{ USER : assigns
    ROLE ||--o{ ROLE_PERMISSION : grants
    PERMISSION ||--o{ ROLE_PERMISSION : defines
    USER ||--o{ AUDIT_LOG : records
    USER ||--o{ LOGIN_HISTORY : registers
```

Este contexto concentra autenticación, roles, permisos y trazas de acceso. La relación entre usuario, auditoría e historial de inicio de sesión permite sostener control operativo sin mezclar estas tablas con la lógica comercial del pedido.

#### 4.8.1.2. Catalog

```mermaid
erDiagram
    CATEGORY {
        int id PK
        string name
    }
    BRAND {
        int id PK
        string name
    }
    UOM {
        int id PK
        string code
        string name
    }
    PRODUCT {
        int id PK
        int category_id FK
        int brand_id FK
        int uom_id FK
        string sku
        string name
        float standard_price
    }
    PRODUCT_SPEC {
        int id PK
        int product_id FK
        string storage_temp_range
        float storage_humidity
        string packaging_type
    }

    CATEGORY ||--o{ PRODUCT : classifies
    BRAND ||--o{ PRODUCT : brands
    UOM ||--o{ PRODUCT : measures
    PRODUCT ||--o| PRODUCT_SPEC : details
```

Catalog reúne la información maestra del producto. Aquí se describen categoría, marca, unidad y especificaciones de conservación, sin incorporar todavía stock, lotes o movimientos de almacén.

#### 4.8.1.3. Inventory

```mermaid
erDiagram
    PRODUCT {
        int id PK
        string sku
        string name
    }
    WAREHOUSE {
        int id PK
        string name
    }
    WAREHOUSE_LOCATION {
        int id PK
        int warehouse_id FK
        string code
    }
    BATCH {
        int id PK
        int product_id FK
        string batch_number
        string production_date
        string expiry_date
        string status
    }
    INVENTORY_STOCK {
        int id PK
        int warehouse_location_id FK
        int product_id FK
        int batch_id FK
        int quantity_on_hand
        int quantity_reserved
    }
    INVENTORY_TRANS {
        int id PK
        int stock_id FK
        string type
        int quantity
        string trans_date
    }

    WAREHOUSE ||--o{ WAREHOUSE_LOCATION : partitions
    PRODUCT ||--o{ BATCH : groups
    WAREHOUSE_LOCATION ||--o{ INVENTORY_STOCK : stores
    PRODUCT ||--o{ INVENTORY_STOCK : identifies
    BATCH ||--o{ INVENTORY_STOCK : specifies
    INVENTORY_STOCK ||--o{ INVENTORY_TRANS : logs
```

Inventory modela la disponibilidad física del producto. El stock se entiende como una combinación de ubicación, producto y lote, mientras que `INVENTORY_TRANS` deja constancia de los movimientos que alteran esa disponibilidad.

#### 4.8.1.4. Customer Management

```mermaid
erDiagram
    USER {
        int id PK
        string email
    }
    ZONE {
        int id PK
        string name
        string description
    }
    COMMERCIAL_CLIENT {
        int id PK
        int user_id FK
        int zone_id FK
        string ruc
        string business_name
        string legal_address
        string contact_phone
    }

    USER ||--o| COMMERCIAL_CLIENT : accesses
    ZONE ||--o{ COMMERCIAL_CLIENT : groups
```

Customer Management reúne la identidad comercial del cliente y su pertenencia a una zona operativa. La referencia al usuario se mantiene ligera, porque aquí importa el vínculo comercial del cliente, no la administración completa de identidad.

#### 4.8.1.5. Commercial Conditions

```mermaid
erDiagram
    COMMERCIAL_CLIENT {
        int id PK
        string business_name
    }
    COMMERCIAL_CONDITION {
        int id PK
        int client_id FK
        float credit_limit
        float current_balance
        string payment_terms
        int grace_period_days
    }
    PRICE_LIST {
        int id PK
        string name
        string currency
        boolean is_active
    }
    PRICE_LIST_ASSIGNMENT {
        int id PK
        int client_id FK
        int price_list_id FK
    }

    COMMERCIAL_CLIENT ||--o| COMMERCIAL_CONDITION : has
    COMMERCIAL_CLIENT ||--o{ PRICE_LIST_ASSIGNMENT : receives
    PRICE_LIST ||--o{ PRICE_LIST_ASSIGNMENT : maps
```

Este contexto concentra reglas comerciales que luego afectan validaciones del pedido: crédito, saldo, términos de pago y asignación de listas de precio. Separarlo del bloque de órdenes evita que esas reglas queden embebidas dentro de cada pedido.

#### 4.8.1.6. Orders

```mermaid
erDiagram
    COMMERCIAL_CLIENT {
        int id PK
        string business_name
    }
    PRODUCT {
        int id PK
        string sku
        string name
    }
    BATCH {
        int id PK
        string batch_number
    }
    ORDER {
        int id PK
        int client_id FK
        string order_date
        string status
        float subtotal
        float tax_total
        float total_amount
    }
    ORDER_ITEM {
        int id PK
        int order_id FK
        int product_id FK
        int batch_id FK
        int quantity
        float unit_price
        float discount
    }
    ORDER_HISTORY {
        int id PK
        int order_id FK
        string status_code
        string changed_at
    }

    COMMERCIAL_CLIENT ||--o{ ORDER : places
    ORDER ||--o{ ORDER_ITEM : contains
    ORDER ||--o{ ORDER_HISTORY : tracks
    PRODUCT ||--o{ ORDER_ITEM : identifies
    BATCH ||--o{ ORDER_ITEM : specifies
```

Orders modela la orden comercial, sus ítems y la evolución de estados. Las referencias a cliente, producto y lote se mantienen visibles porque son necesarias para validar condiciones, calcular totales y sostener la trazabilidad del flujo transaccional.

#### 4.8.1.7. Traceability

```mermaid
erDiagram
    ORDER {
        int id PK
        string status
    }
    VEHICLE {
        int id PK
        string plate
        string model
        float temp_cap
    }
    DRIVER {
        int id PK
        string name
    }
    DISPATCH {
        int id PK
        int order_id FK
        int vehicle_id FK
        int driver_id FK
        string status
        string departure
    }
    INCIDENT {
        int id PK
        int dispatch_id FK
        string type
        string severity
        string reported_at
    }
    POD {
        int id PK
        int dispatch_id FK
        string received_by
        string timestamp
    }

    ORDER ||--o{ DISPATCH : triggers
    VEHICLE ||--o{ DISPATCH : serves
    DRIVER ||--o{ DISPATCH : handles
    DISPATCH ||--o{ INCIDENT : records
    DISPATCH ||--o| POD : closes
```

Traceability cubre la ejecución posterior al pedido: despacho, vehículo, conductor, incidentes y prueba de entrega. Este bloque existe para documentar el cierre operativo del pedido sin mezclarlo con la captura comercial o con el inventario.

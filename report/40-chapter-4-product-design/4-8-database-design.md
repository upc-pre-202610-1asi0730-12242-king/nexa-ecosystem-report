## 4.8. Database Design

El diseño de base de datos de Nexa deriva de los diagramas de clases actualizados y de los bounded contexts consolidados en el diseño táctico. Organizamos las estructuras relacionales alrededor de **Identity & Access**, **Catalog**, **Orders & Commercial Management**, **Inventory** y **Dispatch & Traceability**, manteniendo coherencia con EventStorming, DDD y C4.

El modelo conserva las relaciones necesarias para usuarios, productos, clientes B2B, condiciones comerciales, pedidos, lotes de inventario, movimientos de stock, despacho y trazabilidad. Los reportes se tratan como read models derivados de tablas operativas; no constituyen un bounded context independiente.

En TB1, la webapp utiliza Fake API como simulación para validar flujos y estructura funcional. Los siguientes diagramas representan una arquitectura relacional objetivo para una futura capa backend/base de datos; no declaran persistencia productiva, autenticación productiva ni REST API backend implementada en esta entrega.

### 4.8.1. Database Diagrams

El diseño de base de datos se presenta como un modelo relacional objetivo derivado de los diagramas de clases. Para cada estructura se especifican tablas, columnas, claves primarias, claves foráneas y restricciones relevantes. Las relaciones se representan con cardinalidades para mantener coherencia con las asociaciones del modelo orientado a objetos.

*Figura. Diagrama de base de datos del bounded context Identity & Access.*

```mermaid
erDiagram
    USERS {
        string id PK
        string full_name
        string email UK
        string department
        string access_scope
        string role_key
        string role_name
        string client_id FK
    }
    USER_SESSIONS {
        string id PK
        string user_id FK
        datetime started_at
        datetime expires_at
        boolean active
    }
    USERS ||--o{ USER_SESSIONS : starts
```

Nota. Elaboración propia. El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1.

*Figura. Diagrama de base de datos del bounded context Catalog.*

```mermaid
erDiagram
    CATEGORIES {
        string id PK
        string name
        string description
    }
    PRODUCTS {
        string id PK
        string sku UK
        string name
        string description
        string category_id FK
        decimal min_celsius
        decimal max_celsius
        string temperature_label
        string unit
        string status
    }
    CATEGORIES ||--o{ PRODUCTS : groups
```

Nota. Elaboración propia. El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1.

*Figura. Diagrama de base de datos del bounded context Orders & Commercial Management.*

```mermaid
erDiagram
    B2B_CLIENTS {
        string id PK
        string ruc UK
        string business_name
        string contact_name
        string phone
        string email
        string status
        string condition
        decimal credit_line
        decimal credit_used
    }
    COMMERCIAL_CONDITIONS {
        string id PK
        string client_id FK
        string payment_condition
        decimal credit_limit
        decimal credit_used
        decimal available_credit
        string status
    }
    CREDIT_WARNINGS {
        string id PK
        string client_id FK
        string message
        string severity
        decimal amount_requested
        datetime created_at
    }
    ORDERS {
        string id PK
        string client_id FK
        string status
        string source
        string created_by FK
        string created_by_role
        datetime created_at
        date delivery_date
        decimal total_amount
        string notes
    }
    ORDER_ITEMS {
        string id PK
        string order_id FK
        string product_id FK
        string product_name
        int quantity
        decimal unit_price
        decimal subtotal
    }
    ORDER_OBSERVATIONS {
        string id PK
        string order_id FK
        string message
        string author
        datetime created_at
    }
    B2B_CLIENTS ||--o{ COMMERCIAL_CONDITIONS : has
    B2B_CLIENTS ||--o{ CREDIT_WARNINGS : receives
    B2B_CLIENTS ||--o{ ORDERS : places
    ORDERS ||--o{ ORDER_ITEMS : contains
    ORDERS ||--o{ ORDER_OBSERVATIONS : records
```

Nota. Elaboración propia. El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1.

*Figura. Diagrama de base de datos del bounded context Inventory.*

```mermaid
erDiagram
    WAREHOUSES {
        string id PK
        string name
        string location
        string temperature_zone
    }
    INVENTORY_LOTS {
        string id PK
        string product_id FK
        string warehouse_id FK
        string batch_code UK
        int available_quantity
        int reserved_quantity
        date expiration_date
        string temperature_status
    }
    STOCK_MOVEMENTS {
        string id PK
        string lot_id FK
        string movement_type
        int quantity
        datetime created_at
        string reason
    }
    WAREHOUSES ||--o{ INVENTORY_LOTS : stores
    INVENTORY_LOTS ||--o{ STOCK_MOVEMENTS : registers
```

Nota. Elaboración propia. El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1.

*Figura. Diagrama de base de datos del bounded context Dispatch & Traceability.*

```mermaid
erDiagram
    DISPATCHES {
        string id PK
        string order_id FK
        string status
        string driver_name
        string vehicle_plate
        datetime scheduled_at
        datetime delivered_at
    }
    DISPATCH_INCIDENTS {
        string id PK
        string dispatch_id FK
        string description
        string severity
        datetime created_at
    }
    TRACEABILITY_EVENTS {
        string id PK
        string dispatch_id FK
        string event_type
        string description
        datetime created_at
    }
    POD_EVIDENCE {
        string id PK
        string dispatch_id FK
        boolean photo_checked
        boolean signature_checked
        string notes
    }
    DISPATCHES ||--o{ DISPATCH_INCIDENTS : reports
    DISPATCHES ||--o{ TRACEABILITY_EVENTS : records
    DISPATCHES ||--o| POD_EVIDENCE : closes_with
```

Nota. Elaboración propia. El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1.

*Figura. Diagrama de base de datos de read models.*

```mermaid
erDiagram
    SALES_REPORT_READ_MODEL {
        string id PK
        string order_id FK
        string client_id FK
        string status
        decimal total_amount
        date delivery_date
        datetime created_at
    }
    INVENTORY_REPORT_READ_MODEL {
        string id PK
        string product_id FK
        string warehouse_id FK
        string lot_id FK
        int available_quantity
        int reserved_quantity
        date expiration_date
        string temperature_status
    }
    DISPATCH_REPORT_READ_MODEL {
        string id PK
        string dispatch_id FK
        string order_id FK
        string status
        datetime scheduled_at
        datetime delivered_at
        int incident_count
    }
```

Nota. Elaboración propia. Los read models se derivan de Orders & Commercial Management, Inventory y Dispatch & Traceability; no constituyen un bounded context independiente.

*Figura. Diagrama consolidado de base de datos objetivo de Nexa.*

```mermaid
erDiagram
    USERS {
        string id PK
        string full_name
        string email UK
        string department
        string access_scope
        string role_key
        string role_name
        string client_id FK
    }
    USER_SESSIONS {
        string id PK
        string user_id FK
        datetime started_at
        datetime expires_at
        boolean active
    }
    CATEGORIES {
        string id PK
        string name
        string description
    }
    PRODUCTS {
        string id PK
        string sku UK
        string name
        string description
        string category_id FK
        decimal min_celsius
        decimal max_celsius
        string temperature_label
        string unit
        string status
    }
    B2B_CLIENTS {
        string id PK
        string ruc UK
        string business_name
        string contact_name
        string phone
        string email
        string status
        string condition
        decimal credit_line
        decimal credit_used
    }
    COMMERCIAL_CONDITIONS {
        string id PK
        string client_id FK
        string payment_condition
        decimal credit_limit
        decimal credit_used
        decimal available_credit
        string status
    }
    CREDIT_WARNINGS {
        string id PK
        string client_id FK
        string message
        string severity
        decimal amount_requested
        datetime created_at
    }
    ORDERS {
        string id PK
        string client_id FK
        string status
        string source
        string created_by FK
        string created_by_role
        datetime created_at
        date delivery_date
        decimal total_amount
        string notes
    }
    ORDER_ITEMS {
        string id PK
        string order_id FK
        string product_id FK
        string product_name
        int quantity
        decimal unit_price
        decimal subtotal
    }
    ORDER_OBSERVATIONS {
        string id PK
        string order_id FK
        string message
        string author
        datetime created_at
    }
    WAREHOUSES {
        string id PK
        string name
        string location
        string temperature_zone
    }
    INVENTORY_LOTS {
        string id PK
        string product_id FK
        string warehouse_id FK
        string batch_code UK
        int available_quantity
        int reserved_quantity
        date expiration_date
        string temperature_status
    }
    STOCK_MOVEMENTS {
        string id PK
        string lot_id FK
        string movement_type
        int quantity
        datetime created_at
        string reason
    }
    DISPATCHES {
        string id PK
        string order_id FK
        string status
        string driver_name
        string vehicle_plate
        datetime scheduled_at
        datetime delivered_at
    }
    DISPATCH_INCIDENTS {
        string id PK
        string dispatch_id FK
        string description
        string severity
        datetime created_at
    }
    TRACEABILITY_EVENTS {
        string id PK
        string dispatch_id FK
        string event_type
        string description
        datetime created_at
    }
    POD_EVIDENCE {
        string id PK
        string dispatch_id FK
        boolean photo_checked
        boolean signature_checked
        string notes
    }
    SALES_REPORT_READ_MODEL {
        string id PK
        string order_id FK
        string client_id FK
        string status
        decimal total_amount
        date delivery_date
        datetime created_at
    }
    INVENTORY_REPORT_READ_MODEL {
        string id PK
        string product_id FK
        string warehouse_id FK
        string lot_id FK
        int available_quantity
        int reserved_quantity
        date expiration_date
        string temperature_status
    }
    DISPATCH_REPORT_READ_MODEL {
        string id PK
        string dispatch_id FK
        string order_id FK
        string status
        datetime scheduled_at
        datetime delivered_at
        int incident_count
    }
    USERS ||--o{ USER_SESSIONS : starts
    USERS ||--o{ ORDERS : creates
    CATEGORIES ||--o{ PRODUCTS : groups
    PRODUCTS ||--o{ ORDER_ITEMS : requested_as
    PRODUCTS ||--o{ INVENTORY_LOTS : stocked_as
    B2B_CLIENTS ||--o{ ORDERS : places
    B2B_CLIENTS ||--o{ COMMERCIAL_CONDITIONS : has
    B2B_CLIENTS ||--o{ CREDIT_WARNINGS : receives
    ORDERS ||--o{ ORDER_ITEMS : contains
    ORDERS ||--o{ ORDER_OBSERVATIONS : records
    ORDERS ||--o| DISPATCHES : dispatches
    WAREHOUSES ||--o{ INVENTORY_LOTS : stores
    INVENTORY_LOTS ||--o{ STOCK_MOVEMENTS : registers
    DISPATCHES ||--o{ DISPATCH_INCIDENTS : reports
    DISPATCHES ||--o{ TRACEABILITY_EVENTS : records
    DISPATCHES ||--o| POD_EVIDENCE : closes_with
    ORDERS ||--o{ SALES_REPORT_READ_MODEL : feeds
    B2B_CLIENTS ||--o{ SALES_REPORT_READ_MODEL : summarizes
    PRODUCTS ||--o{ INVENTORY_REPORT_READ_MODEL : feeds
    WAREHOUSES ||--o{ INVENTORY_REPORT_READ_MODEL : summarizes
    INVENTORY_LOTS ||--o{ INVENTORY_REPORT_READ_MODEL : feeds
    DISPATCHES ||--o{ DISPATCH_REPORT_READ_MODEL : feeds
    ORDERS ||--o{ DISPATCH_REPORT_READ_MODEL : summarizes
```

Nota. Elaboración propia. La vista consolidada integra las estructuras por bounded context y sus relaciones principales como diseño objetivo.

*Tabla. Agrupación de estructuras de base de datos por bounded context*

| Bounded context | Estructuras principales | Propósito de diseño |
|---|---|---|
| Identity & Access | `USERS`, `USER_SESSIONS` | Administrar usuarios, alcance de acceso, rol y sesiones como diseño objetivo de seguridad. |
| Catalog | `CATEGORIES`, `PRODUCTS` | Mantener información maestra de productos, categorías y condiciones de conservación. |
| Orders & Commercial Management | `B2B_CLIENTS`, `COMMERCIAL_CONDITIONS`, `CREDIT_WARNINGS`, `ORDERS`, `ORDER_ITEMS`, `ORDER_OBSERVATIONS` | Registrar clientes B2B, condiciones comerciales, alertas de crédito, pedidos, detalle y observaciones. |
| Inventory | `WAREHOUSES`, `INVENTORY_LOTS`, `STOCK_MOVEMENTS` | Representar almacenes, lotes, disponibilidad, reservas y movimientos de stock. |
| Dispatch & Traceability | `DISPATCHES`, `DISPATCH_INCIDENTS`, `TRACEABILITY_EVENTS`, `POD_EVIDENCE` | Registrar despacho, incidencias, eventos trazables y evidencia de cierre. |
| Read models | `SALES_REPORT_READ_MODEL`, `INVENTORY_REPORT_READ_MODEL`, `DISPATCH_REPORT_READ_MODEL` | Derivados de Orders & Commercial Management, Inventory y Dispatch & Traceability; no constituyen un bounded context independiente. |

> *Nota:* Elaboración propia. La agrupación mantiene la relación entre modelo relacional objetivo, bounded contexts y diagramas de clases sin declarar persistencia productiva para TB1.

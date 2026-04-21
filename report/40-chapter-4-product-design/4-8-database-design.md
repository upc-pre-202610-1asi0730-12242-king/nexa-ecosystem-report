## 4.8. Database Design

<p align="justify">
El diseño de la base de datos de Nexa representa una arquitectura de datos de grado industrial, estructurada para soportar la alta complejidad de las operaciones B2B en la cadena de frío. La estrategia se centra en un modelo relacional robusto que garantiza la <strong>integridad atómica</strong> de las transacciones (ACID), permitiendo una trazabilidad total desde la identidad del usuario hasta la entrega física del producto, pasando por la gestión financiera, el control de inventario granular y el modelado de condiciones comerciales personalizadas.
</p>

### 4.8.1. Database Diagrams

#### Entity-Relationship Diagram (ERD) — Arquitectura Empresarial

<p align="justify">
El siguiente diagrama, desarrollado mediante la notación de ingeniería de software moderna, descompone el ecosistema de datos de Nexa en seis módulos funcionales interconectados. Este modelo contempla más de 35 entidades diseñadas para eliminar la redundancia y optimizar el rendimiento en consultas transaccionales de gran volumen.
</p>

```mermaid
erDiagram
    %% MODULE 1: IDENTITY & RBAC
    USER ||--o{ AUDIT_LOG : "generates"
    USER ||--o{ LOGIN_HISTORY : "registers"
    USER }|--|| ROLE : "assigned"
    ROLE ||--o{ ROLE_PERMISSION : "contains"
    ROLE_PERMISSION }|--|| PERMISSION : "defines"
    
    USER {
        int id PK
        int role_id FK
        string email
        string password_hash
        string status
        datetime created_at
    }
    ROLE {
        int id PK
        string name
        string description
    }
    PERMISSION {
        int id PK
        string code
        string description
    }
    AUDIT_LOG {
        int id PK
        int user_id FK
        string action
        string table_name
        string record_id
        json old_values
        json new_values
        datetime timestamp
    }

    %% MODULE 2: COMMERCIAL MANAGEMENT
    USER ||--o| COMMERCIAL_CLIENT : "accesses"
    COMMERCIAL_CLIENT }|--|| ZONE : "belongs_to"
    COMMERCIAL_CLIENT ||--|| COMMERCIAL_CONDITION : "has"
    COMMERCIAL_CLIENT ||--o{ PRICE_LIST_ASSIGNMENT : "mapped_to"
    PRICE_LIST_ASSIGNMENT }|--|| PRICE_LIST : "refs"
    
    COMMERCIAL_CLIENT {
        int id PK
        int user_id FK
        int zone_id FK
        string ruc
        string business_name
        string legal_address
        string contact_phone
    }
    ZONE {
        int id PK
        string name
        string description
    }
    COMMERCIAL_CONDITION {
        int id PK
        int client_id FK
        decimal credit_limit
        decimal current_balance
        string payment_terms
        int grace_period_days
    }
    PRICE_LIST {
        int id PK
        string name
        string currency
        boolean is_active
    }

    %% MODULE 3: CATALOG & SPECIFICATIONS
    PRODUCT }|--|| CATEGORY : "classified_in"
    PRODUCT }|--|| BRAND : "branded_by"
    PRODUCT ||--o{ PRODUCT_SPECIFICATION : "detailed_by"
    PRODUCT }|--|| UOM : "measured_in"
    PRICE_LIST ||--o{ PRICE_LIST_ITEM : "contains"
    PRICE_LIST_ITEM }|--|| PRODUCT : "prices"

    PRODUCT {
        int id PK
        int category_id FK
        int brand_id FK
        int uom_id FK
        string sku UNIQUE
        string name
        decimal standard_price
    }
    PRODUCT_SPECIFICATION {
        int id PK
        int product_id FK
        string storage_temp_range
        decimal storage_humidity
        string allergen_info
        string packaging_type
    }
    UOM {
        int id PK
        string code
        string name
    }

    %% MODULE 4: INVENTORY & WAREHOUSE
    WAREHOUSE ||--o{ WAREHOUSE_LOCATION : "partitioned_into"
    WAREHOUSE_LOCATION ||--o{ INVENTORY_STOCK : "holds"
    INVENTORY_STOCK }|--|| PRODUCT : "item"
    INVENTORY_STOCK ||--o{ INVENTORY_TRANSACTION : "logged_in"
    BATCH }|--|| PRODUCT : "variant_of"
    INVENTORY_STOCK }|--|| BATCH : "specific_lot"

    BATCH {
        int id PK
        int product_id FK
        string batch_number
        date production_date
        date expiry_date
        string status
    }
    INVENTORY_STOCK {
        int id PK
        int warehouse_id FK
        int product_id FK
        int batch_id FK
        int quantity_on_hand
        int quantity_reserved
    }
    INVENTORY_TRANSACTION {
        int id PK
        int stock_id FK
        string type
        int quantity
        string reference_type
        int reference_id
        datetime transaction_date
    }

    %% MODULE 5: SALES & ORDER MANAGEMENT
    ORDER }|--|| COMMERCIAL_CLIENT : "placed_by"
    ORDER ||--o{ ORDER_ITEM : "comprised_of"
    ORDER ||--o{ ORDER_STATUS_HISTORY : "tracked_by"
    ORDER ||--o| BILLING_DOCUMENT : "invoiced_as"
    ORDER_ITEM }|--|| PRODUCT : "refers"

    ORDER {
        int id PK
        int client_id FK
        datetime order_date
        string status
        decimal subtotal
        decimal tax_total
        decimal total_amount
    }
    ORDER_ITEM {
        int id PK
        int order_id FK
        int product_id FK
        int batch_id FK
        int quantity
        decimal unit_price
        decimal discount
        decimal row_total
    }
    ORDER_STATUS_HISTORY {
        int id PK
        int order_id FK
        string status_code
        string comments
        datetime changed_at
    }

    %% MODULE 6: LOGISTICS & TRACEABILITY
    DISPATCH }|--|| ORDER : "delivers"
    DISPATCH }|--|| VEHICLE : "transported_by"
    DISPATCH }|--|| DRIVER : "handled_by"
    DISPATCH ||--o{ ROUTE_CHECKPOINT : "passes_through"
    DISPATCH ||--o{ INCIDENT : "records"
    DISPATCH ||--o| PROOF_OF_DELIVERY : "finalized_with"

    VEHICLE {
        int id PK
        string plate
        string model
        decimal temp_capacity
        datetime last_maintenance
    }
    DISPATCH {
        int id PK
        int order_id FK
        int vehicle_id FK
        int driver_id FK
        string status
        datetime departure_time
        datetime actual_arrival
    }
    INCIDENT {
        int id PK
        int dispatch_id FK
        string type
        string severity
        string description
        datetime reported_at
    }
    PROOF_OF_DELIVERY {
        int id PK
        int dispatch_id FK
        string received_by
        string signature_url
        string photo_url
        datetime timestamp
    }
```

### 4.8.2. Sustentación Técnica y Reglas de Negocio

<p align="justify">
El modelo propuesto cumple estrictamente con la <strong>Tercera Forma Normal (3NF)</strong>, eliminando dependencias transitivas y anomalías de actualización. Esta normalización es fundamental para un sistema SaaS como Nexa, donde la precisión de los precios por cliente, la caducidad de lotes y el saldo de crédito deben ser exactos en todo momento.
</p>

#### Módulos Críticos:
<ol>
    <li><strong>Gestión de Inventario Atómica:</strong> La entidad <code>INVENTORY_TRANSACTION</code> actúa como un libro contable (<em>Ledger</em>). Ningún stock se modifica directamente sin una transacción que respalde el movimiento, garantizando una trazabilidad forense ante cualquier discrepancia.</li>
    <li><strong>Inteligencia de Precios B2B:</strong> Mediante <code>PRICE_LIST</code> y <code>PRICE_LIST_ASSIGNMENT</code>, el sistema soporta precios dinámicos por canal, zona o cliente específico, resolviendo la necesidad de negociaciones personalizadas propia del sector.</li>
    <li><strong>Trazabilidad Logística:</strong> El módulo de logística integra <code>ROUTE_CHECKPOINTS</code> e <code>INCIDENTS</code>, permitiendo reconstruir la historia térmica y geográfica de cada pedido, cumpliendo con las normativas sanitarias vigentes.</li>
</ol>

#### Reglas de Integridad y Seguridad:
<ul>
    <li><strong>Validación Térmica (Check Constraints):</strong> Se implementan reglas de integridad para asegurar que las especificaciones de temperatura en <code>PRODUCT_SPECIFICATION</code> coincidan con las capacidades del <code>VEHICLE</code> asignado.</li>
    <li><strong>Seguridad de Identidad:</strong> Los datos sensibles se segregan mediante una arquitectura RBAC granular, donde cada acción en las tablas maestras queda registrada en <code>AUDIT_LOG</code> para fines de auditoría y cumplimiento normativo.</li>
    <li><strong>Integridad Referencial:</strong> El uso de Llaves Foráneas (FK) con políticas de eliminación restringida asegura que no se pierda la historia comercial (pedidos) al intentar depurar datos maestros (productos).</li>
</ul>

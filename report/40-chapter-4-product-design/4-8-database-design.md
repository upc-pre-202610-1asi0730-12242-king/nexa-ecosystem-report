## 4.8. Database Design

<p align="justify">
El diseño de la base de datos de Nexa se fundamenta en un modelo relacional normalizado, diseñado para garantizar la integridad referencial y la consistencia de los datos en un entorno transaccional B2B. Dada la criticidad de la gestión de pedidos, el control de inventario por lotes y el seguimiento de la cadena de frío, se ha optado por una arquitectura de datos que soporte relaciones complejas entre clientes, catálogos especializados y el flujo operativo de despachos.
</p>

### 4.8.1. Database Diagrams

#### Entity-Relationship Diagram (ERD)

<p align="justify">
El siguiente diagrama representa las entidades núcleo del sistema y sus interconexiones. El modelo captura desde el aprovisionamiento de productos hasta la entrega final, integrando la lógica de negocio técnica de Nexa.
</p>

```mermaid
erDiagram
    USER ||--o| CLIENT : "creates"
    USER {
        int idPK
        string email
        string password
        string role
        datetime created_at
    }

    CLIENT ||--o{ ORDER : "places"
    CLIENT {
        int idPK
        int user_idFK
        string business_name
        string ruc
        string address
        decimal credit_limit
        decimal current_balance
    }

    CATEGORY ||--o{ PRODUCT : "contains"
    CATEGORY {
        int idPK
        string name
    }

    PRODUCT ||--o{ BATCH : "stored_in"
    PRODUCT ||--o{ ORDER_ITEM : "included_in"
    PRODUCT {
        int idPK
        int category_idFK
        string sku
        string name
        string thermal_range
        decimal unit_price
    }

    BATCH {
        int idPK
        int product_idFK
        string batch_number
        date expiration_date
        int quantity_on_hand
    }

    ORDER ||--o{ ORDER_ITEM : "contains"
    ORDER ||--o| DISPATCH : "triggers"
    ORDER {
        int idPK
        int client_idFK
        datetime order_date
        string status
        decimal total_amount
    }

    ORDER_ITEM {
        int idPK
        int order_idFK
        int product_idFK
        int quantity
        decimal unit_price
        decimal subtotal
    }

    DISPATCH ||--o{ INCIDENT : "reports"
    DISPATCH {
        int idPK
        int order_idFK
        int driver_id
        string status
        datetime departure_time
        datetime estimated_arrival
    }

    INCIDENT {
        int idPK
        int dispatch_idFK
        string description
        string severity
        datetime reported_at
    }
```

<p align="justify">
<strong>Justificación Técnica:</strong> Se ha seleccionado un motor SQL (como MySQL o PostgreSQL) para la persistencia de datos debido a su robustez en el manejo de transacciones ACID. Esto es vital para asegurar que la reserva de stock (<em>Committed Stock</em>) y el descuento de saldos (<em>Available Credit</em>) se ejecuten de forma atómica, evitando inconsistencias durante picos de operación comercial. Las relaciones se han estructurado para permitir una trazabilidad completa desde la orden de compra hasta la evidencia de entrega (POD), facilitando futuras integraciones con herramientas de analítica y reporte.
</p>

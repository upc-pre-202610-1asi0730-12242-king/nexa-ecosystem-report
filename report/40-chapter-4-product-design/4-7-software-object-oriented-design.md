# 4.7. Software Object-Oriented Design

Esta sección presenta el diseño orientado a objetos de Nexa. El diseño está alineado con la arquitectura de software dirigida por el dominio definida en la sección 4.6 y utiliza diagramas de clases UML para representar las principales entidades, value objects, enumeraciones, servicios, repositorios y relaciones requeridas por el sistema.

El modelo orientado a objetos se organiza alrededor de los bounded contexts finales de Nexa: **Catalog Management**, **Sales**, **Warehouse**, **Logistics** e **Invoicing**. Identity and Access Management se documenta como soporte transversal porque permite el acceso seguro y la operación basada en tenants, pero no se considera uno de los bounded contexts principales del negocio.

## 4.7. Software Object-Oriented Design

Para el diseño orientado a objetos de Nexa, organizamos los diagramas de clases a partir de los cinco bounded contexts consolidados durante el modelado táctico: **Identity & Access**, **Catalog**, **Orders & Commercial Management**, **Inventory** y **Dispatch & Traceability**. Esta separación mantiene la trazabilidad con el EventStorming, el modelo DDD y la vista C4, evitando mezclar responsabilidades comerciales, logísticas y de acceso dentro de un único modelo general.

Definimos los diagramas con PlantUML para mantener una representación consistente de entidades, value objects, servicios de aplicación, repositorios y recursos expuestos por cada contexto. El diagrama general presenta la relación táctica entre contextos, mientras que los diagramas individuales permiten revisar con mayor detalle las clases y dependencias internas de cada parte del dominio.

En TB1, estos diagramas representan el diseño objetivo del dominio. La webapp utiliza Fake API como simulación para validar flujos y estructura funcional, por lo que no se afirma la existencia de un backend productivo, una base de datos productiva ni autenticación productiva. Los reportes no se modelan como bounded context independiente, sino como read models derivados de **Orders & Commercial Management**, **Inventory** y **Dispatch & Traceability**.

|---|---|
| Separación por bounded context | Cada diagrama agrupa clases según una responsabilidad específica del negocio. |
| Entidades | Clases con identidad y ciclo de vida, como Product, PurchaseRequest, SalesOrder, InventoryLot y DispatchOrder. |
| Value Objects | Clases sin identidad propia que describen valores del dominio, como TemperatureRange, DeliveryWindow, ChargeSummary o FEFOCriteria. |
| Enumeraciones | Estados del dominio como ProductStatus, RequestStatus, OrderStatus, DispatchStatus y PaymentStatus. |
| Multiplicidad | Las relaciones incluyen cardinalidades para evitar ambigüedad entre clases. |
| Soporte transversal | Las clases de Identity and Access se separan de los principales contextos de negocio. |
| Trazabilidad | Las clases están alineadas con los bounded contexts y las tablas de base de datos documentadas en este capítulo. |

### Consolidated Tactical Class Map

![Consolidated DDD Tactical Map](../assets/images/chapter-4/architecture/class-diagrams/consolidated-ddd-tactical-map.png)

**Nota:** El mapa táctico resume la relación entre bounded contexts, aggregates y componentes de soporte transversal.

El mapa táctico de clases presenta los cinco bounded contexts principales y sus objetos de dominio más relevantes:

| Bounded Context | Clases principales |
|---|---|
| Catalog Management | Product, Category, Promotion, ProductInternalCode, TemperatureRange, ProductStatus |
| Sales | B2BClient, PurchaseRequest, SalesOrder, OrderItem, CommercialCondition, CreditWarning, OrderObservation |
| Warehouse | Warehouse, InventoryLot, Reservation, StockMovement, StockAvailability, FEFOCriteria |
| Logistics | DispatchOrder, TraceabilityEvent, DeliveryIncident, TemperatureCheck, DeliveryWindow, DeliveryEvidence |
| Invoicing | CommercialDocument, PaymentRecord, PaymentStatus, InvoiceSummary, ChargeSummary |
| Transversal Support | User, Role, Permission, Tenant, UserSession, AccessPolicy |

### Identity and Access Support Class Diagram

![Identity and Access Class Diagram](../assets/images/chapter-4/architecture/class-diagrams/class-diagram-identity-access.png)

**Nota:** Identity and Access se representa como soporte transversal para autenticación, autorización y control de acceso basado en tenants.

El modelo de soporte de Identity and Access contiene las clases requeridas para gestionar el acceso a la plataforma. Este soporte permite la operación de la Web Application mediante la validación de usuarios, sesiones, roles y permisos.

| Clase | Tipo | Responsabilidad |
|---|---|---|
| User | Entidad | Representa un usuario de la plataforma con credenciales y datos de perfil. |
| Role | Entidad | Define el rol funcional asignado a un usuario. |
| Permission | Entidad | Representa una capacidad de acceso permitida dentro de la plataforma. |
| Tenant | Entidad | Representa la organización o cuenta que utiliza Nexa. |
| UserSession | Entidad | Representa una sesión autenticada. |
| AccessPolicy | Domain Service / lógica de soporte | Valida si un usuario puede realizar una operación. |

Este modelo no debe interpretarse como un bounded context principal. Es una capacidad de soporte transversal requerida por todos los módulos de negocio.

### Catalog Management Class Diagram

![Catalog Management Class Diagram](../assets/images/chapter-4/architecture/class-diagrams/class-diagram-catalog.png)

**Nota:** Catalog Management gestiona productos, categorías, promociones, visibilidad del producto e información de conservación.

Catalog Management es responsable de mantener el catálogo comercial de productos. Los productos se identifican usando un código interno de producto, no SKU, porque el lenguaje ubicuo de Nexa utiliza el concepto de código interno de producto.

| Clase | Tipo | Responsabilidad |
|---|---|---|
| Product | Entidad / Aggregate Root | Representa un producto gourmet refrigerado ofrecido en el catálogo. |
| Category | Entidad | Agrupa productos según una categoría de negocio. |
| Promotion | Entidad | Representa promociones comerciales asociadas a productos o categorías. |
| ProductInternalCode | Value Object | Encapsula el código interno usado para identificar productos. |
| TemperatureRange | Value Object | Define el rango de temperatura recomendado para la conservación. |
| ProductStatus | Enumeración | Define si el producto está activo, inactivo o no disponible. |
| CatalogApplicationService | Application Service | Coordina los casos de uso del catálogo. |
| ProductRepository | Repository Interface | Proporciona operaciones de persistencia para productos. |

Relaciones recomendadas:

| Relación | Multiplicidad | Descripción |
|---|---|---|
| Category - Product | 1 a muchos | Una categoría puede agrupar muchos productos. |
| Product - ProductInternalCode | 1 a 1 | Cada producto tiene un código interno de producto. |
| Product - TemperatureRange | 1 a 1 | Cada producto refrigerado tiene un rango de temperatura recomendado. |
| Product - Promotion | muchos a muchos o 1 a muchos | Un producto puede estar asociado a promociones según las reglas del negocio. |

### Sales Class Diagram

![Sales Class Diagram](../assets/images/chapter-4/architecture/class-diagrams/class-diagram-orders-commercial-management.png)

**Nota:** Sales gestiona clientes B2B, solicitudes de compra, validación comercial y órdenes de venta confirmadas.

Sales es el bounded context responsable del flujo comercial de pedidos. Este contexto distingue una solicitud de compra de una orden de venta confirmada. Esta distinción es importante porque no toda solicitud se convierte en orden. Una solicitud primero requiere validación comercial, revisión de crédito y coordinación de disponibilidad de stock.

| Clase | Tipo | Responsabilidad |
|---|---|---|
| B2BClient | Entidad / Aggregate Root | Representa un cliente empresarial que compra productos mediante Nexa. |
| PurchaseRequest | Entidad / Aggregate Root | Representa la solicitud inicial enviada por un comprador o registrada manualmente por un usuario comercial. |
| SalesOrder | Entidad / Aggregate Root | Representa una orden comercialmente validada y confirmada. |
| OrderItem | Entidad | Representa un producto y cantidad incluidos en una solicitud u orden. |
| CommercialCondition | Entidad / Value Object | Representa términos de pago, condiciones de crédito y reglas comerciales de un cliente. |
| CreditWarning | Entidad / Value Object | Representa una alerta relacionada con crédito o pagos pendientes. |
| OrderObservation | Entidad | Representa notas comerciales u observaciones operativas relacionadas con una solicitud u orden. |
| RequestStatus | Enumeración | Representa el estado del ciclo de vida de una solicitud de compra. |
| OrderStatus | Enumeración | Representa el estado del ciclo de vida de una orden de venta. |
| SalesApplicationService | Application Service | Coordina el envío de solicitudes, validación y confirmación de órdenes. |
| SalesOrderRepository | Repository Interface | Proporciona operaciones de persistencia para órdenes de venta. |

Relaciones recomendadas:

| Clases y responsabilidades | Cada bounded context agrupa las clases que concentran la lógica principal de su parte del dominio. |
| Atributos y métodos | Las clases incluyen miembros relevantes para expresar estado y comportamiento esperado. |
| Visibilidad / scope | PlantUML representa scope cuando corresponde mediante `+` public, `-` private y `#` protected. |
| Relaciones y dirección | Las asociaciones muestran dependencias entre clases y dirección cuando el modelo la hace explícita. |
| Multiplicidad | Las relaciones indican cardinalidad cuando resulta necesaria para leer el vínculo entre entidades. |
| Enumeraciones de dominio | Los estados del dominio se modelan como enumeraciones cuando el diagrama lo requiere. |
| Separación por bounded context | Identity & Access, Catalog, Orders & Commercial Management, Inventory y Dispatch & Traceability se mantienen como límites tácticos. |

> *Nota.* Basada en los criterios UML solicitados para la sección de Class Diagrams. Elaboración propia.

*Figura. Mapa táctico general de clases por bounded context*

![Mapa táctico general de clases por bounded context](../assets/images/chapter-4/architecture/class-diagrams/consolidated-ddd-tactical-map.png)

> *Nota.* El mapa consolida la relación entre los cinco bounded contexts y ubica los read models de reportes como salidas derivadas del dominio operativo. Elaboración propia mediante PlantUML.

*Figura. Diagrama de clases del bounded context Identity & Access*

![Diagrama de clases del bounded context Identity & Access](../assets/images/chapter-4/architecture/class-diagrams/class-diagram-identity-access.png)

> *Nota.* Este contexto concentra usuarios, sesiones, roles, permisos y validaciones de acceso como diseño objetivo. Elaboración propia mediante PlantUML.

*Figura. Diagrama de clases del bounded context Catalog*

![Diagrama de clases del bounded context Catalog](../assets/images/chapter-4/architecture/class-diagrams/class-diagram-catalog.png)

> *Nota.* Catalog organiza productos, categorías y reglas de conservación sin asumir stock ni despacho. Elaboración propia mediante PlantUML.

*Figura. Diagrama de clases del bounded context Orders & Commercial Management*

![Diagrama de clases del bounded context Orders & Commercial Management](../assets/images/chapter-4/architecture/class-diagrams/class-diagram-orders-commercial-management.png)

> *Nota.*  Este contexto integra cliente B2B, condiciones comerciales, alertas de crédito, pedidos, ítems y observaciones. Elaboración propia mediante PlantUML.

*Figura. Diagrama de clases del bounded context Inventory*

![Diagrama de clases del bounded context Inventory](../assets/images/chapter-4/architecture/class-diagrams/class-diagram-inventory.png)

> *Nota.* Inventory modela almacenes, lotes, disponibilidad, reserva y movimientos de stock. Elaboración propia mediante PlantUML.

*Figura. Diagrama de clases del bounded context Dispatch & Traceability*

![Diagrama de clases del bounded context Dispatch & Traceability](../assets/images/chapter-4/architecture/class-diagrams/class-diagram-dispatch-traceability.png)
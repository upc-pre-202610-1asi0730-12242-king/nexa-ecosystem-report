# 4.6. Domain-Driven Software Architecture

Esta sección presenta la arquitectura de software dirigida por el dominio propuesta para Nexa. El objetivo es alinear el dominio de negocio, los bounded contexts, las decisiones de diseño táctico y las vistas arquitectónicas del C4 Model antes de pasar al diseño orientado a objetos y al diseño de base de datos.

Nexa soporta un proceso de distribución B2B de productos gourmet refrigerados. Por ello, el dominio no se modeló como un sistema genérico de pedidos. En su lugar, se dividió en límites de negocio que separan las responsabilidades de catálogo, gestión comercial de pedidos, operaciones de almacén, trazabilidad de despacho y visibilidad documental/pagos.

La arquitectura documentada en esta sección representa la línea base de diseño para el despliegue académico AV2. La evidencia de implementación (backend foundation), evidencia de despliegue, documentación de servicios y ejecución por sprint se documentan en el Capítulo V (usando una integración híbrida y servicios mocks en áreas pendientes). Por lo tanto, esta sección se enfoca en la coherencia entre Domain-Driven Design, C4 Model, diseño orientado a objetos y el diseño de la base de datos PostgreSQL.

Los bounded contexts finales definidos para Nexa son:

| Bounded Context | Responsabilidad principal |
|---|---|
| Catalog Management | Gestiona productos, categorías, códigos internos de producto, visibilidad comercial, condiciones de conservación y promociones. |
| Sales | Gestiona clientes B2B, solicitudes de compra, validación comercial, órdenes de venta, ítems de orden, alertas de crédito y observaciones comerciales. |
| Warehouse | Gestiona almacenes, lotes de inventario, disponibilidad de stock, reservas de stock, movimientos de stock y criterios de reserva basados en FEFO. |
| Logistics | Gestiona órdenes de despacho, eventos de trazabilidad, incidencias de entrega, controles de temperatura, ventanas de entrega y evidencia de entrega. |
| Invoicing | Gestiona documentos comerciales, resúmenes de cobro, pagos simulados, estado de pago y visibilidad documental para el comprador. |

Identity and Access Management se considera una capacidad de soporte transversal porque permite autenticación, autorización, gestión de usuarios, configuración de tenant y control de acceso basado en roles. Sin embargo, no se trata como uno de los bounded contexts principales del negocio de Nexa. Del mismo modo, reporting y analytics se representan como read models derivados de los bounded contexts operativos.

## 4.6.1. Design-Level EventStorming

El proceso de Design-Level EventStorming se utilizó para refinar el modelo de dominio inicialmente explorado en la sección de Big Picture EventStorming. El objetivo fue identificar domain events, commands, policies, read models, aggregates y bounded contexts con un mayor nivel de detalle.

El workshop se enfocó en el flujo B2B end-to-end del pedido: descubrimiento de productos, envío de solicitud de compra, validación comercial, reserva de stock, programación de despacho, trazabilidad de entrega, evidencia de entrega y revisión de documentos/pago.

### Step 4: Pivotal Points

![Design-Level EventStorming - Step 4](../assets/images/chapter-4/architecture/ddd/ddd-step-4.png)

Los pivotal points representan decisiones relevantes del negocio donde el flujo normal puede derivar en rutas alternativas. En Nexa, estos puntos incluyen validación comercial, revisión de disponibilidad de stock, programación de despacho, gestión de incidencias, confirmación de entrega y actualización del estado de pago.

Estos puntos de decisión son importantes porque revelan reglas de negocio que no pueden asignarse únicamente a la interfaz de usuario. Deben representarse como políticas de dominio, comportamiento de aggregates o application services según su alcance.

### Step 5: Commands

![Design-Level EventStorming - Step 5](../assets/images/chapter-4/architecture/ddd/ddd-step-5.png)

Los commands representan intenciones del usuario o del sistema que desencadenan cambios en el dominio. En Nexa, los commands relevantes incluyen registrar productos, actualizar la visibilidad del catálogo, enviar solicitudes de compra, validar condiciones comerciales, confirmar órdenes de venta, reservar stock, programar despachos, registrar eventos de trazabilidad, registrar evidencia de entrega y actualizar el estado de pago.

La siguiente tabla resume los principales commands por bounded context:

| Bounded Context | Commands principales |
|---|---|
| Catalog Management | RegisterProduct, UpdateProduct, DeactivateProduct, PublishPromotion, UpdateProductVisibility |
| Sales | SubmitPurchaseRequest, ValidateCommercialCondition, RejectPurchaseRequest, ConfirmSalesOrder, RegisterManualRequest |
| Warehouse | RegisterInventoryLot, ReserveStock, ReleaseReservation, AdjustStock, ApplyFefoReservation |
| Logistics | ScheduleDispatch, StartDispatch, RegisterTraceabilityEvent, RegisterDeliveryIncident, RegisterTemperatureCheck, RegisterDeliveryEvidence |
| Invoicing | GenerateCommercialDocument, RegisterSimulatedPayment, UpdatePaymentStatus, PublishDocumentForBuyer |

### Step 6: Policies

![Design-Level EventStorming - Step 6](../assets/images/chapter-4/architecture/ddd/ddd-step-6.png)

Las policies representan reglas de dominio que reaccionan ante commands o events. Estas reglas ayudan a mantener la consistencia del proceso de negocio. Para Nexa, las políticas más importantes están relacionadas con validación comercial, alertas de crédito, disponibilidad de stock, reserva FEFO, evidencia de entrega y visibilidad de pagos.

| Policy | Descripción | Contexto relacionado |
|---|---|---|
| Commercial validation policy | Una solicitud de compra no puede convertirse en una orden de venta confirmada hasta que se validen las condiciones comerciales del cliente B2B. | Sales |
| Credit warning policy | Una solicitud puede requerir revisión cuando el cliente tiene restricciones de crédito o alertas por pagos pendientes. | Sales / Invoicing |
| Stock reservation policy | El stock debe reservarse antes de iniciar el proceso de despacho. | Warehouse |
| FEFO policy | Los lotes de inventario deben priorizarse según la fecha de vencimiento más próxima cuando los productos son perecibles. | Warehouse |
| Dispatch closure policy | Un despacho no puede marcarse como entregado sin evidencia de entrega. | Logistics |
| Payment visibility policy | Un comprador puede revisar el estado de pago y los documentos comerciales asociados a su orden. | Invoicing |

### Step 7: Read Models

![Design-Level EventStorming - Step 7](../assets/images/chapter-4/architecture/ddd/ddd-step-7.png)

Los read models representan vistas de información requeridas por los usuarios para tomar decisiones o completar tareas. Son especialmente relevantes para dashboards, monitoreo operativo y pantallas de consulta orientadas al comprador.

| Read Model | Descripción | Contexto fuente |
|---|---|---|
| ProductCatalogView | Muestra productos activos, categorías, datos de conservación y visibilidad comercial. | Catalog Management |
| ProductDetailView | Muestra información detallada del producto usando el código interno de producto. | Catalog Management |
| SalesPipelineView | Muestra solicitudes de compra, estado de validación y órdenes confirmadas. | Sales |
| PurchaseRequestDetailView | Muestra los detalles de una solicitud de compra y su estado de validación comercial. | Sales |
| StockByInternalCodeView | Muestra stock disponible por código interno de producto y almacén. | Warehouse |
| LotAvailabilityView | Muestra disponibilidad por lote, fechas de vencimiento y estado de reserva. | Warehouse |
| DispatchBoardView | Muestra despachos por estado, fecha y responsable de entrega. | Logistics |
| TrackingTimelineView | Muestra eventos de trazabilidad de una orden de despacho. | Logistics |
| DeliveryEvidenceView | Muestra evidencia de entrega e información relacionada. | Logistics |
| DocumentHistoryView | Muestra documentos comerciales asociados a una orden de venta. | Invoicing |
| PaymentStatusView | Muestra el estado de pago simulado e información pendiente de pago. | Invoicing |

### Step 9: Consolidated Flow by Context

![Design-Level EventStorming - Step 9](../assets/images/chapter-4/architecture/ddd/ddd-step-9.png)

El flujo consolidado organiza los principales events, commands y read models según los límites finales del dominio. Esta vista permite validar que cada bounded context tenga una responsabilidad de negocio clara y evita mezclar responsabilidades entre catálogo, ventas, almacén, logística e invoicing.

El flujo principal inicia cuando un producto se encuentra disponible en el catálogo y un comprador B2B envía una solicitud de compra. Luego, el contexto Sales valida la solicitud y confirma la orden de venta. Después, Warehouse reserva stock y Logistics programa y monitorea el despacho. Finalmente, Invoicing publica los documentos comerciales y actualiza el estado de pago.

### Step 10: Bounded Contexts

![Design-Level EventStorming - Step 10](../assets/images/chapter-4/architecture/ddd/ddd-step-10.png)

El mapa final de bounded contexts de Nexa está compuesto por cinco contextos principales de negocio y capacidades de soporte transversal. Los contextos de negocio son Catalog Management, Sales, Warehouse, Logistics e Invoicing.

| Bounded Context | Aggregates | Domain Events | Commands | Queries / Read Models |
|---|---|---|---|---|
| Catalog Management | Product, Category, Promotion | ProductRegistered, ProductUpdated, ProductDeactivated, PromotionPublished | RegisterProduct, UpdateProduct, DeactivateProduct, PublishPromotion | ProductCatalogView, ProductDetailView, ActivePromotionsView |
| Sales | B2BClient, PurchaseRequest, SalesOrder, CommercialCondition | PurchaseRequestSubmitted, CommercialValidationConfirmed, PurchaseRequestRejected, SalesOrderConfirmed | SubmitPurchaseRequest, ValidateCommercialCondition, RejectPurchaseRequest, ConfirmSalesOrder, RegisterManualRequest | SalesPipelineView, PurchaseRequestDetailView, SalesOrderDetailView, B2BClientProfileView |
| Warehouse | Warehouse, InventoryLot, Reservation, StockMovement | LotRegistered, StockReserved, StockReleased, StockAdjusted, FefoReservationApplied | RegisterInventoryLot, ReserveStock, ReleaseReservation, AdjustStock, ApplyFefoReservation | StockByInternalCodeView, LotAvailabilityView, ReservationView, InventoryAlertView |
| Logistics | DispatchOrder, TraceabilityEvent, DeliveryIncident, DeliveryEvidence, TemperatureCheck | DispatchScheduled, DispatchInTransit, DeliveryIncidentRegistered, TemperatureAlertRaised, DeliveryEvidenceRegistered, DispatchDelivered | ScheduleDispatch, StartDispatch, RegisterTraceabilityEvent, RegisterDeliveryIncident, RegisterTemperatureCheck, RegisterDeliveryEvidence | DispatchBoardView, TrackingTimelineView, DeliveryEvidenceView, IncidentSummaryView |
| Invoicing | CommercialDocument, PaymentRecord, PaymentStatus, InvoiceSummary | CommercialDocumentIssued, PaymentSimulationRegistered, PaymentStatusUpdated, DocumentVisibilityUpdated | GenerateCommercialDocument, RegisterSimulatedPayment, UpdatePaymentStatus, PublishDocumentForBuyer | DocumentHistoryView, PaymentStatusView, InvoiceSummaryView, ChargeSummaryView |

El modelo resultante mantiene Identity and Access Management como una capacidad de soporte. Esta área de soporte provee gestión de usuarios, roles, permisos, tenants y sesiones, pero no reemplaza ninguno de los cinco contextos core del negocio.

## 4.6.2. Software Architecture Context Diagram

El diagrama de contexto C4 presenta a Nexa como el sistema de software central y muestra su interacción con los principales usuarios y sistemas externos de soporte.

![C4 Context Diagram - Nexa](../assets/images/chapter-4/architecture/c4/c4-context-diagram.svg)

**Nota:** Elaboración propia usando Structurizr.

![C4 Context Diagram Key](../assets/images/chapter-4/architecture/c4/c4-context-diagram-key.svg)

**Nota:** Leyenda del diagrama generada por Structurizr.

El contexto del sistema considera los siguientes actores externos:

| Actor | Descripción | Interacción principal con Nexa |
|---|---|---|
| Visitor | Usuario público interesado en la propuesta SaaS. | Revisa el Landing Page y accede al call-to-action correspondiente. |
| B2B Buyer | Usuario cliente que compra productos gourmet refrigerados. | Revisa catálogo, envía solicitudes de compra, realiza seguimiento de órdenes y consulta documentos/estado de pago. |
| Commercial Coordinator | Usuario interno responsable de la validación comercial y gestión de órdenes. | Revisa solicitudes de compra, valida condiciones comerciales y confirma órdenes de venta. |
| Operations Responsible | Usuario interno responsable de la configuración y monitoreo operativo. | Revisa inventario, despachos, estado operativo e información relacionada con tenant. |
| Logistics Manager | Usuario interno responsable de la ejecución de despachos y trazabilidad de entregas. | Programa despachos, registra eventos de seguimiento, incidencias, controles de temperatura y evidencia de entrega. |
| External Support Services | Servicios de terceros utilizados por la solución. | Dan soporte a autenticación, notificaciones, almacenamiento documental, integración con calendario o simulación de pago según el alcance de implementación. |

El diagrama de contexto es consistente con los tres segmentos objetivo principales del producto: coordinación comercial, operaciones/account ownership y compradores B2B.

## 4.6.3. Software Architecture Container Diagrams

El diagrama de contenedores describe la estructura técnica de alto nivel de la solución. Nexa se organiza en un Landing Page público, una Web Application, una RESTful API y una base de datos relacional. Los servicios externos se representan como sistemas de soporte.

![C4 Container Diagram - Nexa](../assets/images/chapter-4/architecture/c4/c4-container-diagram.svg)

**Nota:** Elaboración propia usando Structurizr.

![C4 Container Diagram Key](../assets/images/chapter-4/architecture/c4/c4-container-diagram-key.svg)

**Nota:** Leyenda del diagrama generada por Structurizr.

| Container | Tecnología / enfoque | Responsabilidad |
|---|---|---|
| Landing Page | HTML5, CSS3 y JavaScript | Presenta el modelo de negocio, propuesta de valor, beneficios y enlaces call-to-action para cada segmento objetivo. |
| Web Application | Vue, PrimeVue, PrimeFlex, PrimeIcons, Vue Router, Vue I18n y Axios | Proporciona la experiencia transaccional para compradores B2B, usuarios comerciales y usuarios de operaciones. |
| RESTful API | ASP.NET Core Web API y C# | Expone application services y operaciones de dominio para catálogo, ventas, almacén, logística e invoicing. |
| Relational Database | PostgreSQL (base de datos relacional para el corte backend AV2) | Persiste datos de negocio relacionados con productos, clientes, órdenes, inventario, despachos, documentos y pagos. |
| External Services | Servicios de terceros | Dan soporte a autenticación, notificaciones, almacenamiento documental, integración con calendario o simulación de pago según el alcance de implementación. |

La Web Application se comunica con la RESTful API mediante solicitudes HTTP. La RESTful API centraliza el comportamiento de dominio y el acceso a datos. La base de datos relacional PostgreSQL persiste la información requerida por los bounded contexts y los read models derivados.

## 4.6.4. Software Architecture Components Diagrams

El diagrama de componentes describe la descomposición interna del contenedor principal de backend. Los componentes se organizan según los bounded contexts definidos mediante DDD, mientras que las responsabilidades transversales permanecen separadas de los módulos de negocio.

![C4 Component Diagram - Nexa](../assets/images/chapter-4/architecture/c4/c4-component-diagram.png)

**Nota:** Elaboración propia.

| Component | Contexto relacionado | Responsabilidad |
|---|---|---|
| Catalog Component | Catalog Management | Gestiona registro de productos, visibilidad del catálogo, categorías, detalles de producto y promociones. |
| Sales Component | Sales | Gestiona clientes B2B, solicitudes de compra, validación comercial, órdenes de venta e ítems de orden. |
| Warehouse Component | Warehouse | Gestiona almacenes, lotes, disponibilidad de stock, reservas, movimientos de stock y reglas FEFO. |
| Logistics Component | Logistics | Gestiona órdenes de despacho, eventos de trazabilidad, incidencias de entrega, controles de temperatura y evidencia de entrega. |
| Invoicing Component | Invoicing | Gestiona documentos comerciales, resúmenes de cobro, registros de pago y estado de pago. |
| Identity and Access Component | Transversal Support | Gestiona usuarios, roles, permisos, sesiones, tenants y control de acceso. |
| Notification Component | Transversal Support | Gestiona el envío de notificaciones y la comunicación con servicios externos de mensajería. |
| Reporting Component | Derived Read Models | Proporciona dashboards y reportes basados en datos operativos de los contextos principales. |
| Integration Component | Transversal Support | Encapsula la comunicación con servicios de terceros utilizados por la plataforma. |

Esta organización de componentes evita acoplar el modelo de dominio directamente a responsabilidades de interfaz de usuario. Cada bounded context se representa mediante un conjunto cohesivo de application services, objetos de dominio y mecanismos de persistencia.
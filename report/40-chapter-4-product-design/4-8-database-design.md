# 4.8. Database Design

Esta sección presenta el diseño de base de datos de Nexa. El modelo de base de datos está alineado con la arquitectura de software dirigida por el dominio documentada en la sección 4.6 y con el diseño orientado a objetos documentado en la sección 4.7.

El modelo de persistencia se organiza alrededor de los cinco bounded contexts principales de la plataforma: **Catalog Management**, **Sales**, **Warehouse**, **Logistics** e **Invoicing**. Además, el modelo incluye tablas de soporte transversal para identity, access y gestión de tenants. Los read models se incluyen como estructuras derivadas utilizadas para dashboards y vistas de reportes.

El diseño sigue un enfoque de base de datos relacional utilizando PostgreSQL para el backend AV2 y el despliegue académico AV2. Cada diagrama presenta tablas, columnas, primary keys, foreign keys y relaciones requeridas para persistir la información gestionada por el modelo de dominio.

Desde la perspectiva DDD, las relaciones entre tablas de distintos bounded contexts se interpretan como referencias persistentes por identificador dentro de un modelo relacional integrado. Estas relaciones no implican que los aggregates de un contexto accedan directamente al comportamiento interno de otro contexto. La coordinación entre contextos debe realizarse mediante application services, domain events, integration events o consultas controladas según el caso de uso.

## 4.8.1. Database Diagrams

Los diagramas de base de datos se agrupan por contexto para preservar los límites del dominio y mejorar la mantenibilidad. Esta estructura también ayuda a evitar que los datos comerciales, de inventario, logística e invoicing se mezclen en un mismo modelo conceptual.

| Grupo | Propósito |
|---|---|
| Identity and Access Support | Soporta la gestión de usuarios, roles, permisos, tenants y sesiones. |
| Catalog Management | Persiste productos, categorías, promociones y datos de visibilidad del catálogo. |
| Sales | Persiste clientes B2B, solicitudes de compra, órdenes de venta, ítems de orden y datos de validación comercial. |
| Warehouse | Persiste almacenes, lotes de inventario, reservas y movimientos de stock. |
| Logistics | Persiste órdenes de despacho, eventos de trazabilidad, incidencias, controles de temperatura y evidencia de entrega. |
| Invoicing | Persiste documentos comerciales, registros de pago, estados de pago y resúmenes de cobro. |
| Read Models | Persiste estructuras derivadas de consulta para reportes y dashboards. |

### Identity and Access Support Database Diagram

![Identity and Access Database Diagram](../assets/images/chapter-4/database/identity-and-access.png)

## 4.8. Database Design

El diseño de base de datos de Nexa deriva de los diagramas de clases actualizados y de los bounded contexts consolidados en el diseño táctico. Organizamos las estructuras relacionales alrededor de **Identity & Access**, **Catalog**, **Orders & Commercial Management**, **Inventory** y **Dispatch & Traceability**, manteniendo coherencia con EventStorming, DDD y C4.

El modelo conserva las relaciones necesarias para usuarios, productos, clientes B2B, condiciones comerciales, pedidos, lotes de inventario, movimientos de stock, despacho y trazabilidad. Los reportes se tratan como read models derivados de tablas operativas; no constituyen un bounded context independiente.

En TB1, la webapp utiliza Fake API como simulación para validar flujos y estructura funcional. Los siguientes diagramas representan una arquitectura relacional objetivo para una futura capa backend/base de datos; no declaran persistencia productiva, autenticación productiva ni REST API backend implementada en esta entrega.

### 4.8.1. Database Diagrams

El diseño de base de datos se presenta como un modelo relacional objetivo derivado de los diagramas de clases. Para cada estructura se especifican tablas, columnas, claves primarias, claves foráneas y restricciones relevantes. Las relaciones se representan con cardinalidades para mantener coherencia con las asociaciones del modelo orientado a objetos.

*Figura. Diagrama de base de datos del bounded context Identity & Access.*

![Identity & Access](../assets/images/chapter-4/database/identity-and-access.png)

> *Nota.* El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1. Elaboración propia.

*Figura. Diagrama de base de datos del bounded context Catalog.*

![Catalog](../assets/images/chapter-4/database/catalog.png)

> *Nota.* El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1. Elaboración propia.

*Figura. Diagrama de base de datos del bounded context Orders & Commercial Management.*

![Orders & Commercial Management](../assets/images/chapter-4/database/orders-and-commercial-management.png)

> *Nota.* El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1. Elaboración propia.

*Figura. Diagrama de base de datos del bounded context Inventory.*

![Inventory](../assets/images/chapter-4/database/inventory.png)

> *Nota.* El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1. Elaboración propia.

*Figura. Diagrama de base de datos del bounded context Dispatch & Traceability.*

![Dispatch & Traceability](../assets/images/chapter-4/database/dispatch-and-traceability.png)

> *Nota.* El modelo representa el diseño relacional objetivo; no declara persistencia productiva para TB1. Elaboración propia.


![Full Database Diagram](../assets/images/chapter-4/database/full-database-diagram.png)

 > *Nota:* El diagrama completo de base de datos consolida las principales estructuras relacionales requeridas por los cinco bounded contexts y las capacidades de soporte transversal. Elaboración propia.

La siguiente tabla resume la agrupación completa de base de datos:
> *Nota.* La vista consolidada integra las estructuras por bounded context y sus relaciones principales como diseño objetivo. Elaboración propia.

*Tabla. Agrupación de estructuras de base de datos por bounded context*

| Bounded context | Estructuras principales | Propósito de diseño |
|---|---|---|
| Identity & Access | `USERS`, `USER_SESSIONS` | Administrar usuarios, alcance de acceso, rol y sesiones como diseño objetivo de seguridad. |
| Catalog | `CATEGORIES`, `PRODUCTS` | Mantener información maestra de productos, categorías y condiciones de conservación. |
| Orders & Commercial Management | `B2B_CLIENTS`, `COMMERCIAL_CONDITIONS`, `CREDIT_WARNINGS`, `ORDERS`, `ORDER_ITEMS`, `ORDER_OBSERVATIONS` | Registrar clientes B2B, condiciones comerciales, alertas de crédito, pedidos, detalle y observaciones. |
| Inventory | `WAREHOUSES`, `INVENTORY_LOTS`, `STOCK_MOVEMENTS` | Representar almacenes, lotes, disponibilidad, reservas y movimientos de stock. |
| Dispatch & Traceability | `DISPATCHES`, `DISPATCH_INCIDENTS`, `TRACEABILITY_EVENTS`, `POD_EVIDENCE` | Registrar despacho, incidencias, eventos trazables y evidencia de cierre. |

> *Nota:* La agrupación mantiene la relación entre modelo relacional objetivo, bounded contexts y diagramas de clases sin declarar persistencia productiva para TB1. Elaboración propia.
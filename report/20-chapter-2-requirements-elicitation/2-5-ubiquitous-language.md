## 2.5. Ubiquitous Language

<p align="justify">
El siguiente glosario establece el vocabulario compartido entre el equipo de desarrollo y los expertos del dominio para el sistema Nexa. Todos los artefactos del proyecto —historias de usuario, diagramas, código y documentación— utilizan estos términos de manera consistente para evitar ambigüedades entre disciplinas e integrantes del equipo. Este glosario sigue los principios descritos por Eric Evans en <em>Domain-Driven Design: Tackling Complexity in the Heart of Software</em>, donde el Lenguaje Ubicuo se modela dentro de un contexto delimitado para que los términos tengan un significado preciso y unívoco acordado por todos los interesados.
</p>

**Tabla 13**

*Glosario de Lenguaje Ubicuo — Dominio: Distribución B2B de productos refrigerados y congelados*

| Término | Definición de Dominio | Contexto |
|------|-------------------|---------|
| **Order** | Solicitud formal de productos emitida por un cliente comercial a la empresa distribuidora, especificando productos, cantidades y condiciones de entrega. | Gestión de Pedidos |
| **Assisted Order** | Pedido registrado por el equipo de coordinación comercial en nombre del cliente, utilizando un flujo estructurado dentro de Nexa. | Gestión de Pedidos |
| **Order Draft** | Estado inicial editable de un pedido antes de su envío formal. | Gestión de Pedidos |
| **Order Status** | Valor que refleja la fase actual del flujo del pedido: `draft` (borrador), `submitted` (enviado), `confirmed` (confirmado), `in_preparation` (en preparación), `dispatched` (despachado), `delivered` (entregado) o `cancelled` (cancelado). | Gestión de Pedidos |
| **Catalog** | Conjunto estructurado de productos disponibles para compra B2B, incluyendo descripción, formato de presentación, requisitos de almacenamiento y condiciones comerciales. | Catálogo |
| **Product Sheet** | Resumen técnico asociado a un producto, utilizado para proporcionar información relevante al cliente o al equipo comercial. | Catálogo / Comercial |
| **SKU** *(Stock Keeping Unit)* | Código único que identifica cada variante de producto en el sistema. | Catálogo / Inventario |
| **Batch** | Agrupación de unidades del mismo SKU producidas o recibidas en la misma fecha. | Inventario / Trazabilidad |
| **FEFO** *(First Expired, First Out)* | Política de rotación que prioriza el despacho del lote con la fecha de vencimiento más cercana. | Inventario |
| **Availability** | Cantidad realmente disponible para nuevos pedidos, tras deducir reservas, bloqueos o restricciones aplicables. | Inventario |
| **Committed Stock** | Cantidad reservada para pedidos confirmados que aún no han sido entregados. | Inventario |
| **Blocked Stock** | Cantidad o producto no habilitado para la venta debido a indisponibilidad, incidente sanitario o restricción operativa. | Inventario |
| **Available Credit** | Capacidad comercial remanente con la que un cliente puede seguir comprando bajo condiciones de crédito. | Comercial |
| **Outstanding Balance** | Deuda comercial fuera del plazo de pago acordado con la distribuidora. | Comercial |
| **Delinquent Client** | Cliente que mantiene un saldo vencido y puede estar sujeto a bloqueos de nuevas operaciones. | Comercial |
| **Commercial Conditions** | Reglas asignadas a un cliente, como lista de precios, método de pago, límite de crédito, documentos requeridos o límites de compra. | Comercial |
| **Commercial Client** | Empresa que compra a la distribuidora para reventa o consumo en su propia operación: minimarket, bodega, restaurante, hotel u otro actor B2B. | Actor del Dominio |
| **Merchandiser / Commercial Coordinator** | Personal interno que recibe, interpreta y gestiona los pedidos antes de la preparación y el despacho. | Actor del Dominio |
| **Delivery Driver** | Personal responsable de ejecutar la entrega física del pedido y registrar su cierre. | Actor del Dominio |
| **Refrigerated Distributor** | Cliente principal de Nexa (pago SaaS), responsable de vender y entregar productos refrigerados o congelados a clientes comerciales. | Actor del Dominio |
| **Importer** | Empresa que trae productos del extranjero al mercado local y puede operar como proveedor o cliente SaaS. | Actor del Dominio |
| **Cold Storage Operator** | Organización enfocada en el almacenamiento refrigerado y la trazabilidad de productos sensibles. | Actor del Dominio |
| **Dispatch** | Proceso de envío del pedido desde la empresa distribuidora hacia el cliente. | Operaciones |
| **ETA** *(Estimated Time of Arrival)* | Ventana de llegada estimada del despacho al punto de entrega. | Trazabilidad / Despacho |
| **Incident** | Evento que altera el cumplimiento del pedido, como un retraso, observación operativa o problema en la entrega. | Trazabilidad / Operaciones |
| **POD** *(Proof of Delivery)* | Evidencia digital o documental que respalda la entrega efectiva del pedido. | Trazabilidad / Despacho |
| **Remittance Note** | Documento que acompaña al envío (Guía de Remisión) y que puede formar parte de la evidencia de entrega. | Despacho |
| **Cold Chain** | Conjunto de condiciones y controles que aseguran que el producto se mantenga dentro de su rango térmico. | Calidad / Trazabilidad |
| **Thermal Range** | Intervalo de temperatura permitido para almacenar un producto de manera segura. | Calidad |
| **B2B Portal** | Interfaz web a través de la cual el cliente comercial consulta el catálogo, registra pedidos y revisa su seguimiento. | Módulo del Sistema |
| **Landing Page** | Sitio web público orientado a comunicar la propuesta de valor de Nexa y capturar solicitudes de demo. | Sitio Público |
| **Hybrid Support** | Enfoque donde la plataforma resuelve parte del proceso y el equipo comercial mantiene contacto humano cuando es necesario. | Servicio |
| **Rework** | Actividad duplicada o correctiva que surge por ambigüedad o error en la recepción manual de pedidos. | Gestión de Pedidos |

*Nota.* Los términos del lenguaje ubicuo resultan de la investigación cualitativa, los artefactos de needfinding y el modelado del dominio. Su uso es obligatorio en todos los entregables del proyecto para evitar contracciones entre investigación, diseño y backlog. *Elaboración propia.*

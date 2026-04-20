## 2.5. Ubiquitous Language

El siguiente glosario establece el vocabulario compartido entre el equipo de desarrollo y los expertos del dominio para el sistema Nexa. Todos los artefactos del proyecto —user stories, diagramas, código y documentación— utilizan estos términos de forma consistente.

**Tabla 13**

*Glosario de lenguaje ubicuo — Dominio: distribución B2B de productos refrigerados y congelados*

| Término | Definición en el dominio | Contexto |
|---------|--------------------------|----------|
| **Pedido** | Solicitud formal de productos emitida por un cliente comercial hacia la empresa distribuidora, con productos, cantidades y condiciones de entrega. | Gestión de pedidos |
| **Pedido asistido** | Pedido registrado por coordinación comercial en nombre del cliente, usando un flujo estructurado dentro de Nexa. | Gestión de pedidos |
| **Borrador de pedido** | Estado inicial editable del pedido antes de su envío formal. | Gestión de pedidos |
| **Catálogo** | Conjunto estructurado de productos disponibles para compra B2B, con descripción, presentación, conservación y condiciones comerciales. | Catálogo |
| **Ficha técnica** | Documento o resumen técnico asociado a un producto, utilizado para mostrar información relevante al cliente o al equipo comercial. | Catálogo / Comercial |
| **SKU** (*Stock Keeping Unit*) | Código único que identifica cada variante de producto en el sistema. | Catálogo / Inventario |
| **Lote** | Agrupación de unidades del mismo SKU producidas o recibidas en la misma fecha. | Inventario / Trazabilidad |
| **FEFO** (*First Expired, First Out*) | Política de rotación que prioriza despachar primero el lote con fecha de vencimiento más próxima. | Inventario |
| **Disponibilidad** | Cantidad realmente atendible para nuevos pedidos, después de descontar reservas, bloqueos o restricciones aplicables. | Inventario |
| **Stock comprometido** | Cantidad reservada para pedidos confirmados pero aún no entregados. | Inventario |
| **Stock bloqueado** | Cantidad o producto no habilitado para venta por falta de disponibilidad, incidencia sanitaria o restricción operativa. | Inventario |
| **Crédito disponible** | Monto o capacidad comercial remanente con la que un cliente puede seguir comprando a crédito. | Comercial |
| **Saldo vencido** | Deuda comercial fuera del plazo acordado con el distribuidor. | Comercial |
| **Cliente moroso** | Cliente que mantiene saldo vencido y puede quedar sujeto a bloqueo de nuevas operaciones. | Comercial |
| **Condiciones comerciales** | Reglas asignadas a un cliente, como lista de precios, forma de pago, crédito, documentos o límites de compra. | Comercial |
| **Cliente comercial** | Negocio que compra al distribuidor para reventa o consumo en su operación: minimarket, bodega, restaurante, hotel u otro actor B2B. | Actor del dominio |
| **Mercaderista / coordinación comercial** | Personal interno que recibe, interpreta y gestiona pedidos antes de la preparación y el despacho. | Actor del dominio |
| **Chofer de reparto / despacho** | Personal encargado de ejecutar la entrega física del pedido y registrar su cierre. | Actor del dominio |
| **Distribuidor refrigerado** | Empresa pagadora principal del SaaS Nexa, responsable de vender y entregar productos refrigerados o congelados a clientes comerciales. | Actor del dominio |
| **Importador** | Empresa que ingresa productos del exterior al mercado local y puede operar como proveedor o cliente del SaaS. | Actor del dominio |
| **Operador de cámara fría** | Organización enfocada en almacenamiento refrigerado y trazabilidad de productos sensibles. | Actor del dominio |
| **Despacho** | Proceso de salida del pedido desde la empresa distribuidora hacia el cliente. | Operaciones |
| **ETA** (*Estimated Time of Arrival*) | Ventana estimada de llegada del despacho al punto de entrega. | Trazabilidad / Despacho |
| **Incidencia** | Evento que altera la atención del pedido, como retraso, observación operativa o problema de entrega. | Trazabilidad / Operaciones |
| **POD** (*Proof of Delivery*) | Evidencia digital o documental que respalda la entrega del pedido. | Trazabilidad / Despacho |
| **Guía de remisión** | Documento que acompaña el traslado y puede formar parte de la evidencia de entrega. | Despacho |
| **Cadena de frío** | Conjunto de condiciones y controles que garantizan que el producto se mantenga dentro de su rango térmico. | Calidad / Trazabilidad |
| **Rango térmico** | Intervalo de temperatura permitido para conservar un producto en condiciones seguras. | Calidad |
| **Portal B2B** | Interfaz web mediante la cual el cliente comercial consulta catálogo, registra pedidos y revisa su seguimiento. | Módulo del sistema |
| **Landing page** | Sitio web público orientado a comunicar la propuesta de valor de Nexa y captar solicitudes de demo. | Sitio público |
| **Soporte híbrido** | Enfoque donde la plataforma resuelve parte del proceso y el equipo comercial mantiene contacto humano cuando se necesita. | Servicio |
| **Estado del pedido** | Valor que refleja la fase del flujo: `draft`, `submitted`, `confirmed`, `in_preparation`, `dispatched`, `delivered` o `cancelled`. | Gestión de pedidos |
| **Retrabajo** | Actividad duplicada o correctiva que surge por ambigüedad o error en la recepción manual de pedidos. | Gestión de pedidos |
| **User Story** | Descripción de una funcionalidad desde la perspectiva de un actor, acompañada de criterios de aceptación comprobables. | Requisitos |
| **Product Backlog** | Lista priorizada de épicas y user stories que organiza el trabajo del producto. | Proceso ágil |

*Nota.* Los términos del lenguaje ubicuo resultan de la investigación cualitativa, los artefactos de needfinding y el modelado del dominio. Su uso es obligatorio en todos los entregables para evitar contradicciones entre investigación, diseño y backlog. *Elaboración propia.*

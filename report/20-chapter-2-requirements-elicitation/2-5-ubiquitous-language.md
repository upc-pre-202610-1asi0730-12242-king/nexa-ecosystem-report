## 2.5. Ubiquitous Language

El equipo utiliza términos canónicos en inglés para el código fuente, diagramas de arquitectura, mensajes de commit y artefactos técnicos internos. La traducción al español se incluye para mantener la comprensión del negocio clara para stakeholders y evaluadores.

La selección de términos cubre los tres segmentos del producto: S1 — Coordinación comercial / ventas internas, S2 — Jefatura logística / coordinación operativa y S3 — Comprador B2B / cliente comercial. El glosario conecta entrevistas, needfinding, historias de usuario, diagramas de arquitectura y mensajes de commit. Los conceptos de implementación, herramientas o plataformas tecnológicas se documentan en los capítulos de diseño e implementación correspondientes.

*Glosario de Lenguaje Ubicuo — Dominio: Distribución B2B de productos refrigerados*

| Término Canónico (EN) | Traducción (ES) | Definición en Nexa | Uso / Contexto |
|---|---|---|---|
| **Cold Chain** | Cadena de frío | Conjunto de procesos logísticos que garantizan temperatura controlada desde el almacén hasta la entrega | Término central del dominio; aplica a almacenamiento, despacho y entrega de productos perecederos |
| **B2B Buyer** | Comprador B2B | Cliente institucional que realiza pedidos a través del Portal del Comprador | Diferencia al actor principal del sistema de un consumidor final |
| **Client Account** | Cuenta cliente | Registro de un comprador B2B con datos comerciales, condiciones de crédito y estado | Referenciado en órdenes de compra, validaciones y analítica |
| **Customer / Client** | Cliente | Actor externo que genera demanda mediante órdenes de compra | Usado en historias de usuario y flujos de captura de pedido |
| **Product Catalog** | Catálogo de productos | Colección de productos refrigerados y congelados disponibles para pedido | Base del contexto acotado Product Catalog Context |
| **Product SKU** | SKU de producto | Código único que identifica un producto específico dentro del catálogo | Clave de referencia en ítems de pedido e inventario |
| **Refrigerated Product** | Producto refrigerado | Producto que requiere temperatura entre 0 °C y 8 °C | Subdivisión del catálogo; determina zona de almacenamiento |
| **Frozen Product** | Producto congelado | Producto que requiere temperatura inferior a −18 °C | Subdivisión del catálogo; requiere zona congelados |
| **Product Category** | Categoría de producto | Agrupación de productos por características térmicas y comerciales | Usada en filtros del catálogo y analítica |
| **Warehouse** | Almacén | Instalación física donde se almacenan productos en cadena de frío | Contexto operativo central del sistema |
| **Storage Zone** | Zona de almacenamiento | Área del almacén con temperatura y condiciones controladas específicas | Diferencia refrigerados de congelados dentro del almacén |
| **Inventory Lot** | Lote de inventario | Unidad de seguimiento de producto con fecha de ingreso y vencimiento | Base del control FEFO |
| **Stock Availability** | Disponibilidad de stock | Cantidad de producto disponible para asignarse a órdenes nuevas | Consultada en validación de pedidos |
| **Reserved Stock** | Stock reservado | Cantidad asignada a una orden de compra pendiente de despacho | Diferencia stock libre de stock comprometido |
| **Stock Movement** | Movimiento de stock | Registro de entrada o salida de unidades en el inventario | Fuente de trazabilidad y analítica |
| **Expiration Date** | Fecha de vencimiento | Fecha límite de aptitud de un lote de producto | Determinante del orden FEFO |
| **FEFO** | First Expired, First Out / Primero en vencer, primero en salir | Política de salida de inventario que prioriza lotes con vencimiento más próximo | Regla operativa clave para cadena de frío |
| **Purchase Order** | Orden de compra / Pedido B2B | Solicitud formal de un comprador B2B que contiene ítems, cantidades, cuenta cliente, estado de validación y prioridad operativa. Se usa internamente en lugar del término genérico "Order" | Contexto Purchase Orders Context; central en flujo de captura, validación y despacho |
| **Order Item** | Ítem de pedido | Línea de producto dentro de una orden de compra con SKU, cantidad y precio pactado | Componente atómico de la orden de compra |
| **Assisted Order Capture** | Captura asistida de pedido | Flujo en que el Coordinador Comercial registra la orden en nombre del comprador B2B | Diferencia el canal asistido del autoservicio |
| **Order Validation** | Validación de pedido | Proceso que verifica disponibilidad de stock, condiciones crediticias y datos del cliente antes de confirmar una orden | Paso obligatorio antes de generar orden de despacho |
| **Order Status** | Estado de pedido | Valor que representa la etapa actual de una orden: pendiente, validada, bloqueada, despachada | Determina transiciones en el flujo operativo |
| **Blocked Order** | Pedido bloqueado | Orden de compra detenida por falta de stock, crédito insuficiente u otro impedimento validado | Genera alerta operativa para el Coordinador Comercial |
| **Dispatch Order** | Orden de despacho | Documento operativo generado desde una orden de compra validada que instruye la preparación y salida del almacén | Vincula el contexto de órdenes con el contexto de despacho |
| **Dispatch** | Despacho | Coordinación operativa de órdenes preparadas para su salida del almacén hacia la ruta de entrega. Término canónico en inglés usado en código, carpetas y commits. Se diferencia de Delivery: Dispatch es la salida del almacén; Delivery es el evento de recepción final por el cliente | Contexto Dispatch Orders Context; referenciado en rutas de interfaz, carpetas de código y mensajes de commit |
| **Delivery Evidence** | Evidencia de entrega | Registro fotográfico o documental que confirma la recepción del pedido | Parte del flujo Proof of Delivery |
| **Proof of Delivery (POD)** | Prueba de entrega | Confirmación formal de que el pedido fue recibido por el cliente en las condiciones acordadas | Cierre del ciclo logístico |
| **Delivery Route** | Ruta de entrega | Secuencia planificada de puntos de entrega para un vehículo en una jornada | Elemento de planificación logística |
| **Temperature Check** | Control de temperatura | Verificación periódica de temperatura en zonas de almacenamiento y vehículos | Requisito operativo de cadena de frío |
| **Operational Alert** | Alerta operativa | Notificación generada por el sistema ante condiciones que requieren atención inmediata | Visible en el Panel Operativo |
| **Activity Log** | Registro de actividad | Historial cronológico de acciones realizadas sobre órdenes, inventario y despachos | Base de trazabilidad y auditoría |
| **Operational Analytics** | Analítica operativa | Conjunto de métricas e indicadores sobre pedidos, stock, despachos y desempeño logístico. Reemplaza el término genérico "Reports" internamente. La ruta pública `/ops/reports` puede mantenerse como compatibilidad de experiencia de usuario, pero el término de dominio es Analytics | Contexto Analytics Context |
| **Commercial Coordinator** | Coordinador comercial | Rol interno que captura y gestiona órdenes de compra en nombre de compradores B2B | Actor principal del flujo de captura asistida |
| **Logistics Manager** | Jefe de logística | Rol interno responsable de validar despachos, monitorear rutas y revisar analítica operativa | Actor del Panel Operativo |
| **Buyer Portal** | Portal del comprador | Interfaz web destinada a compradores B2B para consulta de catálogo, estado de pedidos y analítica propia | Contexto acotado de cara al cliente externo |
| **Operations Dashboard** | Panel operativo | Vista centralizada para roles internos con alertas, métricas y acciones operativas | Interfaz principal del Coordinador Comercial y Jefe de Logística |
| **Bounded Context** | Contexto acotado | Límite explícito dentro del cual un modelo de dominio tiene significado preciso y coherente | Base de la organización DDD del sistema Nexa |
| **Product Catalog Context** | Contexto de catálogo de productos | Contexto acotado responsable del catálogo, SKUs y categorías | Carpeta/módulo `product-catalog` en el proyecto |
| **Purchase Orders Context** | Contexto de órdenes de compra | Contexto acotado que gestiona el ciclo de vida de órdenes B2B | Carpeta/módulo `purchase-orders` |
| **Inventory Control Context** | Contexto de control de inventario | Contexto acotado para stock, lotes y movimientos | Carpeta/módulo `inventory-control` |
| **Dispatch Orders Context** | Contexto de órdenes de despacho | Contexto acotado que gestiona salidas del almacén y rutas | Carpeta/módulo `dispatch-orders` |
| **IAM Context** | Contexto de identidad y acceso | Contexto acotado para autenticación y autorización de usuarios | Carpeta/módulo `iam` |
| **Analytics Context** | Contexto de analítica | Contexto acotado para métricas operativas y reportes | Carpeta/módulo `analytics` |
| **Shared Kernel** | Núcleo compartido | Conjunto de tipos, valores y contratos compartidos entre contextos acotados | Evita duplicación de conceptos comunes como moneda, unidades e identificadores |
| **Entity** | Entidad | Objeto de dominio con identidad única y ciclo de vida | Clase fundamental en el modelo de dominio DDD |
| **Resource / DTO** | Recurso / DTO | Objeto de transferencia de datos entre capas o hacia la interfaz de programación de aplicaciones | Separa el modelo de dominio del contrato de interfaz |
| **Assembler / Mapper** | Ensamblador / Mapeador | Componente que convierte entre Entity y Resource/DTO | Patrón de traducción en la capa de interfaz o aplicación |
| **Fake API** | API simulada | Implementación de interfaz de programación con datos estáticos para prototipado y pruebas de interfaz | Usado en fase de construcción del frontend antes de contar con un servicio backend productivo |
| **Static Fake API** | API simulada estática | Variante de Fake API con respuestas fijas en archivos JSON | Implementada con json-server o archivos estáticos en la webapp |

Este glosario reduce ambigüedad entre EventStorming, historias de usuario, diagramas DDD, rutas de interfaz, carpetas de código y mensajes de commit. Cualquier término que aparezca en el código fuente, en un diagrama o en un commit debe corresponderse con un término canónico de este glosario.

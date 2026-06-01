
El equipo utiliza términos canónicos en inglés para mantener una comprensión compartida del dominio de Nexa entre entrevistas, needfinding, event storming, historias de usuario, backlog, diseño de producto y arquitectura de dominio. La traducción al español se incluye para facilitar la lectura del reporte por parte de stakeholders y evaluadores.

La selección de términos cubre los tres segmentos del producto: S1 — Commercial Coordination, S2 — Operations / Account Owner y S3 — B2B Buyer Portal. El glosario prioriza conceptos propios del flujo comercial-operativo de distribución B2B de productos refrigerados: solicitud, validación, pedido, inventario, despacho, documentos, seguimiento y cierre de entrega.

*Glosario de Lenguaje Ubicuo — Dominio: Distribución B2B de productos refrigerados*

| Término Canónico (EN) | Traducción (ES) | Definición en Nexa | Uso / Contexto |
|---|---|---|---|
| **Cold Chain** | Cadena de frío | Conjunto de procesos logísticos que garantizan temperatura controlada desde el almacén hasta la entrega | Término central del dominio; aplica a almacenamiento, despacho y entrega de productos perecederos |
| **B2B Buyer** | Comprador B2B | Cliente institucional que realiza pedidos a través del Portal del Comprador | Diferencia al actor principal del sistema de un consumidor final |
| **Client Account** | Cuenta cliente | Registro de un comprador B2B con datos comerciales, condiciones de crédito y estado | Referenciado en órdenes de compra, validaciones y analítica |
| **Customer / Client** | Cliente | Actor externo que genera demanda mediante órdenes de compra | Usado en historias de usuario y flujos de captura de pedido |
| **Product Catalog** | Catálogo de productos | Colección de productos refrigerados y congelados disponibles para pedido | Base para consulta, solicitud de compra, promociones y visibilidad comercial del comprador |
| **Product Internal Code** | Código interno de producto | Código usado por la empresa contratante para identificar un producto específico dentro del catálogo | Clave de referencia en ítems de pedido e inventario |
| **Refrigerated Product** | Producto refrigerado | Producto que requiere temperatura entre 0 °C y 8 °C | Subdivisión del catálogo; determina zona de almacenamiento |
| **Frozen Product** | Producto congelado | Producto que requiere temperatura inferior a −18 °C | Subdivisión del catálogo; requiere zona congelados |
| **Product Category** | Categoría de producto | Agrupación de productos por características térmicas y comerciales | Usada en filtros del catálogo y analítica |
| **Warehouse** | Almacén | Instalación física donde se almacenan productos en cadena de frío | Espacio operativo donde se controla stock, lotes, temperatura, preparación y salida de pedidos |
| **Storage Zone** | Zona de almacenamiento | Área del almacén con temperatura y condiciones controladas específicas | Diferencia refrigerados de congelados dentro del almacén |
| **Inventory Lot** | Lote de inventario | Unidad de seguimiento de producto con fecha de ingreso y vencimiento | Base del control FEFO |
| **Stock Availability** | Disponibilidad de stock | Cantidad de producto disponible para asignarse a órdenes nuevas | Consultada en validación de pedidos |
| **Reserved Stock** | Stock reservado | Cantidad asignada a una orden de compra pendiente de despacho | Diferencia stock libre de stock comprometido |
| **Stock Movement** | Movimiento de stock | Registro de entrada o salida de unidades en el inventario | Fuente de trazabilidad y analítica |
| **Expiration Date** | Fecha de vencimiento | Fecha límite de aptitud de un lote de producto | Determinante del orden FEFO |
| **FEFO** | First Expired, First Out / Primero en vencer, primero en salir | Política de salida de inventario que prioriza lotes con vencimiento más próximo | Regla operativa clave para cadena de frío |
| **Purchase Order** | Orden de compra / Pedido B2B | Pedido confirmado que nace a partir de una solicitud validada y contiene ítems, cantidades, comprador, condiciones comerciales, estado y prioridad operativa | Central en el flujo de captura, validación, inventario, despacho y seguimiento |
| **Purchase Order** | Orden de compra / Pedido B2B | Solicitud formal de un comprador B2B que contiene ítems, cantidades, cuenta cliente, estado de validación y prioridad operativa. Se usa internamente en lugar del término genérico "Order" | Contexto Purchase Orders Context; central en flujo de captura, validación y despacho |
| **Assisted Order Capture** | Captura asistida de pedido | Flujo en que el Coordinador Comercial registra la orden en nombre del comprador B2B | Diferencia el canal asistido del autoservicio |
| **Order Validation** | Validación de pedido | Proceso que verifica disponibilidad de stock, condiciones crediticias y datos del cliente antes de confirmar una orden | Paso obligatorio antes de generar orden de despacho |
| **Order Status** | Estado de pedido | Valor que representa la etapa actual de una orden: pendiente, validada, bloqueada, despachada | Determina transiciones en el flujo operativo |
| **Blocked Order** | Pedido bloqueado | Orden de compra detenida por falta de stock, crédito insuficiente u otro impedimento validado | Genera alerta operativa para el Coordinador Comercial |
| **Dispatch Order** | Orden de despacho | Documento operativo generado desde una orden de compra validada que instruye la preparación y salida del almacén | Vincula el contexto de órdenes con el contexto de despacho |
| **Dispatch** | Despacho | Coordinación operativa de pedidos preparados para su salida del almacén hacia la ruta de entrega. Se diferencia de Delivery porque Dispatch representa la salida operativa del almacén, mientras que Delivery representa la recepción final por parte del cliente | Relacionado con preparación, ruta, responsable de entrega, incidencias y evidencias |
| **Delivery Evidence** | Evidencia de entrega | Registro fotográfico o documental que confirma la recepción del pedido | Parte del flujo Proof of Delivery |
| **Proof of Delivery (POD)** | Prueba de entrega | Confirmación formal de que el pedido fue recibido por el cliente en las condiciones acordadas | Cierre del ciclo logístico |
| **Delivery Route** | Ruta de entrega | Secuencia planificada de puntos de entrega para un vehículo en una jornada | Elemento de planificación logística |
| **Temperature Check** | Control de temperatura | Verificación periódica de temperatura en zonas de almacenamiento y vehículos | Requisito operativo de cadena de frío |
| **Operational Alert** | Alerta operativa | Notificación generada por el sistema ante condiciones que requieren atención inmediata | Visible en el Panel Operativo |
| **Activity Log** | Registro de actividad | Historial cronológico de acciones realizadas sobre órdenes, inventario y despachos | Base de trazabilidad y auditoría |
| **Operational Analytics** | Analítica operativa | Conjunto de métricas e indicadores sobre solicitudes, pedidos, stock, documentos, despachos e incidencias | Permite al S2 evaluar control operativo, cumplimiento y trazabilidad |
| **Commercial Coordinator** | Coordinador comercial | Rol interno que captura y gestiona órdenes de compra en nombre de compradores B2B | Actor principal del flujo de captura asistida |
| **Logistics Manager** | Jefe de logística | Rol interno responsable de validar despachos, monitorear rutas y revisar analítica operativa | Actor del Panel Operativo |
| **Buyer Portal** | Portal del comprador | Canal web donde el comprador B2B consulta catálogo, crea solicitudes, revisa pedidos, visualiza documentos permitidos y sigue el estado de entrega | Experiencia principal del S3 |
| **Operations Dashboard** | Panel operativo | Vista centralizada para revisar solicitudes, pedidos, inventario, alertas, despachos, documentos e incidencias | Herramienta de trabajo para S1 y S2 |
| **SaaS Customer** | Cliente SaaS / empresa contratante | Importadora o distribuidora que contrata Nexa para organizar su operación comercial, logística y documental | Diferencia a la empresa que paga la plataforma del comprador B2B externo |
| **Company Account** | Cuenta empresa | Registro de la empresa contratante dentro de Nexa, incluyendo configuración general, usuarios, accesos y parámetros operativos | Asociado al S2 y a la administración interna del tenant |
| **Tenant** | Tenant / espacio de empresa | Espacio lógico de trabajo donde una empresa contratante gestiona sus usuarios, pedidos, inventario, documentos y despachos | Delimita la información operativa de cada empresa contratante |
| **Account Owner** | Responsable de cuenta | Usuario interno con responsabilidad sobre configuración de empresa, accesos, operación general y control del espacio de trabajo | Rol asociado al S2 |
| **B2B Client** | Cliente B2B | Negocio comprador habilitado por la empresa contratante para consultar catálogo, generar solicitudes y revisar pedidos | Representa al cliente comercial atendido por S1 y visible para S2 |
| **Buyer Profile** | Perfil del comprador | Información comercial y operativa del comprador B2B, incluyendo datos de contacto, direcciones, condiciones y preferencias de atención | Usado para personalizar catálogo, solicitudes y seguimiento |
| **Purchase Request** | Solicitud de compra | Solicitud inicial generada por el comprador B2B o registrada por S1 antes de convertirse en pedido confirmado | Punto de entrada del flujo comercial-operativo |
| **Request Builder** | Constructor de solicitud | Flujo mediante el cual el comprador selecciona productos, cantidades y observaciones para preparar una solicitud | Parte del Buyer Portal para S3 |
| **Manual Order Entry** | Registro manual de pedido | Captura de una solicitud realizada por S1 cuando el pedido llega por WhatsApp, llamada, Excel u otro canal informal | Permite ordenar pedidos recibidos fuera del portal |
| **Commercial Validation** | Validación comercial | Revisión de cliente, crédito, condiciones, dirección, stock preliminar y documentos antes de confirmar un pedido | Responsabilidad principal del S1 |
| **Business Documents** | Documentos comerciales | Conjunto de documentos asociados al pedido, como factura referencial, guía, XML, CDR, POD u otros documentos necesarios para seguimiento y cierre | Conecta S1, S2 y S3 durante el ciclo del pedido |
| **External Portal Task** | Tarea en portal externo | Actividad manual o semiautomatizada relacionada con portales de clientes, documentación externa o validaciones fuera de Nexa | Representa fricciones documentales observadas en el flujo |
| **Delivery Status** | Estado de entrega | Situación actual del pedido durante despacho, ruta, incidencia o cierre | Permite seguimiento operativo para S2 y visibilidad para S3 |
| **Tracking** | Seguimiento | Consulta del avance del pedido desde su confirmación hasta el cierre de entrega | Reduce incertidumbre del comprador y llamadas manuales |
| **Delivery Incident** | Incidencia de entrega | Evento que afecta el despacho, como demora, faltante, rechazo, cambio de ruta o problema de conformidad | Debe registrarse para mantener trazabilidad |
| **Buyer Portal** | Portal del comprador | Interfaz web destinada a compradores B2B para consulta de catálogo, estado de pedidos y analítica propia | Contexto acotado de cara al cliente externo |
| **Operations Dashboard** | Panel operativo | Vista centralizada para roles internos con alertas, métricas y acciones operativas | Interfaz principal del Coordinador Comercial y Jefe de Logística |

Este glosario reduce ambigüedad entre entrevistas, needfinding, EventStorming, historias de usuario, backlog y diseño de dominio. Su propósito es mantener consistencia en la forma en que el equipo describe el flujo comercial-operativo de Nexa y las responsabilidades de S1, S2 y S3.
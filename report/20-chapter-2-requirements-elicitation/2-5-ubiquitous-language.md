## 2.5. Ubiquitous Language

El siguiente glosario establece el vocabulario compartido entre el equipo de desarrollo y los expertos del dominio para el sistema Nexa. Todos los artefactos del proyecto —user stories, diagramas, código y documentación— utilizan estos términos de forma consistente.

**Tabla 13**  
*Glosario de lenguaje ubicuo — Dominio: distribución B2B de productos refrigerados y congelados*

| Término | Definición en el dominio | Contexto |
|---------|--------------------------|----------|
| **Pedido** | Solicitud formal de productos emitida por un cliente comercial hacia la empresa distribuidora, que incluye SKUs, cantidades y condiciones de entrega. Reemplaza el concepto informal de "encargo por WhatsApp". | Gestión de pedidos |
| **Catálogo** | Conjunto estructurado de productos disponibles para compra B2B, con SKU, descripción, condiciones de temperatura y precio por segmento. | Catálogo / Inventario |
| **SKU** *(Stock Keeping Unit)* | Código único que identifica cada variante de producto en el sistema (e.g., por gramaje, formato o marca). Unidad mínima de referencia en pedidos e inventario. | Catálogo / Inventario |
| **Lote** | Agrupación de unidades del mismo SKU producidas o recibidas en la misma fecha. Permite aplicar FEFO y rastrear la trazabilidad del producto. | Inventario / Trazabilidad |
| **FEFO** *(First Expired, First Out)* | Política de rotación de inventario que prioriza el despacho de los lotes con fecha de vencimiento más próxima para minimizar mermas. | Inventario |
| **Despacho** | Proceso de preparación y entrega física del pedido al cliente comercial, incluyendo la emisión de guía de remisión y la confirmación de recepción. | Operaciones / Logística |
| **Guía de remisión** | Documento que acompaña el despacho y acredita la transferencia de productos del distribuidor al cliente. Equivale a la Prueba de Entrega (POD). | Operaciones / Logística |
| **Cadena de frío** | Conjunto de procesos, infraestructura y controles que garantizan que los productos refrigerados y congelados se mantengan dentro del rango térmico permitido desde el origen hasta el punto de entrega. | Trazabilidad / Calidad |
| **Rango térmico** | Intervalo de temperatura (en °C) dentro del cual un producto debe mantenerse para preservar su inocuidad y calidad. Cada SKU tiene su propio rango térmico. | Catálogo / Trazabilidad |
| **Ruptura de cadena de frío** | Evento en que un producto sale del rango térmico permitido durante almacenamiento o transporte. Puede invalidar el lote afectado. | Trazabilidad / Calidad |
| **Distribuidor** | Empresa que adquiere productos de importadores o productores y los vende y entrega a clientes comerciales (bodegas, HORECA, minimarkets). Usuario principal de la plataforma Nexa. | Actor del dominio |
| **Importador** | Empresa que introduce productos del exterior al mercado peruano, operando como proveedor de los distribuidores. | Actor del dominio |
| **Cliente comercial** | Empresa o establecimiento (bodega, minimarket, restaurante, hotel) que adquiere productos al distribuidor para reventa o consumo. Opera a través del portal B2B. | Actor del dominio |
| **Mercaderista** | Personal interno del distribuidor responsable de recibir, interpretar y gestionar los pedidos de los clientes comerciales. Usuario clave del módulo de gestión de pedidos. | Actor del dominio |
| **HORECA** | Segmento de clientes conformado por Hoteles, Restaurantes y Catering. Requiere entregas programadas y especificaciones de temperatura estrictas. | Actor del dominio |
| **Portal B2B** | Interfaz web a través de la cual los clientes comerciales consultan el catálogo, generan pedidos y hacen seguimiento del estado de sus despachos de forma autónoma. | Módulo del sistema |
| **Disponibilidad** | Estado en tiempo real del stock de un SKU, expresado en unidades o lotes disponibles para ser asignados a nuevos pedidos. | Inventario |
| **Estado del pedido** | Valor que refleja la fase en que se encuentra un pedido dentro del flujo: *Recibido → Confirmado → En preparación → Despachado → Entregado*. | Gestión de pedidos |
| **Retrabajo** | Actividad duplicada o correctiva que surge por ambigüedad o error en la recepción y transcripción manual de pedidos. Indicador de fricción operativa que Nexa busca eliminar. | Gestión de pedidos |
| **Inocuidad alimentaria** | Conjunto de condiciones que garantizan que los productos no representen riesgo para la salud del consumidor final. Guía las restricciones de temperatura y manipulación. | Calidad |
| **Sprint** | Iteración de desarrollo de duración fija (generalmente 1-2 semanas) en la que el equipo produce un incremento funcional del producto. | Proceso ágil |
| **Product Backlog** | Lista priorizada de todos los requisitos funcionales y no funcionales del sistema, expresados como épicas y user stories. | Proceso ágil |
| **User Story** | Descripción de una funcionalidad del sistema desde la perspectiva del usuario, con el formato: *"Como [rol], quiero [acción], para [beneficio]"*, acompañada de criterios de aceptación. | Requisitos |

*Nota.* Los términos del lenguaje ubicuo son el resultado del proceso de UX Research (entrevistas y needfinding) y del modelado del dominio mediante Big Picture EventStorming. Su uso es obligatorio en todos los artefactos del proyecto para garantizar coherencia entre el equipo técnico y los expertos del negocio. *Elaboración propia.*

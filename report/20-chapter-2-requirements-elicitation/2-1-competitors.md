# **Capítulo II: Requirements Elicitation & Analysis**

## **2.1. Competidores**


Para una empresa importadora o distribuidora de productos refrigerados, esta fragmentación implica que la digitalización del flujo completo todavía suele depender de varias herramientas con énfasis distintos. Por ello, el análisis competitivo de Nexa considera competidores y referentes que cubren capas complementarias del problema: **Riqra** en la capa comercial B2B, **Drivin** en la capa logística y de despacho, **OnTracking / RedGPS** en la capa de telemetría y monitoreo, y **Defontana** en la capa de gestión empresarial integral.

El objetivo no es descalificar a estas plataformas, sino identificar con precisión qué resuelven bien, qué dejan fuera de su alcance y dónde se posiciona Nexa dentro de ese mapa competitivo.

**Riqra (Competencia en la capa transaccional / comercial B2B)**

**Perfil:** Riqra es una plataforma SaaS de comercio electrónico B2B de origen peruano, con presencia regional. Su propuesta permite a fabricantes y distribuidores desplegar portales web donde sus clientes corporativos pueden consultar productos, revisar condiciones comerciales y autogestionar compras.

**Debilidad frente a nuestro nicho:** Aunque resuelve bien la capa comercial del pedido, su foco principal está en la digitalización de la venta B2B. No se especializa en conectar de forma nativa el pedido con inventario perecedero, criterios FEFO, despacho operativo, evidencias de entrega y trazabilidad del flujo refrigerado.

**Perfil:** Posicionado como un Sistema de Gestión de Transporte (TMS) robusto a nivel internacional. Su núcleo de negocio es la optimización algorítmica de rutas, la consolidación de carga en vehículos y la recolección de Pruebas Electrónicas de Entrega (POD) mediante aplicaciones móviles para choferes.

**Perfil:** Posicionado como un sistema de gestión de transporte (TMS) enfocado en optimización de rutas, consolidación de carga, gestión de flota y prueba electrónica de entrega (POD) mediante aplicaciones móviles y herramientas logísticas especializadas.

**Debilidad frente a nuestro nicho:** Opera en una etapa posterior del proceso comercial. Drivin interviene cuando la orden ya existe y la prioridad pasa a ser planificación, ruteo y control de la ejecución. No resuelve de forma nativa la consulta de catálogo, la captura inicial del pedido ni la coordinación comercial.

**OnTracking / RedGPS (Competencia en la capa de infraestructura y telemetría)**

**Perfil:** Representa soluciones orientadas al rastreo vehicular, monitoreo físico e Internet de las Cosas (IoT). Se utilizan como referencia para monitorear unidades de transporte, registrar variables operativas y emitir alertas cuando existen incidencias durante el trayecto.

**Debilidad frente a nuestro nicho:** Se trata de una capa principalmente técnica de monitoreo y telemetría. No integra de forma nativa la lógica comercial del pedido, la gestión del catálogo, las condiciones comerciales del cliente ni la articulación entre captura, validación e inventario. Además, suelen depender de hardware físico instalado en las unidades de transporte.

**Defontana (Competencia en la capa de gestión empresarial integral / ERP)**

**Perfil:** Defontana representa una solución ERP amplia orientada a centralizar procesos empresariales como ventas, compras, inventario, facturación, clientes, cobranzas y control administrativo en una misma plataforma.


### ***2.1.1. Análisis competitivo (Landscape & SWOT)***


*Tabla. Competitive Analysis Landscape*

| Criterio | Nexa<br><img src="../assets/images/chapter-2/competitors/logo-nexa.svg" alt="Logo NEXA" width="90"/> | Riqra<br><img src="../assets/images/chapter-2/competitors/logo-riqra.png" alt="Logo Riqra" width="90"/> | Drivin<br><img src="../assets/images/chapter-2/competitors/logo-drivin.png" alt="Logo Drivin" width="90"/> | OnTracking / RedGPS<br><img src="../assets/images/chapter-2/competitors/logo-ontracking-redgps.png" alt="Logo OnTracking RedGPS" width="90"/> | Defontana<br><img src="../assets/images/chapter-2/competitors/logo-defontana.jpg" alt="Logo Defontana" width="90"/> |
|---|---|---|---|---|---|
| **Overview** | Plataforma SaaS B2B orientada a importadoras y distribuidoras de productos refrigerados. Conecta solicitud, validación comercial, inventario, documentos, despacho y seguimiento. | Plataforma SaaS de comercio electrónico B2B enfocada en catálogos digitales, pedidos y relación comercial entre empresas proveedoras y compradores. | Sistema de gestión de transporte orientado a planificación logística, optimización de rutas, gestión de flota y prueba de entrega. | Solución de monitoreo vehicular, telemetría e IoT orientada al seguimiento físico de unidades y variables operativas durante el transporte. | ERP orientado a centralizar procesos empresariales como ventas, compras, inventario, facturación, clientes, cobranzas y administración. |
| **Ventaja competitiva / valor ofrecido** | Integra el flujo comercial-operativo de cadena de frío en una experiencia más enfocada que un ERP y más completa que un catálogo B2B aislado. | Digitaliza el canal de venta B2B y facilita que clientes empresariales consulten productos y realicen pedidos. | Optimiza la ejecución logística posterior al pedido mediante rutas, flota, entregas y evidencias. | Aporta control físico y monitoreo técnico del transporte mediante rastreo, sensores y alertas. | Centraliza múltiples procesos administrativos y operativos de la empresa en una plataforma integral. |
| **Mercado objetivo** | Importadoras, distribuidoras y empresas B2B que comercializan productos refrigerados o congelados y necesitan ordenar su flujo de pedidos. | Fabricantes, distribuidores y mayoristas que desean vender a clientes B2B mediante un canal digital. | Empresas con operaciones de distribución, transporte y última milla que requieren optimizar rutas y entregas. | Empresas con flotas, transporte refrigerado o activos móviles que requieren monitoreo y control técnico. | Empresas que necesitan gestionar procesos administrativos, comerciales, contables y operativos desde un ERP. |
| **Estrategias de marketing** | Posicionamiento como plataforma SaaS B2B especializada en cadena de frío, enfocada en reducción de retrabajo, trazabilidad y visibilidad del pedido. | Comunicación centrada en digitalización de ventas B2B, automatización comercial y disponibilidad de catálogo para clientes. | Comunicación centrada en eficiencia logística, reducción de costos de transporte, control de rutas y cumplimiento de entregas. | Comunicación centrada en control en tiempo real, monitoreo de flota, seguridad y trazabilidad física. | Comunicación centrada en gestión empresarial integral, control administrativo y centralización de procesos. |
| **Productos & Servicios** | Portal comprador, gestión de solicitudes, validación comercial, pedidos, inventario básico, documentos, despacho, POD y seguimiento. | Catálogo digital B2B, portal de pedidos, gestión comercial y herramientas para relación proveedor-cliente. | Planificación de rutas, gestión de transporte, monitoreo de entregas, aplicaciones móviles para conductores y POD. | Rastreo vehicular, monitoreo GPS, telemetría, sensores, alertas y reportes de variables operativas. | ERP cloud, facturación, ventas, compras, inventario, clientes, cobranzas, contabilidad y administración. |
| **Precios & Costos** | Modelo SaaS por suscripción, con posibilidad de planes según cantidad de usuarios internos, compradores habilitados y módulos operativos. | Modelo SaaS orientado a empresas, normalmente asociado a uso de plataforma, catálogo y funcionalidades comerciales. | Modelo SaaS/logístico asociado al volumen operativo, cantidad de vehículos, entregas o funcionalidades contratadas. | Modelo asociado a software, dispositivos, instalación de hardware, monitoreo y servicios de conectividad. | Modelo ERP por suscripción o planes empresariales, con costos asociados a módulos, usuarios, soporte e implementación. |
| **Canales de distribución** | Web Application para usuarios internos y portal web para compradores B2B. Landing Page como canal comercial y de conversión. | Plataforma web y canales digitales B2B para proveedores y clientes empresariales. | Web Application para administración logística y aplicación móvil para operación en ruta. | Plataforma web de monitoreo, aplicaciones móviles y dispositivos instalados en unidades. | Plataforma cloud/web con módulos empresariales y canales de soporte comercial. |
| **Fortalezas (S)** | Enfoque específico en cadena de frío, trazabilidad del pedido, conexión entre S1, S2 y S3, menor complejidad que un ERP completo. | Especialización en comercio B2B, catálogo digital y autogestión de pedidos por clientes empresariales. | Fortaleza en ruteo, despacho, gestión de flota, control de entregas y evidencia logística. | Fortaleza en rastreo, monitoreo técnico, sensores y visibilidad física del transporte. | Amplia cobertura funcional para procesos empresariales, administrativos y contables. |
| **Debilidades (W)** | Al ser una propuesta en etapa académica/MVP, todavía requiere validar integraciones, escalabilidad y adopción en operaciones reales. | Puede quedarse en la capa comercial si no se integra con inventario perecedero, FEFO, despacho, documentos y POD. | No resuelve la captura comercial inicial, catálogo, validación del pedido ni relación directa con compradores B2B. | Depende de hardware y se enfoca más en monitoreo físico que en gestión comercial, documental o de pedidos. | Su amplitud puede aumentar la complejidad de adopción cuando la empresa solo necesita ordenar un flujo específico. |
| Dimensión / Criterio | Nexa | Riqra (SaaS Ecommerce B2B) | Drivin (SaaS TMS Logística) | OnTracking / RedGPS (SaaS IoT Telemetría) |
| --- | --- | --- | --- | --- |
| **Overview** | Plataforma unificada que conecta la toma de pedidos B2B con la gestión operativa básica, especializada nativamente en productos de cadena de frío. | Portal B2B de comercio electrónico orientado a digitalizar ventas para fabricantes y distribuidores generalistas. | Plataforma TMS enfocada en la planificación de rutas, optimización de flota y última milla en múltiples industrias. | Plataforma de monitoreo de sensores IoT y rastreo vehicular, orientada al cumplimiento físico de la cadena de frío. |

> *Nota:* La matriz compara a Nexa con competidores y referentes que cubren capas distintas del flujo comercial-operativo. Elaboración propia.

**Profundización del Análisis Estratégico (SWOT)**

A partir del Competitive Analysis Landscape, se identifican cuatro implicancias estratégicas para Nexa. Estas implicancias conectan las fortalezas, debilidades, oportunidades y amenazas de la matriz con las decisiones de posicionamiento que se desarrollan en la sección siguiente.

**1. Especialización funcional del dominio**

La oportunidad principal de Nexa no está en competir de forma directa con la profundidad completa de un ERP, un TMS o una solución de telemetría. Su espacio competitivo se encuentra en modelar mejor la continuidad entre solicitud, validación comercial, inventario, documentos, despacho y seguimiento dentro del dominio de productos refrigerados.

**2. Alcance realista del MVP**

El análisis muestra un límite importante para la primera versión. Nexa no necesita replicar todas las capacidades de Defontana, Drivin u OnTracking / RedGPS, sino validar primero un flujo comercial-operativo claro, trazable y útil para S1, S2 y S3.

**3. Diferenciación frente a plataformas fragmentadas**

En un sector donde trazabilidad, control documental y conservación del producto tienen relevancia normativa, una solución que ordene información comercial y operativa puede adquirir valor no solo por eficiencia, sino también por capacidad de respuesta ante incidencias o auditorías.

**4. Riesgo de adopción**

La amenaza competitiva no proviene únicamente de plataformas consolidadas, sino también de la permanencia de canales informales como WhatsApp, llamadas y hojas de cálculo. Por ello, la propuesta debe reducir fricción de uso, evitar sobrecomplejidad y demostrar valor desde tareas concretas: menor tiempo de registro, menor error de stock y mayor visibilidad del pedido.

En conjunto, el landscape sugiere que Nexa puede encontrar espacio si mantiene una propuesta acotada y coherente: integrar la capa comercial-operativa que hoy aparece separada entre soluciones de venta, ERP, ruteo y telemetría, sin asumir desde el inicio la profundidad funcional completa de cada una de ellas.

### ***2.1.2. Estrategias y tácticas frente a competidores***

El posicionamiento de Nexa se orienta a cubrir una brecha específica: conectar el flujo comercial-operativo de productos refrigerados desde la solicitud del comprador hasta la validación comercial, inventario, despacho, documentos, evidencias y seguimiento.

Por ello, las estrategias no se plantean como una competencia directa en todos los frentes, sino como una diferenciación por enfoque, simplicidad operativa y trazabilidad en cadena de frío.

*Tabla. Estrategias y tácticas frente a competidores*

| Competidor / referente | Fortaleza del competidor | Debilidad u oportunidad identificada | Estrategia de Nexa | Tácticas preliminares |
|---|---|---|---|---|
| Riqra | Fuerte enfoque en comercio B2B, catálogo digital y autogestión de pedidos. | Puede concentrarse principalmente en la capa comercial si no conecta profundamente con inventario perecedero, FEFO, despacho, documentos y POD. | Diferenciarse como una plataforma que no solo recibe pedidos B2B, sino que conecta el pedido con operación, inventario, documentos y seguimiento. | Priorizar Request Builder, Purchase Requests, Purchase Orders, Product Catalog, Business Documents y tracking del pedido. |
| Drivin | Fortaleza en planificación logística, rutas, flota, entregas y prueba de entrega. | Opera principalmente después de que el pedido ya existe; no resuelve la captura comercial ni la validación inicial del pedido. | Posicionarse como la capa previa y complementaria que estructura el pedido antes de que llegue a despacho. | Diseñar un flujo claro entre solicitud, validación comercial, inventario y dispatch order, dejando abierta una futura integración logística. |
| OnTracking / RedGPS | Fortaleza en rastreo, telemetría, sensores, GPS y monitoreo físico de transporte. | Se enfoca en la trazabilidad física del vehículo, pero no en la lógica comercial, documental ni de coordinación del pedido. | Diferenciarse por trazabilidad comercial-operativa, no por hardware o monitoreo físico avanzado en el MVP. | Registrar estados del pedido, evidencias, documentos y seguimiento visible para operación y comprador, sin depender inicialmente de sensores IoT. |
**Táctica preliminar de producto:** La propuesta debe resaltar de forma explícita variables del dominio refrigerado que suelen quedar invisibles en plataformas horizontales, como condiciones de conservación, rotación y sensibilidad operativa del producto.

>*Nota*: La tabla resume cómo Nexa puede enfrentar fortalezas competitivas, aprovechar debilidades y definir tácticas preliminares desde su enfoque SaaS B2B especializado en cadena de frío. Elaboración propia.

#### Enfoque estratégico general


*Tabla. Síntesis estratégica de diferenciación*

| Eje estratégico | Aplicación en Nexa | Resultado esperado |
|---|---|---|
| Especialización en cadena de frío | El producto se enfoca en pedidos refrigerados, inventario sensible, lotes, FEFO, despacho y evidencias. | Mayor pertinencia frente a empresas que manejan productos perecederos o congelados. |
| Simplicidad frente a ERP | Nexa no intenta cubrir todos los procesos administrativos en el MVP. Prioriza el recorrido del pedido. | Menor fricción de adopción y mayor claridad funcional para S1, S2 y S3. |
| Continuidad comercial-operativa | La solicitud se conecta con validación comercial, inventario, documentos y despacho. | Menos doble digitación, menos errores y mayor trazabilidad entre áreas. |
| Visibilidad para el comprador | El S3 puede consultar catálogo, solicitudes, pedidos, documentos y tracking desde el portal. | Mayor confianza y menor dependencia de consultas manuales por WhatsApp o llamada. |

>*Nota*: La síntesis estratégica permite explicar por qué Nexa se diferencia por enfoque y continuidad del flujo, no por intentar reemplazar todas las soluciones existentes. Elaboración propia.
**Estrategia de adopción con baja fricción tecnológica**
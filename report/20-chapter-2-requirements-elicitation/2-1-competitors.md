# **Capítulo II: Requirements Elicitation & Analysis**

## **2.1. Competidores**

El ecosistema de soluciones de software aplicadas a la gestión comercial y logística en América Latina ha experimentado un grado de maduración significativo. Sin embargo, una revisión crítica del paisaje competitivo demuestra que la oferta tecnológica padece de una severa hiperespecialización. Las plataformas dominantes tienden a enfocarse en nichos aislados: o resuelven exclusivamente la captura de la venta comercial, o se dedican estrictamente al monitoreo físico del transporte.

Para una pyme distribuidora de productos refrigerados, esta fragmentación sugiere que la digitalización del proceso completo todavía exige combinar soluciones con énfasis distintos. Por ello, el análisis se concentra en tres competidores representativos que cubren capas diferentes del problema: captura comercial B2B, gestión del transporte y monitoreo físico de la cadena de frío. El objetivo no es descalificar a estas plataformas, sino identificar con precisión qué resuelven bien, qué dejan fuera de su alcance y dónde se ubica la propuesta de Nexa dentro de ese mapa competitivo.

**Riqra (Competencia en la Capa Transaccional/Comercial)**

**Perfil:** Es una consolidada plataforma SaaS de comercio electrónico B2B de origen peruano, con fuerte presencia regional. Su propuesta de valor permite a fabricantes y grandes distribuidores desplegar portales web donde sus clientes corporativos pueden autogestionar compras.

**Debilidad frente a nuestro nicho:** Es una plataforma completamente agnóstica al producto. Al ser una herramienta de propósito general (horizontal), su base de datos trata de igual manera a un saco de cemento que a un lote de carne congelada. Carece de lógicas estructurales nativas orientadas a la cadena de frío, omitiendo alertas biológicas, gestión de rangos térmicos por producto y restricciones de incompatibilidad de carga.

**Drivin (Competencia en la Capa Logística y Ruteo)**

**Perfil:** Posicionado como un Sistema de Gestión de Transporte (TMS) robusto a nivel internacional. Su núcleo de negocio es la optimización algorítmica de rutas, la consolidación de carga en vehículos y la recolección de Pruebas Electrónicas de Entrega (POD) mediante aplicaciones móviles para choferes.

**Debilidad frente a nuestro nicho:** Opera en una etapa posterior del proceso comercial. Drivin interviene cuando la orden de compra ya existe en el sistema y la prioridad pasa a ser la planificación, el ruteo y la trazabilidad de la entrega. No resuelve de forma nativa la consulta de catálogo ni la captura inicial del pedido por parte del cliente comercial.

**OnTracking de RedGPS (Competencia en la Capa de Infraestructura y Telemetría)**

**Perfil:** Proveedor de plataformas de rastreo vehicular y monitoreo físico mediante Internet de las Cosas (IoT). Son el estándar de la industria para certificar que un camión frigorífico mantuvo la temperatura exigida durante el trayecto, enviando alertas en tiempo real si se rompe la cadena térmica.

**Debilidad frente a nuestro nicho:** Operan en una capa principalmente técnica de telemetría y geolocalización, sin integrar de forma nativa la lógica comercial del pedido. No gestionan catálogos, condiciones comerciales ni la interacción con el cliente que realiza la compra. Además, suelen depender de hardware físico instalado en las unidades de transporte.

### ***2.1.1. Análisis competitivo (Landscape & SWOT)***

El análisis competitivo estructurado a continuación emplea una matriz de variables del mercado (Landscape) y un análisis FODA cruzado (SWOT) para evaluar nuestro posicionamiento estratégico frente a las plataformas establecidas. Las dimensiones evaluadas no solo contemplan la arquitectura de software, sino también la fricción de adopción, el mercado objetivo y el modelo de monetización; factores críticos para la supervivencia de un SaaS en el canal comercial peruano. 

*Análisis Competitivo*

| Dimensión / Criterio | Nexa | Riqra (SaaS Ecommerce B2B) | Drivin (SaaS TMS Logística) | OnTracking / RedGPS (SaaS IoT Telemetría) |
| --- | --- | --- | --- | --- |
| **Overview** | Plataforma unificada que conecta la toma de pedidos B2B con la gestión operativa básica, especializada nativamente en productos de cadena de frío. | Portal B2B de comercio electrónico orientado a digitalizar ventas para fabricantes y distribuidores generalistas. | Plataforma TMS enfocada en la planificación de rutas, optimización de flota y última milla en múltiples industrias. | Plataforma de monitoreo de sensores IoT y rastreo vehicular, orientada al cumplimiento físico de la cadena de frío. |
| **Ventaja Competitiva** | Integración del ciclo comercial (Portal) con la especificidad logística del frío (fechas de caducidad, rangos térmicos) en un solo software accesible. | Especialización profunda en integraciones comerciales con ERPs corporativos (SAP, Oracle). | Algoritmos avanzados de optimización de rutas y seguimiento en tiempo real del conductor. | Certificación de temperaturas y hardware telemétrico confiable de grado industrial. |
| **Valor Ofrecido** | Reducción de mermas, retrabajo y errores operativos mediante una integración más estrecha entre pedido, inventario y seguimiento. | Aumento del volumen de ventas al ofrecer tiendas B2B auto gestionables para clientes minoristas. | Reducción de costos logísticos de transporte y mejor cumplimiento de ventanas horarias. | Prevención de siniestros y garantías de salubridad de la carga ante auditorías. |
| **Mercado Objetivo** | Pymes importadoras y distribuidoras exclusivas de productos refrigerados y congelados. | Empresas medianas y grandes corporaciones de diversos sectores (abarrotes, ferretería, construcción). | Operadores logísticos (3PL) y empresas con flotas vehiculares intensivas. | Empresas de flotas que transportan mercancía médica o alimentaria de alto riesgo. |
| **Estrategias de Marketing** | Posicionamiento dirigido a pymes que necesitan ordenar el flujo de pedidos, disminuir mermas y ganar trazabilidad operativa. | Casos de éxito con marcas de renombre regional, alianzas con entidades gubernamentales (ProInnóvate). | Presencia en ferias logísticas especializadas, marketing enfocado en la reducción de huella de carbono y costos. | Ventas orientadas a la certificación y aseguramiento de riesgos para retener a clientes de supermercados. |
| **Productos / Servicios** | Web App con Portal B2B, bandeja unificada de pedidos, gestión de stock por vida útil y seguimiento operativo. | Tienda B2B en línea, integración ERP, gestión de reglas de precio y estados de cuenta. | Software de ruteo, Torre de Control, App para conductores, Prueba Electrónica de Entrega (POD). | Software de monitoreo, alertas de sensores de temperatura en tiempo real y descarga de certificados térmicos. |
| **Precios / Costos** | Suscripción SaaS escalonada, pensada para la capacidad de pago de pymes. | Suscripción Enterprise, altos costos de licenciamiento e implementación. | Licenciamiento basado en el tamaño de la flota o volumen de vehículos. | Costo mixto (SaaS + adquisición e instalación de hardware IoT en los camiones). |
| **Canales** | Web Application responsiva. | Web y APIs corporativas. | Web, integraciones telemáticas y Apps móviles. | Web y hardware en vehículos. |
| **Fortalezas (S)** | Especialización en la intersección entre comercio B2B, inventario perecedero y seguimiento operativo dentro de un mismo flujo. | Plataforma muy madura, soporte corporativo robusto y gran posicionamiento regional. | Tecnología algorítmica avanzada y alta reputación en el rubro logístico. | Especialización técnica profunda en lectura de datos físicos del mundo real. |
| **Debilidades (W)** | Marca nueva sin base instalada inicial. El MVP no incluye optimización avanzada de rutas ni conexión física con sensores (IoT). | Plataforma agnóstica; no entiende de fechas de caducidad ni incompatibilidad biológica de carga. | Nulo contacto con la etapa comercial. Asumen que la empresa ya tiene los pedidos ordenados antes de usar el sistema. | Dependencia de hardware instalado y costos adicionales asociados al despliegue en flota. |
| **Oportunidades (O)** | Nuevas regulaciones del MINSA obligan a las pymes a buscar software de trazabilidad. Crecimiento de la cultura de comercio electrónico B2B. | Expansión a más países de LATAM donde el canal tradicional sigue siendo fuerte. | Aumento del e-commerce y servicios de última milla a nivel nacional. | Abaratamiento paulatino del costo de los dispositivos IoT. |
| **Amenazas (T)** | Resistencia al cambio en segmentos acostumbrados a canales informales y posible expansión funcional de competidores ya consolidados. | Surgimiento de startups especializadas por sector que les roben cuota de mercado local. | Competencia agresiva por precio de otros TMS entrantes al mercado. | Aplicaciones móviles gratuitas que intenten reemplazar la necesidad de hardware. |
> *Nota:* Tabla de análisis competitivo. Elaboración propia.

---

**Profundización del Análisis Estratégico (SWOT)**

A partir de la matriz expuesta, el equipo ha identificado cuatro implicancias estratégicas para el desarrollo del producto.

**1. Especialización funcional del dominio**

La oportunidad principal de Nexa no está en competir por profundidad algorítmica con un TMS ni por sofisticación de hardware con una plataforma telemétrica, sino en modelar mejor la relación entre pedido, disponibilidad, rotación y seguimiento en un dominio de productos perecederos.

**2. Alcance realista del MVP**

El análisis también muestra un límite claro: en su primera versión, Nexa no necesita replicar todas las capacidades de ruteo avanzado o monitoreo IoT, sino ofrecer trazabilidad documental y visibilidad operativa suficientes para validar valor en el flujo principal del pedido.

**3. Valor regulatorio y operativo**

En un sector donde trazabilidad, control documental y conservación del producto tienen relevancia normativa, una solución que ordene información comercial y operativa puede adquirir valor no solo por eficiencia, sino también por capacidad de respuesta ante incidencias o auditorías.

**4. Riesgo de adopción**

La principal amenaza competitiva inmediata no proviene solo de otras plataformas, sino de la persistencia de canales informales ya aceptados por los usuarios. Por ello, la propuesta debe minimizar complejidad de uso y reducir fricción de entrada desde el primer contacto.

En conjunto, el landscape sugiere que Nexa puede encontrar espacio si mantiene una propuesta acotada y coherente: integrar la capa comercial-operativa que hoy aparece separada entre soluciones de venta, ruteo y telemetría, sin asumir desde el inicio la profundidad funcional completa de cada una de ellas.

### ***2.1.2. Estrategias y tácticas frente a competidores***

Al ingresar a un mercado donde interactúan sistemas empresariales heredados y plataformas consolidadas, el proyecto debe adoptar un criterio pragmático. La viabilidad de una primera versión no depende de replicar toda la profundidad funcional del mercado, sino de priorizar aquellas capacidades que conectan mejor con las fricciones identificadas en la investigación. A continuación, se sintetizan las estrategias preliminares de posicionamiento y adopción derivadas del análisis competitivo.

**Estrategia de Especialización Vertical (Posicionamiento frente a Riqra)**

**Objetivo Estratégico:** Diferenciarse de Riqra mediante una especialización nativa en el dominio de cadena de frío, integrando lógicas de negocio que una plataforma horizontal genérica no puede replicar sin una refactorización costosa.

**Táctica preliminar de producto:** La propuesta debe resaltar de forma explícita variables del dominio refrigerado que suelen quedar invisibles en plataformas horizontales, como condiciones de conservación, rotación y sensibilidad operativa del producto.

**Táctica preliminar de experiencia:** La interacción con el pedido debe ayudar a detectar inconsistencias relevantes antes de que la operación confirme compromisos inviables, reforzando una propuesta de valor basada en mayor claridad y menor retrabajo.

**Estrategia de adopción incremental (Posicionamiento frente a Drivin y RedGPS)**

**Objetivo Estratégico:** Evitar competir en la etapa inicial con la profundidad técnica de plataformas de ruteo avanzado o de infraestructura IoT, y concentrarse primero en la capa transaccional y operativa donde hoy persisten más vacíos.

**Táctica preliminar (Fase 1 — MVP):** La primera fase se concentra en ordenar la recepción del pedido, la validación comercial, la disponibilidad y el seguimiento mínimo del despacho. El objetivo es que la información de intención de compra deje de depender exclusivamente de mensajes dispersos y pase a una estructura operativa trazable.

**Táctica preliminar (Fase 2 — Evolución):** Una vez validado el flujo principal, el producto puede evolucionar hacia integraciones con soluciones de ruteo o monitoreo, siempre que ello responda a aprendizaje real del dominio y no a sobrealcance prematuro.

**Estrategia de adopción con baja fricción tecnológica**

**Objetivo Estratégico:** Reducir la resistencia al cambio del usuario habitual y evitar que la adopción inicial dependa de integraciones complejas o despliegues costosos desde el primer día.

**Táctica preliminar para el cliente comercial:** El portal B2B debe apoyarse en flujos de acceso simples y baja fricción, de modo que el usuario pueda empezar a operar rápido y encontrar desde el inicio la información pertinente para su cuenta.

**Táctica preliminar para el distribuidor:** La puesta en marcha debe evitar complejidad innecesaria en la etapa inicial, priorizando mecanismos que faciliten la incorporación gradual del catálogo, la base de clientes y la operación visible del MVP.


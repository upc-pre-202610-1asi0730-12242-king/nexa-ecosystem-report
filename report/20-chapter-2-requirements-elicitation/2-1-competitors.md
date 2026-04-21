# Capítulo II: Requirements Elicitation & Analysis

## 2.1. Competidores
<p align="justify">
El ecosistema de soluciones de software aplicadas a la gestión comercial y logística en América Latina ha experimentado un grado de maduración significativo. Sin embargo, una revisión crítica del paisaje competitivo demuestra que la oferta tecnológica padece de una severa hiperespecialización. Las plataformas dominantes tienden a enfocarse en nichos aislados: o resuelven exclusivamente la captura de la venta comercial, o se dedican estrictamente al monitoreo físico del transporte.

Para una pyme distribuidora de productos refrigerados, esta fragmentación significa que no existe un competidor directo integral que cubra sus necesidades de extremo a extremo (desde el catálogo hasta el control de frío). Por lo tanto, hemos seleccionado para nuestro análisis a tres competidores representativos que dominan diferentes capas del proceso, con el objetivo de demostrar cómo nuestra solución consolida sus fortalezas y ataca sus debilidades en nuestro segmento específico.
</p>

**Riqra (Competencia en la Capa Transaccional/Comercial)**

<p align="justify">
<strong>Perfil:</strong> Es una consolidada plataforma SaaS de comercio electrónico B2B de origen peruano, con fuerte presencia regional. Su propuesta de valor permite a fabricantes y grandes distribuidores desplegar portales web donde sus clientes corporativos pueden autogestionar compras.
</p>

<p align="justify">
<strong>Debilidad frente a nuestro nicho:</strong> Es una plataforma completamente agnóstica al producto. Al ser una herramienta de propósito general (horizontal), su base de datos trata de igual manera a un saco de cemento que a un lote de carne congelada. Carece de lógicas estructurales nativas orientadas a la cadena de frío, omitiendo alertas biológicas, gestión de rangos térmicos por producto y restricciones de incompatibilidad de carga.
</p>

**Drivin (Competencia en la Capa Logística y Ruteo)**

<p align="justify">
<strong>Perfil:</strong> Posicionado como un Sistema de Gestión de Transporte (TMS) robusto a nivel internacional. Su núcleo de negocio es la optimización algorítmica de rutas, la consolidación de carga en vehículos y la recolección de Pruebas Electrónicas de Entrega (POD) mediante aplicaciones móviles para choferes.
</p>

<p align="justify">
<strong>Debilidad frente a nuestro nicho:</strong> Opera exclusivamente "aguas abajo" (downstream) en la cadena de suministro. Drivin interviene únicamente cuando la orden de compra ya existe en el sistema. No proporciona un portal B2B para que el cliente final (la bodega o el supermercado) explore el catálogo o genere el pedido, asumiendo que el distribuidor ya resolvió previamente el caos comercial.
</p>

**OnTracking de RedGPS (Competencia en la Capa de Infraestructura y Telemetría)**

<p align="justify">
<strong>Perfil:</strong> Proveedor de plataformas de rastreo vehicular y monitoreo físico mediante Internet de las Cosas (IoT). Son el estándar de la industria para certificar que un camión frigorífico mantuvo la temperatura exigida durante el trayecto, enviando alertas en tiempo real si se rompe la cadena térmica.
</p>

<p align="justify">
<strong>Debilidad frente a nuestro nicho:</strong> Operan en una capa estrictamente de infraestructura técnica (telemetría y geolocalización), desconectada por completo de la dinámica comercial. No gestionan catálogos, no manejan políticas de precios B2B y no interactúan con el cliente que realiza la compra. Además, dependen de la costosa instalación de hardware físico (sensores) en cada unidad de transporte.
</p>

### 2.1.1. Análisis competitivo (Landscape & SWOT)
<p align = "justify">

El análisis competitivo estructurado a continuación emplea una matriz de variables del mercado (Landscape) y un análisis FODA cruzado (SWOT) para evaluar nuestro posicionamiento estratégico frente a las plataformas establecidas. Las dimensiones evaluadas no solo contemplan la arquitectura de software, sino también la fricción de adopción, el mercado objetivo y el modelo de monetización; factores críticos para la supervivencia de un SaaS en el canal comercial peruano. 

</p>**Tabla 11**

*Análisis Competitivo*

<table>
  <thead>
    <tr>
      <th>Dimensión / Criterio</th>
      <th>Nuestra Startup (SaaS B2B Frío)</th>
      <th>Riqra (SaaS Ecommerce B2B)</th>
      <th>Drivin (SaaS TMS Logística)</th>
      <th>OnTracking / RedGPS (SaaS IoT Telemetría)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><b>Overview</b></td>
      <td>Plataforma unificada que conecta la toma de pedidos B2B con la gestión operativa básica, especializada nativamente en productos de cadena de frío.</td>
      <td>Portal B2B de comercio electrónico orientado a digitalizar ventas para fabricantes y distribuidores generalistas.</td>
      <td>Plataforma TMS enfocada en la planificación de rutas, optimización de flota y última milla en múltiples industrias.</td>
      <td>Plataforma de monitoreo de sensores IoT y rastreo vehicular, orientada al cumplimiento físico de la cadena de frío.</td>
    </tr>
    <tr>
      <td><b>Ventaja Competitiva</b></td>
      <td>Integración del ciclo comercial (Portal) con la especificidad logística del frío (fechas de caducidad, rangos térmicos) en un solo software accesible.</td>
      <td>Especialización profunda en integraciones comerciales con ERPs corporativos (SAP, Oracle).</td>
      <td>Algoritmos avanzados de optimización de rutas y seguimiento en tiempo real del conductor.</td>
      <td>Certificación de temperaturas y hardware telemétrico confiable de grado industrial.</td>
    </tr>
    <tr>
      <td><b>Valor Ofrecido</b></td>
      <td>Reducción de mermas y errores logísticos eliminando canales informales (WhatsApp), en una herramienta sin fricción de adopción.</td>
      <td>Aumento del volumen de ventas al ofrecer tiendas B2B auto gestionables para clientes minoristas.</td>
      <td>Reducción radical de costos logísticos de transporte y cumplimiento de ventanas horarias estrictas.</td>
      <td>Prevención de siniestros y garantías de salubridad de la carga ante auditorías.</td>
    </tr>
    <tr>
      <td><b>Mercado Objetivo</b></td>
      <td>Pymes importadoras y distribuidoras exclusivas de productos refrigerados y congelados.</td>
      <td>Empresas medianas y grandes corporaciones de diversos sectores (abarrotes, ferretería, construcción).</td>
      <td>Operadores logísticos (3PL) y empresas con flotas vehiculares intensivas.</td>
      <td>Empresas de flotas que transportan mercancía médica o alimentaria de alto riesgo.</td>
    </tr>
    <tr>
      <td><b>Estrategias de Marketing</b></td>
      <td>Nicho directo: demostrar a las pymes cuánto dinero ahorran al evitar que la comida se pudra por desorganización interna.</td>
      <td>Casos de éxito con marcas de renombre regional, alianzas con entidades gubernamentales (ProInnóvate).</td>
      <td>Presencia en ferias logísticas especializadas, marketing enfocado en la reducción de huella de carbono y costos.</td>
      <td>Ventas orientadas a la certificación y aseguramiento de riesgos para retener a clientes de supermercados.</td>
    </tr>
    <tr>
      <td><b>Productos / Servicios</b></td>
      <td>Web App con Portal B2B, bandeja unificada de pedidos, gestión de stock por vida útil y seguimiento operativo.</td>
      <td>Tienda B2B en línea, integración ERP, gestión de reglas de precio y estados de cuenta.</td>
      <td>Software de ruteo, Torre de Control, App para conductores, Prueba Electrónica de Entrega (POD).</td>
      <td>Software de monitoreo, alertas de sensores de temperatura en tiempo real y descarga de certificados térmicos.</td>
    </tr>
    <tr>
      <td><b>Precios / Costos</b></td>
      <td>Suscripción SaaS escalonada, pensada para la capacidad de pago de pymes.</td>
      <td>Suscripción Enterprise, altos costos de licenciamiento e implementación.</td>
      <td>Licenciamiento basado en el tamaño de la flota o volumen de vehículos.</td>
      <td>Costo mixto (SaaS + adquisición e instalación de hardware IoT en los camiones).</td>
    </tr>
    <tr>
      <td><b>Canales</b></td>
      <td>Web Application responsiva.</td>
      <td>Web y APIs corporativas.</td>
      <td>Web, integraciones telemáticas y Apps móviles.</td>
      <td>Web y hardware en vehículos.</td>
    </tr>
    <tr>
      <td><b>Fortalezas (S)</b></td>
      <td>Océano Azul: única plataforma enfocada en la intersección del comercio B2B y las variables de frío. Interfaz fácil y de rápida implementación.</td>
      <td>Plataforma muy madura, soporte corporativo robusto y gran posicionamiento regional.</td>
      <td>Tecnología algorítmica inigualable a corto plazo. Alta reputación en el rubro logístico.</td>
      <td>Especialización técnica profunda en lectura de datos físicos del mundo real.</td>
    </tr>
    <tr>
      <td><b>Debilidades (W)</b></td>
      <td>Marca nueva sin base instalada inicial. El MVP no incluye optimización avanzada de rutas ni conexión física con sensores (IoT).</td>
      <td>Plataforma agnóstica; no entiende de fechas de caducidad ni incompatibilidad biológica de carga.</td>
      <td>Nulo contacto con la etapa comercial. Asumen que la empresa ya tiene los pedidos ordenados antes de usar el sistema.</td>
      <td>Solución altamente costosa y dependiente de instalación de hardware en cada camión.</td>
    </tr>
    <tr>
      <td><b>Oportunidades (O)</b></td>
      <td>Nuevas regulaciones del MINSA obligan a las pymes a buscar software de trazabilidad. Crecimiento de la cultura de comercio electrónico B2B.</td>
      <td>Expansión a más países de LATAM donde el canal tradicional sigue siendo fuerte.</td>
      <td>Aumento del e-commerce y servicios de última milla a nivel nacional.</td>
      <td>Abaratamiento paulatino del costo de los dispositivos IoT.</td>
    </tr>
    <tr>
      <td><b>Amenazas (T)</b></td>
      <td>Resistencia al cambio del bodeguero tradicional (apego a WhatsApp). Posible desarrollo de módulos "fríos" por parte de la competencia.</td>
      <td>Surgimiento de startups especializadas por sector que les roben cuota de mercado local.</td>
      <td>Competencia agresiva por precio de otros TMS entrantes al mercado.</td>
      <td>Aplicaciones móviles gratuitas que intenten reemplazar la necesidad de hardware.</td>
    </tr>
  </tbody>
</table>

*Nota.* Tabla de análisis competitivo. Elaboración propia.

---

**Profundización del Análisis Estratégico (SWOT)**

<p align="justify">
A partir de la matriz expuesta, el equipo de Ingeniería de Software ha identificado los vectores críticos de éxito y los riesgos arquitectónicos que guiarán el desarrollo del producto:

- **Explotación de Fortalezas (S) — El Océano Azul:** Nuestra ventaja central no recae en la creación de un algoritmo complejo, sino en el modelado conceptual del dominio (*Domain-Driven Design*). Al construir nuestra base de datos asumiendo que **todo producto tiene una fecha de caducidad y una tolerancia térmica**, le hablamos al cliente distribuidor en su idioma nativo. Plataformas consolidadas como Riqra tendrían que forzar o refactorizar a un alto costo para poder igualar esta capacidad.

- **Mitigación de Debilidades (W) — Enfoque del MVP:** Somos conscientes de que, como startup naciente, nuestra herramienta carece de conectividad física con el hardware de los camiones (como lo hace RedGPS). Para mitigar esta debilidad durante la fase inicial, nuestro sistema permitirá la carga manual y fotográfica de las guías de remisión y las lecturas térmicas en cada estado del pedido. Esto provee un nivel de trazabilidad documental aceptable para el cliente B2B, ganando tiempo hasta que nuestra plataforma logre la madurez necesaria para integrarse vía APIs con proveedores externos de telemetría.

- **Captura de Oportunidades (O) — Apalancamiento Regulatorio:** El endurecimiento de las normativas de salubridad gubernamentales, como las emitidas recientemente por el MINSA, juega a nuestro favor. Las pymes se verán obligadas a abandonar el papel para evitar multas. Nuestra estrategia comercial posicionará al software no solo como una herramienta de ventas, sino como un escudo de cumplimiento normativo y sanitario.

- **Neutralización de Amenazas (T) — Diseño Libre de Fricción:** La amenaza más inminente para la viabilidad del proyecto no proviene de la competencia corporativa, sino del arraigo cultural de los usuarios (bodegueros) a herramientas gratuitas como WhatsApp. Para neutralizar esta amenaza, la arquitectura de Front-end (Interfaz de Usuario) no requerirá instalaciones de aplicaciones pesadas ni configuraciones tediosas; operará bajo un modelo *Mobile-First*, garantizando que el bodeguero pueda reabastecer su tienda en menos de tres interacciones (clicks/taps).

---

**Conclusión del Landscape:** Para que una pyme distribuidora peruana intente alcanzar un ecosistema digital de extremo a extremo hoy en día, se vería obligada a contratar a Riqra para las ventas, a Drivin para las rutas, a RedGPS para el monitoreo y gastar decenas de miles de dólares en integración tecnológica. Nuestra startup suprime esa barrera financiera y técnica, consolidando la base operativa de esos tres mundos en un **Software as a Service unificado, accesible y diseñado explícitamente para proteger la integridad de los alimentos**.
</p>

### 2.1.2. Estrategias y tácticas frente a competidores
<p align = "justify">
Al ingresar a un mercado donde interactúan sistemas empresariales heredados y plataformas consolidadas, nuestra startup debe adoptar un pragmatismo estratégico. La viabilidad del negocio no depende de desarrollar la máxima cantidad de funcionalidades de software en el menor tiempo posible, sino de asegurar la adopción de la herramienta resolviendo fricciones puntuales que la competencia ignora. 

A continuación, se detallan las estrategias operativas y cómo estas se traducirán en tácticas arquitectónicas y funcionales medibles dentro de la construcción del producto:

**Estrategia de Especialización Vertical (Posicionamiento frente a Riqra)**

<p align="justify">
<strong>Objetivo Estratégico:</strong> Diferenciarse de Riqra mediante una especialización nativa en el dominio de cadena de frío, integrando lógicas de negocio que una plataforma horizontal genérica no puede replicar sin una refactorización costosa.
</p>

<p align="justify">
<strong>Táctica Ejecutable (Base de Datos y Lógica de Negocio):</strong> El esquema de la base de datos se diseñará con atributos ineludibles para la industria del frío. Mientras un e-commerce estándar maneja variables básicas (Nombre, Precio, Stock), nuestra entidad principal de "Producto" exigirá la parametrización de campos obligatorios como <code>Temperatura_Minima_Grados</code>, <code>Temperatura_Maxima_Grados</code> y <code>Vida_Util_Dias</code>.
</p>

<p align="justify">
<strong>Táctica Ejecutable (Interfaz de Usuario):</strong> En la aplicación web del cliente (bodeguero), el "carrito de compras" incluirá validaciones automatizadas. Si un usuario intenta añadir al mismo despacho productos biológicamente incompatibles (por ejemplo, cortes de carne cruda en el mismo contenedor que lácteos procesados), el sistema generará una alerta visual recomendando la separación de la carga, previniendo la contaminación cruzada antes de que el pedido llegue al almacén.
</p>

**Estrategia Land and Expand (Aterrizar y Expandirse — Posicionamiento frente a Drivin y RedGPS)**

<p align="justify">
<strong>Objetivo Estratégico:</strong> No confrontar directamente a los gigantes del ruteo algorítmico (TMS) o de la infraestructura de hardware (IoT), sino capturar la capa transaccional inicial para volvernos indispensables en la operación diaria del cliente.
</p>

<p align="justify">
<strong>Táctica Ejecutable (Fase 1 — MVP):</strong> "Aterrizar" en la empresa solucionando exclusivamente el dolor del área comercial y administrativa: eliminar el caos de los pedidos recibidos por WhatsApp. Capturaremos el 100% de la data de intención de compra en nuestra base de datos, convirtiéndonos en la fuente primaria de la verdad operativa (Single Source of Truth).
</p>

<p align="justify">
<strong>Táctica Ejecutable (Fase 2 — Roadmap Tecnológico):</strong> Una vez logrado el arraigo (lock-in) del cliente, "expandir" las capacidades mediante integraciones. El Back-end será construido utilizando una arquitectura basada en APIs RESTful, preparándolo para que, en un futuro, cuando un pedido cambie a estado "Despachado", el sistema pueda invocar de manera asíncrona un webhook hacia un TMS externo (como Drivin) para delegarle el ruteo avanzado, o recibir métricas térmicas desde los sensores de RedGPS, operando como un concentrador central.
</p>

**Estrategia de Adopción con Cero Fricción Tecnológica**

<p align="justify">
<strong>Objetivo Estratégico:</strong> Vencer la resistencia al cambio del usuario tradicional y evadir la barrera financiera que supone exigirle a una pyme costosas implementaciones de integración con sus sistemas contables (ERP) desde el día uno.
</p>

<p align="justify">
<strong>Táctica Ejecutable para el Bodeguero (Usuario Secundario):</strong> El portal B2B eliminará los complejos flujos de "Registro de Cuenta" que suelen causar abandono en el sector corporativo. El administrador de la empresa distribuidora pre-creará las cuentas en el sistema. El bodeguero simplemente ingresará al portal utilizando su número de documento fiscal (RUC o DNI) como identificador y una contraseña temporal de un solo uso (One-Time Password), accediendo instantáneamente a su lista de precios personalizada bajo una interfaz heurísticamente idéntica a la de una aplicación de supermercado B2C.
</p>

<p align="justify">
<strong>Táctica Ejecutable para el Distribuidor (Cliente Primario):</strong> Para reducir el "tiempo de salida al mercado" (Time to Market) de la implementación, el panel de administración contará nativamente con un módulo de migración masiva. Permitiremos que el distribuidor importe su catálogo completo, niveles de stock base y lista de clientes utilizando archivos de valores separados por comas (CSV) o formatos tabulares (Excel). Esto garantiza que el distribuidor pueda procesar su primer pedido real a las pocas horas de haber adquirido la licencia SaaS.
</p>
</p>

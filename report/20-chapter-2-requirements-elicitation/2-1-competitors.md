# Capítulo II: Requirements Elicitation & Analysis

## 2.1. Competidores
<p align="justify">
El ecosistema de soluciones de software aplicadas a la gestión comercial y logística en América Latina ha experimentado un grado de maduración significativo. Sin embargo, una revisión crítica del paisaje competitivo demuestra que la oferta tecnológica padece de una severa hiperespecialización. Las plataformas dominantes tienden a enfocarse en nichos aislados: o resuelven exclusivamente la captura de la venta comercial, o se dedican estrictamente al monitoreo físico del transporte.

Para una pyme distribuidora de productos refrigerados, esta fragmentación sugiere que la digitalización del proceso completo todavía exige combinar soluciones con énfasis distintos. Por ello, el análisis se concentra en tres competidores representativos que cubren capas diferentes del problema: captura comercial B2B, gestión del transporte y monitoreo físico de la cadena de frío. El objetivo no es descalificar a estas plataformas, sino identificar con precisión qué resuelven bien, qué dejan fuera de su alcance y dónde se ubica la propuesta de Nexa dentro de ese mapa competitivo.
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
<strong>Debilidad frente a nuestro nicho:</strong> Opera en una etapa posterior del proceso comercial. Drivin interviene cuando la orden de compra ya existe en el sistema y la prioridad pasa a ser la planificación, el ruteo y la trazabilidad de la entrega. No resuelve de forma nativa la consulta de catálogo ni la captura inicial del pedido por parte del cliente comercial.
</p>

**OnTracking de RedGPS (Competencia en la Capa de Infraestructura y Telemetría)**

<p align="justify">
<strong>Perfil:</strong> Proveedor de plataformas de rastreo vehicular y monitoreo físico mediante Internet de las Cosas (IoT). Son el estándar de la industria para certificar que un camión frigorífico mantuvo la temperatura exigida durante el trayecto, enviando alertas en tiempo real si se rompe la cadena térmica.
</p>

<p align="justify">
<strong>Debilidad frente a nuestro nicho:</strong> Operan en una capa principalmente técnica de telemetría y geolocalización, sin integrar de forma nativa la lógica comercial del pedido. No gestionan catálogos, condiciones comerciales ni la interacción con el cliente que realiza la compra. Además, suelen depender de hardware físico instalado en las unidades de transporte.
</p>

### 2.1.1. Análisis competitivo (Landscape & SWOT)
<p align = "justify">

El análisis competitivo estructurado a continuación emplea una matriz de variables del mercado (Landscape) y un análisis FODA cruzado (SWOT) para evaluar nuestro posicionamiento estratégico frente a las plataformas establecidas. Las dimensiones evaluadas no solo contemplan la arquitectura de software, sino también la fricción de adopción, el mercado objetivo y el modelo de monetización; factores críticos para la supervivencia de un SaaS en el canal comercial peruano. 

</p>**Tabla 14**

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
      <td>Reducción de mermas, retrabajo y errores operativos mediante una integración más estrecha entre pedido, inventario y seguimiento.</td>
      <td>Aumento del volumen de ventas al ofrecer tiendas B2B auto gestionables para clientes minoristas.</td>
      <td>Reducción de costos logísticos de transporte y mejor cumplimiento de ventanas horarias.</td>
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
      <td>Posicionamiento dirigido a pymes que necesitan ordenar el flujo de pedidos, disminuir mermas y ganar trazabilidad operativa.</td>
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
      <td>Especialización en la intersección entre comercio B2B, inventario perecedero y seguimiento operativo dentro de un mismo flujo.</td>
      <td>Plataforma muy madura, soporte corporativo robusto y gran posicionamiento regional.</td>
      <td>Tecnología algorítmica avanzada y alta reputación en el rubro logístico.</td>
      <td>Especialización técnica profunda en lectura de datos físicos del mundo real.</td>
    </tr>
    <tr>
      <td><b>Debilidades (W)</b></td>
      <td>Marca nueva sin base instalada inicial. El MVP no incluye optimización avanzada de rutas ni conexión física con sensores (IoT).</td>
      <td>Plataforma agnóstica; no entiende de fechas de caducidad ni incompatibilidad biológica de carga.</td>
      <td>Nulo contacto con la etapa comercial. Asumen que la empresa ya tiene los pedidos ordenados antes de usar el sistema.</td>
      <td>Dependencia de hardware instalado y costos adicionales asociados al despliegue en flota.</td>
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
      <td>Resistencia al cambio en segmentos acostumbrados a canales informales y posible expansión funcional de competidores ya consolidados.</td>
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
A partir de la matriz expuesta, el equipo ha identificado cuatro implicancias estratégicas para el desarrollo del producto.
</p>

<div style="display: grid; grid-template-columns: 1fr; gap: 12px; margin: 16px 0;">
  <div style="padding: 12px 14px; border: 1px solid #dbe7ff; border-radius: 8px; background: #fcfdff;">
    <strong>1. Especialización funcional del dominio</strong><br/>
    La oportunidad principal de Nexa no está en competir por profundidad algorítmica con un TMS ni por sofisticación de hardware con una plataforma telemétrica, sino en modelar mejor la relación entre pedido, disponibilidad, rotación y seguimiento en un dominio de productos perecederos.
  </div>
  <div style="padding: 12px 14px; border: 1px solid #dbe7ff; border-radius: 8px; background: #fcfdff;">
    <strong>2. Alcance realista del MVP</strong><br/>
    El análisis también muestra un límite claro: en su primera versión, Nexa no necesita replicar todas las capacidades de ruteo avanzado o monitoreo IoT, sino ofrecer trazabilidad documental y visibilidad operativa suficientes para validar valor en el flujo principal del pedido.
  </div>
  <div style="padding: 12px 14px; border: 1px solid #dbe7ff; border-radius: 8px; background: #fcfdff;">
    <strong>3. Valor regulatorio y operativo</strong><br/>
    En un sector donde trazabilidad, control documental y conservación del producto tienen relevancia normativa, una solución que ordene información comercial y operativa puede adquirir valor no solo por eficiencia, sino también por capacidad de respuesta ante incidencias o auditorías.
  </div>
  <div style="padding: 12px 14px; border: 1px solid #dbe7ff; border-radius: 8px; background: #fcfdff;">
    <strong>4. Riesgo de adopción</strong><br/>
    La principal amenaza competitiva inmediata no proviene solo de otras plataformas, sino de la persistencia de canales informales ya aceptados por los usuarios. Por ello, la propuesta debe minimizar complejidad de uso y reducir fricción de entrada desde el primer contacto.
  </div>
</div>

<p align="justify">
En conjunto, el landscape sugiere que Nexa puede encontrar espacio si mantiene una propuesta acotada y coherente: integrar la capa comercial-operativa que hoy aparece separada entre soluciones de venta, ruteo y telemetría, sin asumir desde el inicio la profundidad funcional completa de cada una de ellas.
</p>

### 2.1.2. Estrategias y tácticas frente a competidores
<p align = "justify">
Al ingresar a un mercado donde interactúan sistemas empresariales heredados y plataformas consolidadas, el proyecto debe adoptar un criterio pragmático. La viabilidad de una primera versión no depende de replicar toda la profundidad funcional del mercado, sino de priorizar aquellas capacidades que conectan mejor con las fricciones identificadas en la investigación. A continuación, se detallan las estrategias operativas y su traducción a decisiones de producto y arquitectura.

**Estrategia de Especialización Vertical (Posicionamiento frente a Riqra)**

<p align="justify">
<strong>Objetivo Estratégico:</strong> Diferenciarse de Riqra mediante una especialización nativa en el dominio de cadena de frío, integrando lógicas de negocio que una plataforma horizontal genérica no puede replicar sin una refactorización costosa.
</p>

<p align="justify">
<strong>Táctica Ejecutable (Base de Datos y Lógica de Negocio):</strong> El esquema de la base de datos se diseñará con atributos ineludibles para la industria del frío. Mientras un e-commerce estándar maneja variables básicas (Nombre, Precio, Stock), nuestra entidad principal de "Producto" exigirá la parametrización de campos obligatorios como <code>Temperatura_Minima_Grados</code>, <code>Temperatura_Maxima_Grados</code> y <code>Vida_Util_Dias</code>.
</p>

<p align="justify">
<strong>Táctica Ejecutable (Interfaz de Usuario):</strong> En la aplicación web del cliente comercial, el flujo de pedido puede incluir validaciones orientadas a compatibilidad básica de carga y a condiciones de conservación, de modo que el error se detecte antes de que el pedido llegue a preparación.
</p>

**Estrategia de adopción incremental (Posicionamiento frente a Drivin y RedGPS)**

<p align="justify">
<strong>Objetivo Estratégico:</strong> Evitar competir en la etapa inicial con la profundidad técnica de plataformas de ruteo avanzado o de infraestructura IoT, y concentrarse primero en la capa transaccional y operativa donde hoy persisten más vacíos.
</p>

<p align="justify">
<strong>Táctica Ejecutable (Fase 1 — MVP):</strong> La primera fase se concentra en ordenar la recepción del pedido, la validación comercial, la disponibilidad y el seguimiento mínimo del despacho. El objetivo es que la información de intención de compra deje de depender exclusivamente de mensajes dispersos y pase a una estructura operativa trazable.
</p>

<p align="justify">
<strong>Táctica Ejecutable (Fase 2 — Roadmap Tecnológico):</strong> Una vez validado el flujo principal, el producto puede evolucionar mediante integraciones con TMS o proveedores de monitoreo, apoyándose en una arquitectura preparada para intercambiar eventos y datos con servicios externos.
</p>

**Estrategia de adopción con baja fricción tecnológica**

<p align="justify">
<strong>Objetivo Estratégico:</strong> Reducir la resistencia al cambio del usuario habitual y evitar que la adopción inicial dependa de integraciones complejas o despliegues costosos desde el primer día.
</p>

<p align="justify">
<strong>Táctica Ejecutable para el cliente comercial:</strong> El portal B2B puede apoyarse en flujos de acceso simples, con cuentas preconfiguradas por la distribuidora y una experiencia de ingreso que reduzca pasos innecesarios. La meta es que el usuario empiece a operar rápido y encuentre desde el inicio su lista de precios y catálogo pertinente.
</p>

<p align="justify">
<strong>Táctica Ejecutable para el distribuidor:</strong> Para acortar el tiempo de puesta en marcha, el panel de administración puede incluir mecanismos de carga masiva de catálogo, stock base y clientes mediante formatos tabulares. Esto reduce esfuerzo inicial y facilita pruebas tempranas del flujo real.
</p>
</p>

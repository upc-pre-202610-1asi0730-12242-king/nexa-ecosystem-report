### 1.3. Segmentos Objetivos

<p align="justify">
La solución Nexa se organiza sobre tres segmentos objetivos que recorren el flujo principal del pedido B2B refrigerado: <strong>S1</strong> para la captura comercial, <strong>S2</strong> para el abastecimiento del cliente comercial y <strong>S3</strong> para la ejecución y cierre de la entrega. Esta taxonomía se mantiene estable en todo el informe y sirve como base para personas, journeys, empathy maps, user stories, backlog y arquitectura del producto.
</p>

<p align="justify">
El sitio público utiliza agrupaciones comerciales como distribuidores, importadores y operadores de cámaras frías para comunicar la propuesta de valor, pero esas agrupaciones no reemplazan ni amplían la segmentación oficial del proyecto. La estructura de investigación y de diseño del producto sigue trabajando únicamente con S1, S2 y S3.
</p>

<p align="justify">
La caracterización presentada en este capítulo combina contexto sectorial, datos de mercado e hipótesis operativas iniciales. Su función es justificar por qué cada segmento resulta relevante dentro del dominio; el Capítulo 2 profundiza luego cómo esas características aparecen en comportamientos, pain points y expectativas concretas de uso.
</p>

*Resumen de segmentos operativos primarios*

| **Segmento** | **Arquetipo canónico** | **Rol en el ecosistema** | **Necesidad dominante** | **Valor esperado de Nexa** |
|--------------|-------------------------|---------------------------|--------------------------|-----------------------------|
| **S1** | Valeria, coordinadora comercial / mercaderista | Recibe, interpreta, valida y canaliza pedidos hacia la operación | Reducir retrabajo, ambigüedad y pasos manuales en la toma del pedido | Flujo de captura estructurado, visibilidad inmediata de stock y menor dependencia de WhatsApp |
| **S2** | Hilda, cliente comercial B2B / administradora de minimarket | Compra, repone stock y necesita predictibilidad para atender su negocio | Abastecerse con autonomía, certeza de disponibilidad y seguimiento confiable | Catálogo claro, pedido autónomo y entregas más previsibles |
| **S3** | Pedro, chofer de reparto / despacho | Ejecuta la entrega física y sufre interrupciones, demoras y problemas de cierre | Cumplir la ruta con menos interrupciones y evidencia clara de entrega | Seguimiento compartido, reducción de llamadas y cierre digital del despacho |

Los segmentos operativos primarios son la referencia oficial para personas, journeys, empathy maps, user stories y backlog. Elaboración propia.

> **Organización del análisis**
>
> - **Caracterización del segmento:** reúne evidencia demográfica, ocupacional y tecnológica para justificar su relevancia en el dominio.
> - **Implicancias de diseño:** traduce esa caracterización a valor esperado, decisiones de UX y prioridad dentro del MVP.
> - **Sentido metodológico:** ambos planos describen al mismo actor, pero con finalidades distintas dentro del informe.

#### Caracterización demográfica y estadística de los segmentos

<p align="justify">
La siguiente caracterización complementa los perfiles cualitativos con evidencia cuantitativa del mercado, sustentando la representatividad de cada segmento en el contexto de la distribución B2B de productos refrigerados y congelados en el Perú.
</p>

<p align="justify">
En consecuencia, cada segmento se describe en cuatro planos complementarios: un plano demográfico y ocupacional, que permite ubicar al actor dentro del ecosistema; un plano conductual, que explica cómo opera hoy; un plano tecnológico, que anticipa barreras y condiciones de adopción; y un plano de valor esperado, que conecta el perfil del usuario con la propuesta del producto. Esta estructura evita que el análisis se limite a datos demográficos aislados y permite que la segmentación sirva como insumo real para decisiones de diseño y priorización.
</p>

**Segmento 1 (S1): Coordinación comercial y captura del pedido**

> **Ficha rápida del segmento**
>
> - **Actor principal:** coordinación comercial, ventas internas, mercaderistas y personal que traduce pedidos a operación.
> - **Contexto dominante:** presión por responder rápido sin perder control sobre stock, crédito y condiciones comerciales.
> - **Riesgo de adopción:** el usuario ya usa herramientas digitales, pero en forma dispersa y con alta dependencia de validaciones manuales.
> - **Valor esperado:** una captura estructurada que reduzca retrabajo y evite errores desde el origen del pedido.

<p align="justify">
El personal dedicado a la coordinación comercial y captura de pedidos en empresas distribuidoras de alimentos en el Perú se concentra predominantemente en el rango etario de 25 a 40 años, con acceso habitual a dispositivos móviles y conectividad básica. Este perfil corresponde a trabajadores del sector comercio mayorista y distribución, categoría cuya fuerza laboral femenina representa una proporción significativa en roles administrativos y de ventas internas (Instituto Nacional de Estadística e Informática [INEI], 2023). El contexto tecnológico del segmento es determinante: la evidencia muestra que el canal informal (WhatsApp, llamadas) sigue siendo la herramienta principal de coordinación en pequeñas y medianas empresas distribuidoras, pese a la disponibilidad de alternativas digitales (Lucky-Xplora, 2022). Esto posiciona a este segmento como el punto de mayor fricción en el flujo del pedido y, al mismo tiempo, como el de mayor impacto potencial ante la adopción de una plataforma estructurada.
</p>

<p align="justify">
Desde una perspectiva conductual, este segmento opera en tensión permanente entre velocidad y control. Necesita responder con inmediatez al cliente, pero al mismo tiempo debe validar información comercial y operativa que rara vez está concentrada en un único entorno. Esa dualidad explica por qué el comportamiento digital del segmento no puede analizarse solo como uso o no uso de tecnología: en la práctica, la coordinación comercial ya utiliza herramientas digitales, pero lo hace en forma fragmentada, alternando entre mensajería, hojas de cálculo, ERP y validaciones manuales con otras áreas. El problema, por tanto, no es la ausencia total de tecnología, sino la falta de una experiencia integrada que reduzca fricción sin ralentizar la respuesta.
</p>

**Segmento 2 (S2): Cliente comercial B2B y abastecimiento recurrente**

> **Ficha rápida del segmento**
>
> - **Actor principal:** bodegas, minimarkets, pequeños distribuidores y negocios del canal HORECA que compran para sostener su operación.
> - **Contexto dominante:** alta sensibilidad a la continuidad del abastecimiento y baja tolerancia a demoras o incertidumbre de stock.
> - **Riesgo de adopción:** la madurez digital del segmento es todavía incipiente y depende de experiencias simples y confiables.
> - **Valor esperado:** comprar con claridad, autonomía y seguimiento sin perder respaldo humano cuando haga falta.

<p align="justify">
El segmento de clientes comerciales B2B del canal tradicional peruano incluye bodegas, minimarkets, distribuidores pequeños y establecimientos del canal HORECA. En conjunto, este universo representa aproximadamente 414,000 bodegas activas a nivel nacional, con una concentración mayor en Lima Metropolitana (Asociación de Bodegueros del Perú, 2022). En términos de madurez digital, el estudio de madurez digital del canal tradicional elaborado por Lucky-Xplora reporta que solo alrededor del 28% de bodegas utiliza algún aplicativo para gestionar tareas del negocio, mientras que el 83% se ubica todavía en nivel "principiante" de transformación digital (Lucky-Xplora, 2022). Complementariamente, un estudio sobre pagos digitales en pequeños comercios muestra que la adopción de herramientas digitales es incipiente y depende de la simplicidad percibida de la herramienta (Taipe Quispe, 2025). Esto confirma que la adopción del portal B2B de Nexa está condicionada a una experiencia de uso sin fricción que equipare o supere la velocidad percibida del canal informal.
</p>

<p align="justify">
En términos de comportamiento de compra, este segmento no evalúa la tecnología como un fin en sí mismo, sino como un medio para sostener la continuidad operativa del negocio. El cliente comercial B2B compra para no quedarse sin stock, para mantener margen y para evitar pérdida de ventas frente a sus propios clientes. En consecuencia, la herramienta digital solo será percibida como valiosa si reduce incertidumbre y tiempo de coordinación. Una interfaz extensa, lenta o impersonal puede resultar técnicamente completa y, aun así, fracasar en adopción si no se aproxima a la inmediatez y claridad operativa que hoy el usuario asocia con el canal informal.
</p>

*Madurez Digital del Canal Tradicional en el Perú*

```mermaid
pie title Uso de Aplicativos en Bodegas (Canal Tradicional)
    "Canal Tradicional Digitalizado (28%)" : 28
    "Canal Tradicional Analógico (72%)" : 72
```

Fuente: Elaboración propia en base a datos de Lucky-Xplora (2022).

**Segmento 3 (S3): Despacho, transporte y cierre de entrega**

> **Ficha rápida del segmento**
>
> - **Actor principal:** choferes de reparto, personal de despacho y actores involucrados en la ejecución física de la entrega.
> - **Contexto dominante:** rutas urbanas exigentes, cierre bajo presión y dependencia de información generada por áreas previas.
> - **Riesgo de adopción:** el valor de la tecnología se juzga por su capacidad de reducir interrupciones en ruta, no por sofisticación funcional.
> - **Valor esperado:** menos llamadas, ETA más clara y evidencia simple de entrega para evitar reclamos posteriores.

<p align="justify">
El personal de reparto y despacho en empresas distribuidoras de alimentos refrigerados opera en rutas urbanas de alta rotación, con jornadas que pueden extenderse entre 8 y 12 horas diarias. Según datos del sector transporte y almacenamiento en el Perú, este segmento tiene una participación mayoritariamente masculina y se concentra en el rango etario de 25 a 45 años (INEI, 2023). Desde una perspectiva operativa, la evidencia recogida en el needfinding y en estudios de trazabilidad en cadena de frío indica que las rupturas de temperatura durante el transporte, como las 64 rupturas registradas en una sola microred de salud en un año (Bravo De la Cruz et al., 2025), son en parte atribuibles a la descoordinación entre el envío del pedido, la ruta física y la notificación al punto de entrega. El segmento de despacho no adopta tecnología por iniciativa propia, sino cuando esta reduce directamente las interrupciones durante la ruta: llamadas, esperas en cliente y reclamos al cierre de entrega.
</p>

<p align="justify">
Este rasgo es clave para la lógica del producto. A diferencia de otros actores del sistema, el transportista no mide el valor de la solución por la riqueza del dashboard o por la sofisticación funcional, sino por su capacidad de simplificar la ejecución física del trabajo. Si la herramienta reduce llamadas, comunica mejor la ETA, ayuda a llegar a puntos de entrega preparados y facilita el cierre con evidencia, entonces el segmento percibe utilidad. Si añade pasos, formularios extensos o dependencias innecesarias durante la ruta, la adopción tenderá a degradarse, incluso cuando la solución sea útil para el resto del negocio.
</p>

#### Implicancias de diseño por segmento

<p align="justify">
La siguiente subsección traslada la caracterización previa al terreno de producto. El foco deja de estar en describir al actor dentro del mercado y pasa a centrarse en qué espera del sistema, qué fricciones concentra y qué decisiones de diseño deben priorizarse para que el MVP resulte útil.
</p>

#### S1. Implicancias de diseño: Coordinación comercial y captura del pedido

<p align="justify">
Este segmento agrupa al personal que recibe pedidos desde múltiples canales, valida productos, consulta stock, corrige inconsistencias y traduce la intención del cliente a un formato operable por la empresa. Incluye mercaderistas, coordinadoras comerciales, ventas internas y personal que trabaja entre clientes, facturación, almacén y despacho. El arquetipo canónico es <strong>Valeria</strong>, porque sintetiza la fricción cotidiana del proceso: mensajes ambiguos, doble validación, presión por responder rápido y necesidad de trabajar desde herramientas simples.
</p>

<p align="justify">
Su valor esperado no está en funciones complejas, sino en la reducción de pasos innecesarios. Nexa debe ayudarle a identificar rápidamente al cliente, cargar sus condiciones comerciales, consultar disponibilidad real, registrar el pedido sin reinterpretaciones y dejar trazabilidad visible para el resto de áreas. Si este segmento no percibe simplicidad y velocidad, el producto no resuelve el núcleo del problema.
</p>

<p align="justify">
Desde el punto de vista del diseño, Valeria representa al usuario que más claramente tensiona usabilidad y estructura. Necesita una experiencia suficientemente guiada para evitar errores, pero no tan rígida que le impida operar al ritmo que exige la atención comercial. Por eso este arquetipo es central en la definición del MVP: si la solución no funciona para quien captura y valida el pedido en condiciones de presión operativa, el resto del ecosistema tampoco podrá beneficiarse de una información mejor estructurada.
</p>

> **Necesidades principales**
>
> - Recibir pedidos en un flujo estructurado y consistente.
> - Validar stock, crédito y condiciones comerciales sin saltar entre varias herramientas.
> - Registrar pedidos desde celular, tablet o escritorio sin retrabajo posterior.
> - Tener evidencia clara del estado del pedido para responder al cliente sin depender de llamadas constantes.
>
> **Puntos de dolor**
>
> - Los pedidos llegan por audios, listas o mensajes libres y requieren interpretación manual.
> - La disponibilidad real de stock no siempre coincide con lo que muestran los sistemas existentes.
> - La revisión de morosidad o crédito sigue siendo manual y lenta.
> - Los errores de digitación y de especificaciones terminan trasladándose a almacén, despacho y devoluciones.

#### S2. Implicancias de diseño: Cliente comercial B2B y abastecimiento recurrente

<p align="justify">
Este segmento representa a los negocios que dependen del distribuidor para mantener abastecida su operación, entre ellos minimarkets, bodegas, pequeños mayoristas y cuentas del canal HORECA. El arquetipo canónico es <strong>Hilda</strong>, sintetizada como administradora de minimarket que compra con frecuencia, necesita rapidez y no puede detener su negocio para perseguir confirmaciones o esperar respuestas por WhatsApp.
</p>

<p align="justify">
Desde su perspectiva, el problema no es “usar más tecnología”, sino comprar con menos incertidumbre. Nexa debe permitirle revisar un catálogo comprensible, conocer disponibilidad y condiciones comerciales, registrar pedidos por sí misma, recibir confirmación clara y entender si la entrega llegará a tiempo. La adopción depende de que la herramienta mantenga la inmediatez esperada y complemente la relación humana cuando se necesite soporte.
</p>

<p align="justify">
Hilda también es el segmento que más claramente obliga al proyecto a equilibrar autoservicio y acompañamiento. Un portal completamente deshumanizado puede reducir costos operativos para la distribuidora, pero no necesariamente aumentar adopción en un contexto donde la confianza comercial sigue siendo relacional. Por ello, el valor esperado para este perfil no consiste solo en “digitalizar el pedido”, sino en transformar la experiencia de abastecimiento sin romper la sensación de respaldo que hoy provee la comunicación directa con el vendedor o coordinador comercial.
</p>

> **Necesidades principales**
>
> - Consultar productos, formatos y fichas técnicas sin esperar respuesta manual.
> - Saber si el producto está disponible antes de confirmar el pedido.
> - Conocer el estado del pedido y una ventana estimada de entrega.
> - Resolver dudas o incidencias sin perder el componente humano de la relación comercial.
>
> **Puntos de dolor**
>
> - La compra por llamada o WhatsApp no deja trazabilidad clara del pedido.
> - La falta de disponibilidad o los cambios de último minuto afectan ventas y caja.
> - Las demoras de entrega generan desorden en el local y pérdida de confianza.
> - La complejidad excesiva haría que el usuario vuelva al canal informal.

#### S3. Implicancias de diseño: Despacho, transporte y cierre de entrega

<p align="justify">
Este segmento reúne a quienes ejecutan la entrega física y cargan con las consecuencias de una mala coordinación previa. El arquetipo canónico es <strong>Pedro</strong>, chofer de reparto que necesita avanzar en ruta sin responder llamadas constantes, llegar con información correcta y cerrar la entrega con evidencia suficiente para evitar reclamos posteriores.
</p>

<p align="justify">
Este segmento es esencial porque representa el punto donde la promesa comercial se vuelve servicio real. Nexa debe permitirle contar con estados claros, visibilidad compartida de la entrega, alertas tempranas al cliente y una prueba de entrega que reduzca el uso de papeles y las discusiones al cierre.
</p>

<p align="justify">
Metodológicamente, Pedro cumple una función de cierre dentro de la segmentación: evita que el proyecto interprete el problema solo desde la captura del pedido o desde la compra del cliente, y obliga a considerar la ejecución física como parte del valor. En otras palabras, este segmento recuerda que la propuesta de Nexa no se valida solo cuando el pedido es registrado, sino cuando la coordinación generada por el sistema se traduce en una entrega más predecible, trazable y defendible frente a incidencias.
</p>

> **Necesidades principales**
>
> - Ejecutar la ruta con menos llamadas e interrupciones.
> - Llegar a puntos de entrega mejor preparados para recibir la mercadería.
> - Registrar el despacho y la entrega con evidencia simple y confiable.
> - Disminuir reclamos injustos provocados por errores previos del flujo comercial.
>
> **Puntos de dolor**
>
> - El cliente muchas veces no está listo para recibir ni pagar cuando el camión llega.
> - Los retrasos se comunican tarde y generan más llamadas durante la conducción.
> - Las guías físicas y el cierre manual aumentan el riesgo de pérdida o inconsistencia.
> - El transportista termina cargando reclamos originados por falta de stock o errores de pedido.

<p align="justify">
Las restricciones de logística, abastecimiento y operación se consideran contexto del dominio para delimitar reglas de negocio, condiciones de inventario, cierre de entrega y prioridades de evolución. Sin embargo, ese contexto no altera la segmentación del proyecto: la validación de uso y de valor del MVP sigue organizada únicamente en torno a S1, S2 y S3.
</p>

#### Agrupaciones comerciales del sitio público

<p align="justify">
El landing page utiliza una agrupación comercial adicional para orientar la propuesta de valor hacia tipos de empresa compradoras del producto. Esta organización no sustituye a S1, S2 y S3; solo ordena el discurso público del sitio para adquisición y posicionamiento comercial.
</p>

*Agrupaciones comerciales del sitio público*

| **Agrupación comercial del sitio** | **Rol comercial** | **Relación con los segmentos operativos** | **Nivel de prioridad** |
|----------------------------------|-------------------|--------------------------------------------|------------------------|
| **Distribuidores refrigerados** | Cliente pagador principal de la plataforma SaaS | Conecta directamente con Valeria, Hilda y Pedro a lo largo del flujo del pedido | Principal |
| **Importadores y mayoristas** | Segmento adyacente con problemas similares de catálogo, stock y coordinación | Se relaciona con los mismos puntos de fricción que S1, S2 y S3 en un contexto comercial más amplio | Adyacente |
| **Operadores de cámaras frías** | Extensión estratégica del dominio hacia almacenamiento y trazabilidad | Se relaciona con necesidades de inventario, vencimientos y control de cadena de frío | Expansión |

<p align="justify">
Esta organización permite mantener coherencia entre investigación y comunicación comercial: el informe trabaja con tres arquetipos operativos concretos, mientras que el sitio público presenta el mismo problema en términos comprensibles para los tipos de empresa que podrían comprar la solución.
</p>

## 2.3. Needfinding

Los artefactos de needfinding que se presentan a continuación siguen la taxonomía canónica del proyecto definida desde el Capítulo I: **Segmento 1** para vendedoras y coordinación comercial, **Segmento 2** para jefatura logística y coordinación operativa, y **Segmento 3** para compradores comerciales B2B mayoristas y minoristas. Esta decisión es deliberada: el needfinding no replica literalmente los bloques de entrevista, sino que reorganiza la evidencia en función de los tres actores que estructuran el MVP.

La construcción de este bloque parte de tres insumos previos. El primero es el análisis de entrevistas del apartado 2.2, que identifica patrones de comportamiento, fricciones recurrentes y expectativas de adopción. El segundo es el análisis competitivo del apartado 2.1, que muestra que las soluciones existentes resuelven fragmentos del problema, pero no articulan con suficiente claridad la continuidad entre captura comercial, abastecimiento del cliente y cierre de entrega. El tercero es la lógica del dominio modelada en el proyecto, que obliga a representar no solo quién usa el sistema, sino en qué momento del flujo su intervención resulta crítica.

Por ello, los artefactos de needfinding no deben interpretarse como piezas visuales aisladas. Su función es traducir evidencia cualitativa en criterios de diseño: quién necesita autonomía, quién necesita visibilidad, quién necesita rapidez, quién necesita trazabilidad y en qué punto del recorrido cada una de esas necesidades se vuelve más sensible. Bajo ese enfoque, el valor del needfinding no está únicamente en mostrar personas, tareas o journeys, sino en demostrar cómo esas representaciones ayudan a delimitar el alcance del MVP y a justificar decisiones posteriores de backlog, arquitectura y experiencia de usuario.

> **Criterio de construcción de arquetipos**
>
> - **Valeria (Segmento 1):** sintetiza patrones compartidos por el personal de coordinación comercial y vendedoras entrevistadas.
> - **Hilda (Segmento 3):** sintetiza patrones del comprador comercial B2B y no corresponde a una única entrevistada individual.
> - **Pedro (Segmento 2):** sintetiza el rol de coordinación logística y cierre operativo a partir de hallazgos sobre trazabilidad, incidencias, preparación y despacho observados en la investigación.

### 2.3.1. User Personas

Las user personas no sustituyen a los entrevistados reales; funcionan como síntesis operativas de patrones repetidos en la investigación. Por ello, cada persona concentra conductas, necesidades y fricciones compartidas que luego se traducen en decisiones de diseño, tareas y journeys.

| Persona | Base empírica principal | Patrones sintetizados | Función dentro del MVP |
| --- | --- | --- | --- |
| **Valeria (Segmento 1)** | Entrevistas a vendedoras y coordinación comercial | Retrabajo, validaciones paralelas, dependencia de WhatsApp, presión por responder rápido | Representar el punto donde el pedido nace y donde más se degrada la calidad de la información |
| **Hilda (Segmento 3)** | Entrevistas a compradores comerciales B2B y contexto de adopción digital del canal tradicional | Necesidad de disponibilidad clara, seguimiento confiable, soporte humano y baja tolerancia a la complejidad | Representar la demanda que compra, espera previsibilidad y define la adopción del portal |
| **Pedro (Segmento 2)** | Hallazgos de coordinación logística, trazabilidad, incidencias y cierre operativo observados en la investigación | Necesidad de visibilidad operativa, control de incidencias, trazabilidad del despacho y cierre con evidencia | Representar la coordinación logística que transforma la solicitud comercial en cumplimiento operativo |

La tabla resume la relación entre evidencia cualitativa, arquetipo sintetizado y función de diseño. Elaboración propia.

*User Persona — Segmento 1: Valeria Sánchez*
![User Persona 1](../assets/images/user-persona-1.png)
Representación del arquetipo de vendedoras y coordinación comercial, enfocado en reducir la carga administrativa y el retrabajo en la captura del pedido. Elaboración propia.

*User Persona — Segmento 3: Hilda*
![User Persona 2](../assets/images/user-persona-2.png)
Representación sintética del arquetipo de comprador comercial B2B, construida a partir de entrevistas a compradores minoristas y mayoristas, más evidencia de adopción digital del canal tradicional. Elaboración propia.

*User Persona — Segmento 2: Pedro*
![User Persona 3](../assets/images/user-persona-3.png)
Representación sintética del arquetipo de coordinación logística y operativa, enfocada en el control del cumplimiento, la visibilidad del despacho y el cierre con evidencia. Su construcción se apoya en hallazgos de trazabilidad, incidencias y coordinación operativa dentro del dominio. Elaboración propia.

En conjunto, las tres personas muestran una progresión coherente del mismo problema. Valeria evidencia cómo la información del pedido nace fragmentada; Hilda expresa la incertidumbre que ese desorden produce en el cliente comercial; y Pedro representa el punto donde la falta de coordinación se vuelve retraso, reclamo o cierre débil de la entrega. Esta continuidad resulta importante porque permite que los artefactos del capítulo no describan actores desconectados, sino tres posiciones sobre una misma historia operativa.

### Soporte de Variables Adicionales para User Personas

Para dar soporte empírico a la construcción de los User Personas y asegurar su viabilidad técnica, a continuación se detallan las variables adicionales obligatorias identificadas durante las entrevistas, que condicionan el comportamiento y adopción tecnológica de cada segmento:

| Segmento / Persona | Dispositivos / Browsers de uso frecuente | Marcas de uso cotidiano | Influencias y canales de adopción |
| --- | --- | --- | --- |
| **Segmento 1: Valeria** (Vendedoras y coordinación comercial) | Laptops corporativas (Windows), Smartphones Android (Samsung, Xiaomi). Browser: Google Chrome. | WhatsApp Business, Excel, Fontana (ERP heredado), Outlook. | Colegas de ventas, supervisores comerciales, urgencia del cliente. Buscan agilidad sobre estética. |
| **Segmento 3: Hilda** (Compradores B2B) | Smartphones Android (Gama media). Poco uso de desktop. Browser: Chrome Mobile. | WhatsApp, Yape, Plin, Facebook, plataformas de bancos locales (BCP, BBVA). | Promotores de venta, recomendaciones de otros bodegueros, desconfianza hacia apps complejas. |
| **Segmento 2: Pedro** (Jefatura logística y coordinación operativa) | Laptops de oficina, tablets o smartphones corporativos. Uso frecuente de sistemas internos y herramientas de coordinación. | Google Maps, Waze, WhatsApp, sistemas simples de GPS vehicular, hojas de cálculo o ERP básico. | Jefes de almacén, supervisores operativos. Adopción motivada si reduce incidencias, mejora trazabilidad y agiliza coordinación. |

Estas variables confirman que la plataforma web (Nexa) debe estar fuertemente optimizada para **Google Chrome** y priorizar un diseño **Mobile First**, dado el alto uso de smartphones en el Segmento 3 y la rotación en campo del Segmento 1.

### 2.3.2. User Task Matrix

La matriz de tareas resume qué actividades concentran mayor frecuencia e importancia relativa para cada segmento canónico. Su función no es enumerar funcionalidades del sistema, sino identificar qué tareas del trabajo real deben ser mejor soportadas por el producto para reducir fricción y sostener adopción.

| Tareas Identificadas (Tasks) | Segmento 1: Valeria (Frecuencia) | Segmento 1: Valeria (Importancia) | Segmento 3: Hilda (Frecuencia) | Segmento 3: Hilda (Importancia) | Segmento 2: Pedro (Frecuencia) | Segmento 2: Pedro (Importancia) |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| **Evaluar necesidades y solicitar mercadería**| N/A | N/A | Alta | Alta | N/A | N/A |
|**Recibir, interpretar y transcribir pedidos**| Alta | Alta | N/A | N/A | N/A | N/A |
|**Consultar/Validar disponibilidad de stock**| Alta | Alta | Alta | Alta | Alta | Alta |
|**Preparar espacio físico y dinero para recepción**| N/A | N/A | Alta | Alta | N/A | N/A |
|**Revisar y coordinar la preparación y despacho**| N/A | N/A | N/A | N/A | Alta | Alta |
|**Coordinar y comunicar el estado/horario de la entrega**| Alta | Alta | Alta | Alta | Alta | Alta |
|**Supervisar entrega y registrar incidencias**| N/A | N/A | N/A | N/A | Alta | Alta |
|**Validar guías/facturas y confirmar cierre de entrega**| Media | Alta | Alta | Alta | Alta | Alta |
|**Gestionar reclamos por errores o devoluciones** | Media | Alta | Baja | Alta | Alta | Alta |

La lectura de la matriz deja tres prioridades claras. En el Segmento 1 dominan la captura, validación y seguimiento del pedido; en el Segmento 3 destacan la consulta de disponibilidad, el abastecimiento y la confirmación de entrega; y en el Segmento 2 pesan la coordinación de preparación y despacho, la comunicación del estado y el cierre con evidencia. Esta distribución refuerza que el MVP debe priorizar continuidad entre segmentos, más que resolver cada tarea como si perteneciera a módulos aislados.

También se observan dos coincidencias transversales relevantes. La primera es que **consultar o validar disponibilidad** aparece como tarea de alta importancia en los tres segmentos, lo que confirma que el stock visible es una variable crítica tanto para la coordinación interna como para la confianza del comprador. La segunda es que **coordinar y comunicar el estado de la entrega** tiene alta frecuencia e importancia en los tres segmentos, lo que justifica que el seguimiento no se trate como un módulo accesorio, sino como una capacidad compartida del sistema.

Las diferencias también son útiles para delimitar alcance. El Segmento 1 concentra tareas de interpretación y estructuración de información; el Segmento 3 concentra tareas de abastecimiento y recepción; y el Segmento 2 concentra tareas de coordinación, validación operativa y cierre. Esta separación ayuda a evitar un error común en proyectos de software: intentar diseñar una sola experiencia homogénea para actores que participan en momentos distintos del flujo y con criterios de éxito también distintos.

### 2.3.3. User Journey Mapping

Los journey maps modelan la situación *as-is* de cada segmento. Su valor analítico está en visibilizar dónde se concentran esperas, ambigüedades, dependencias manuales e interrupciones que después se transforman en oportunidades de diseño.

Leídos en conjunto, los tres journeys permiten reconstruir el recorrido completo del pedido desde perspectivas complementarias. El journey del Segmento 1 muestra el desgaste que produce convertir mensajes ambiguos en pedidos operables; el del Segmento 3 expone la ansiedad del comprador cuando no puede saber con certeza qué recibirá ni cuándo llegará; y el del Segmento 2 muestra cómo la falta de coordinación previa se traslada a la preparación, al despacho y al cierre con evidencia del servicio.

*Journey Map — Segmento 1: Coordinación Comercial*
![Journey Map 1](../assets/images/journey-map-1.png)
Mapeo del proceso de captura y gestión de pedidos, identificando puntos de dolor en la transcripción manual. Elaboración propia.

*Journey Map — Segmento 2: Cliente Comercial B2B*
![Journey Map 2](../assets/images/journey-map-2.png)
Mapeo de la experiencia de abastecimiento del cliente, destacando la incertidumbre en el seguimiento de entrega. Elaboración propia.

*Journey Map — Segmento 3: Despacho y Entrega*
![Journey Map 3](../assets/images/journey-map-3.png)
Mapeo de la ruta logística, enfatizando los cuellos de botella en la comunicación de incidencias. Elaboración propia.

El principal valor del bloque no está en describir tres trayectos separados, sino en demostrar que el punto de dolor cambia de forma pero no de origen. En el Segmento 1 el problema aparece como ambigüedad y retrabajo; en el Segmento 3 como opacidad del abastecimiento e incertidumbre; y en el Segmento 2 como incidencias, demoras y cierre sin evidencia suficiente. Dicho de otro modo, los journeys confirman que el problema central no es una sola pantalla mal resuelta, sino una cadena de decisiones y validaciones que hoy pierde continuidad entre actores.

Esta lectura también deja una implicancia directa para diseño: el MVP necesita mejorar no solo la captura del pedido, sino también los momentos de transición entre estados. Si el sistema estructura bien el pedido, pero no comunica con claridad su confirmación, preparación, despacho o entrega, el valor percibido seguirá fragmentado. Por eso los journeys sostienen la prioridad de estados visibles, historial del pedido, confirmación clara y trazabilidad mínima del cierre.

### 2.3.4. As-Is Scenario Map

El **As-Is Scenario Map** sintetiza cómo ocurre hoy el flujo completo de un pedido en el dominio B2B de distribución refrigerada de Nexa (quesos, lácteos, charcutería y otros perecederos en cadena de frío). Su propósito no es describir la solución futura, sino dejar explícito el estado actual, con sus acciones reales, sus dolores y sus oportunidades de diseño. Mantiene el alcance honesto de AV1: la plataforma Nexa aún no está desplegada de forma transaccional; lo que se documenta aquí es el mundo *tal cual opera hoy*, antes de Nexa.

El recorrido se estructura en seis etapas operativas, alineadas con los tres segmentos canónicos del producto (Segmento 1: coordinación comercial y captura, Segmento 2: jefatura logística y coordinación operativa, Segmento 3: compradores comerciales B2B).

| Etapa (As-Is) | Actores | Acciones actuales | Pain points reales | Emociones / Fricciones | Oportunidades de diseño |
|---|---|---|---|---|---|
| **1. Necesidad y reabastecimiento** | Segmento 3 (Compradores B2B) | Revisa stock propio, estima rotación, arma lista mental o en papel, consulta por WhatsApp/llamada | Catálogo desactualizado, sin precios ni disponibilidad visible, sin histórico de compras | Incertidumbre, urgencia, dependencia del vendedor | Catálogo vivo con precios, disponibilidad y sugerencias FEFO por cliente |
| **2. Captura del pedido** | Segmento 1 (Coordinación comercial), Segmento 3 | Pedido entra por WhatsApp, audio, foto de lista o llamada; Segmento 1 transcribe al ERP/Excel | Transcripción manual, ambigüedad de códigos, doble digitación, stock no confirmado en tiempo real | Presión, retrabajo, miedo a equivocarse | Formulario estructurado con validación de SKU, precio, stock y crédito en un solo paso |
| **3. Validación de stock, crédito y FEFO** | Segmento 1, Segmento 2 (Jefatura logística) | Segmento 1 consulta stock en ERP y por teléfono a almacén; revisa crédito en módulo separado; Segmento 2 confirma por lote/vencimiento | Stock desactualizado en ERP, crédito fragmentado, rotación FEFO/FIFO coordinada verbalmente | Desconfianza del sistema, interrupciones constantes | Vista única de stock real, crédito disponible y lotes priorizados por vencimiento |
| **4. Preparación y picking en almacén** | Segmento 2 (Almacén, supervisor) | Se imprime guía, se arman cajas manualmente, se valida visualmente temperatura y fecha | Errores de picking, lote incorrecto, ruptura de cadena de frío no registrada, productos próximos a vencer mezclados con nuevos | Estrés por tiempo, reclamos posteriores, mermas | Lista de picking con lote/vencimiento sugerido (FEFO) y checklist de temperatura |
| **5. Despacho y tránsito** | Segmento 2 (Coordinación de despacho) | Cargan vehículo, salen con guía física, coordinan ruta con Maps/Waze; cliente llama para saber ETA | Sin ETA visible para cliente, sin trazabilidad de temperatura en ruta, reclamos por demoras, llamadas interrumpen al conductor | Cansancio, llamadas invasivas, ansiedad del cliente | ETA compartido, seguimiento de ruta ligero y registro mínimo de temperatura |
| **6. Entrega y cierre** | Segmento 2, Segmento 3 | Descarga, conteo manual, firma en guía física; reclamos posteriores por cantidades o vencimientos | Cierre sin evidencia digital, disputas difíciles de resolver, trazabilidad posterior casi nula | Frustración, desconfianza, reclamos post-entrega | Prueba de entrega digital (POD) con firma, foto y temperatura; cierre trazable |

La lectura horizontal del mapa deja explícitos los dolores estructurales del dominio en su estado actual: pedidos por WhatsApp/llamada, catálogo desactualizado, visibilidad limitada de stock, coordinación manual, errores de picking/preparación, seguimiento débil de despacho, problemas de rotación FEFO/FIFO, riesgo de vencimiento y trazabilidad casi inexistente entre áreas. Estos puntos no se presentan como funciones implementadas de Nexa en AV1, sino como el mapa de oportunidades que el producto pretende atacar por incrementos, empezando por la captura estructurada del pedido y la visibilidad de estado entre el Segmento 1, el Segmento 2 y el Segmento 3.

### 2.3.5. Empathy Mapping

Los empathy maps complementan la lectura operativa con variables de percepción, confianza, frustración y expectativa. Este nivel resulta importante porque la adopción del producto no dependerá solo de eficiencia funcional, sino también de si cada segmento siente que el sistema le reduce carga, incertidumbre o exposición al error.

En el Segmento 1, el empathy map concentra emociones ligadas a presión, urgencia y desgaste por duplicación de tareas; en el Segmento 3, predominan la desconfianza frente a la opacidad del abastecimiento y la necesidad de respaldo humano; y en el Segmento 2, la carga emocional se asocia a incidencias, reclamos y falta de evidencia al cierre operativo. Estas diferencias son útiles porque muestran que la adopción no depende de un único argumento de valor para todos los actores.

*Empathy Map — Segmento 1: Coordinación Comercial*
![Empathy Map 1](../assets/images/empathy-map-1.png)
Análisis de expectativas y temores del personal administrativo respecto a la adopción tecnológica. Elaboración propia.

*Empathy Map — Segmento 2: Cliente Comercial B2B*
![Empathy Map 2](../assets/images/empathy-map-2.png)
Identificación de motivadores extrínsecos e intrínsecos para la digitalización del bodeguero. Elaboración propia.

*Empathy Map — Segmento 3: Despacho y Entrega*
![Empathy Map 3](../assets/images/empathy-map-3.png)
Exploración del entorno laboral y necesidades de soporte del personal en ruta. Elaboración propia.

En términos de producto, los empathy maps confirman tres criterios de diseño. Primero, la herramienta debe reducir esfuerzo cognitivo en el Segmento 1, no aumentarlo. Segundo, debe generar confianza en el Segmento 3, no solo eficiencia transaccional. Tercero, debe proteger al Segmento 2 frente a ambigüedades del cierre operativo, ofreciendo visibilidad, trazabilidad y un registro suficiente de la preparación y entrega. Bajo esta lectura, el needfinding deja de ser un conjunto de imágenes explicativas y se convierte en una base argumental para justificar por qué el MVP prioriza captura estructurada, visibilidad compartida y evidencia mínima de entrega.


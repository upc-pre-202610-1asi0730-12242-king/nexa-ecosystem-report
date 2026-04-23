## 2.3. Needfinding
<p align="justify">
Los artefactos de needfinding que se presentan a continuación siguen la taxonomía canónica del proyecto definida desde el Capítulo I: <strong>S1</strong> para coordinación comercial y captura del pedido, <strong>S2</strong> para cliente comercial B2B y abastecimiento recurrente, y <strong>S3</strong> para despacho, transporte y cierre de entrega. Esta decisión es deliberada: el needfinding no replica literalmente los bloques de entrevista, sino que reorganiza la evidencia en función de los tres actores que estructuran el MVP.
</p>

<p align="justify">
La construcción de este bloque parte de tres insumos previos. El primero es el análisis de entrevistas del apartado 2.2, que identifica patrones de comportamiento, fricciones recurrentes y expectativas de adopción. El segundo es el análisis competitivo del apartado 2.1, que muestra que las soluciones existentes resuelven fragmentos del problema, pero no articulan con suficiente claridad la continuidad entre captura comercial, abastecimiento del cliente y cierre de entrega. El tercero es la lógica del dominio modelada en el proyecto, que obliga a representar no solo quién usa el sistema, sino en qué momento del flujo su intervención resulta crítica.
</p>

<p align="justify">
Por ello, los artefactos de needfinding no deben interpretarse como piezas visuales aisladas. Su función es traducir evidencia cualitativa en criterios de diseño: quién necesita autonomía, quién necesita visibilidad, quién necesita rapidez, quién necesita trazabilidad y en qué punto del recorrido cada una de esas necesidades se vuelve más sensible. Bajo ese enfoque, el valor del needfinding no está únicamente en mostrar personas, tareas o journeys, sino en demostrar cómo esas representaciones ayudan a delimitar el alcance del MVP y a justificar decisiones posteriores de backlog, arquitectura y experiencia de usuario.
</p>

<div style="padding: 14px 16px; border: 1px solid #dbe7ff; border-radius: 8px; background: #fcfdff; margin: 16px 0;">
  <strong>Criterio de construcción de arquetipos.</strong><br/><br/>
  <ul>
    <li><strong>Valeria (S1):</strong> sintetiza patrones compartidos por el personal de coordinación comercial entrevistado.</li>
    <li><strong>Hilda (S2):</strong> sintetiza patrones del cliente comercial B2B y no corresponde a una única entrevistada individual.</li>
    <li><strong>Pedro (S3):</strong> sintetiza el rol de despacho y cierre a partir de triangulación entre restricciones operativas, pain points del seguimiento y modelado del flujo.</li>
  </ul>
</div>

### 2.3.1. User Personas

<p align="justify">
Las user personas no sustituyen a los entrevistados reales; funcionan como síntesis operativas de patrones repetidos en la investigación. Por ello, cada persona concentra conductas, necesidades y fricciones compartidas que luego se traducen en decisiones de diseño, tareas y journeys.
</p>

<table border="1" cellspacing="0" cellpadding="6" align="center">
  <tr>
    <th>Persona</th>
    <th>Base empírica principal</th>
    <th>Patrones sintetizados</th>
    <th>Función dentro del MVP</th>
  </tr>
  <tr>
    <td><strong>Valeria (S1)</strong></td>
    <td>Entrevistas a coordinación comercial y captura del pedido</td>
    <td>Retrabajo, validaciones paralelas, dependencia de WhatsApp, presión por responder rápido</td>
    <td>Representar el punto donde el pedido nace y donde más se degrada la calidad de la información</td>
  </tr>
  <tr>
    <td><strong>Hilda (S2)</strong></td>
    <td>Entrevistas a clientes comerciales B2B y contexto de adopción digital del canal tradicional</td>
    <td>Necesidad de disponibilidad clara, seguimiento confiable, soporte humano y baja tolerancia a la complejidad</td>
    <td>Representar la demanda que compra, espera previsibilidad y define la adopción del portal</td>
  </tr>
  <tr>
    <td><strong>Pedro (S3)</strong></td>
    <td>Triangulación entre stakeholder operativo, pain points del seguimiento y modelado del flujo</td>
    <td>Necesidad de cierre con evidencia, reducción de interrupciones y visibilidad del estado de entrega</td>
    <td>Representar la ejecución física del pedido y el momento donde la promesa comercial se valida o fracasa</td>
  </tr>
</table>

La tabla resume la relación entre evidencia cualitativa, arquetipo sintetizado y función de diseño. Elaboración propia.

*User Persona — Segmento 1: Valeria Sánchez*
![User Persona 1](../assets/images/user-persona-1.png)
Representación del arquetipo de coordinación comercial, enfocado en reducir la carga administrativa y el retrabajo. Elaboración propia.

*User Persona — Segmento 2: Hilda*
![User Persona 2](../assets/images/user-persona-2.png)
Representación sintética del arquetipo de cliente comercial B2B, construida a partir de entrevistas a compradores minoristas y mayoristas, más evidencia de adopción digital del canal tradicional. Elaboración propia.

*User Persona — Segmento 3: Pedro*
![User Persona 3](../assets/images/user-persona-3.png)
Representación sintética del arquetipo de despacho y entrega, enfocada en la eficiencia de ruta y el cierre digital con evidencia. Su construcción se apoya en triangulación entre stakeholder operativo, pain points del seguimiento y modelado del flujo de dominio. Elaboración propia.

<p align="justify">
En conjunto, las tres personas muestran una progresión coherente del mismo problema. Valeria evidencia cómo la información del pedido nace fragmentada; Hilda expresa la incertidumbre que ese desorden produce en el cliente comercial; y Pedro representa el punto donde la falta de coordinación se vuelve retraso, reclamo o cierre débil de la entrega. Esta continuidad resulta importante porque permite que los artefactos del capítulo no describan actores desconectados, sino tres posiciones sobre una misma historia operativa.
</p>

### 2.3.2. User Task Matrix

<p align="justify">
La matriz de tareas resume qué actividades concentran mayor frecuencia e importancia relativa para cada segmento canónico. Su función no es enumerar funcionalidades del sistema, sino identificar qué tareas del trabajo real deben ser mejor soportadas por el producto para reducir fricción y sostener adopción.
</p>

| Tareas Identificadas (Tasks) | S1: Valeria (Frecuencia) | S1: Valeria (Importancia) | S2: Hilda (Frecuencia) | S2: Hilda (Importancia) | S3: Pedro (Frecuencia) | S3: Pedro (Importancia) |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| **Evaluar necesidades y solicitar mercadería**| N/A | N/A | Alta | Alta | N/A | N/A |
|**Recibir, interpretar y transcribir pedidos**| Alta | Alta | N/A | N/A | N/A | N/A |
|**Consultar/Validar disponibilidad de stock**| Alta | Alta | Alta | Alta | Baja | Baja |
|**Preparar espacio físico y dinero para recepción**| N/A | N/A | Alta | Alta | N/A | N/A |
|**Revisar y ejecutar la ruta de entrega física**| N/A | N/A | N/A | N/A | Alta | Alta |
|**Coordinar y comunicar el estado/horario de la entrega**| Alta | Alta | Alta | Alta | Alta | Alta |
|**Descargar y entregar mercadería en el punto**| N/A | N/A | N/A | N/A | Alta | Alta |
|**Validar guías/facturas y confirmar cierre de entrega**| Media | Alta | Alta | Alta | Alta | Alta |
|**Gestionar reclamos por errores o devoluciones** | Media | Alta | Baja | Alta | Baja | Media |

<p align="justify">
La lectura de la matriz deja tres prioridades claras. En S1 dominan la captura, validación y seguimiento del pedido; en S2 destacan la consulta de disponibilidad, el abastecimiento y la confirmación de entrega; y en S3 pesan la ejecución de ruta, la coordinación del estado y el cierre con evidencia. Esta distribución refuerza que el MVP debe priorizar continuidad entre segmentos, más que resolver cada tarea como si perteneciera a módulos aislados.
</p>

<p align="justify">
También se observan dos coincidencias transversales relevantes. La primera es que <strong>consultar o validar disponibilidad</strong> aparece como tarea de alta importancia tanto para S1 como para S2, lo que confirma que el stock visible es una variable crítica para la coordinación interna y para la confianza del cliente. La segunda es que <strong>coordinar y comunicar el estado de la entrega</strong> tiene alta frecuencia e importancia en los tres segmentos, lo que justifica que el seguimiento no se trate como un módulo accesorio, sino como una capacidad compartida del sistema.
</p>

<p align="justify">
Las diferencias también son útiles para delimitar alcance. S1 concentra tareas de interpretación y estructuración de información; S2 concentra tareas de abastecimiento y recepción; y S3 concentra tareas de ejecución y cierre. Esta separación ayuda a evitar un error común en proyectos de software: intentar diseñar una sola experiencia homogénea para actores que participan en momentos distintos del flujo y con criterios de éxito también distintos.
</p>

### 2.3.3. User Journey Mapping

<p align="justify">
Los journey maps modelan la situación <em>as-is</em> de cada segmento. Su valor analítico está en visibilizar dónde se concentran esperas, ambigüedades, dependencias manuales e interrupciones que después se transforman en oportunidades de diseño.
</p>

<p align="justify">
Leídos en conjunto, los tres journeys permiten reconstruir el recorrido completo del pedido desde perspectivas complementarias. El journey de S1 muestra el desgaste que produce convertir mensajes ambiguos en pedidos operables; el de S2 expone la ansiedad del cliente cuando no puede saber con certeza qué recibirá ni cuándo llegará; y el de S3 muestra cómo la falta de coordinación previa se traslada a la ruta, al contacto con el punto de entrega y al cierre final del servicio.
</p>

*Journey Map — Segmento 1: Coordinación Comercial*
![Journey Map 1](../assets/images/journey-map-1.png)
Mapeo del proceso de captura y gestión de pedidos, identificando puntos de dolor en la transcripción manual. Elaboración propia.

*Journey Map — Segmento 2: Cliente Comercial B2B*
![Journey Map 2](../assets/images/journey-map-2.png)
Mapeo de la experiencia de abastecimiento del cliente, destacando la incertidumbre en el seguimiento de entrega. Elaboración propia.

*Journey Map — Segmento 3: Despacho y Entrega*
![Journey Map 3](../assets/images/journey-map-3.png)
Mapeo de la ruta logística, enfatizando los cuellos de botella en la comunicación de incidencias. Elaboración propia.

<p align="justify">
El principal valor del bloque no está en describir tres trayectos separados, sino en demostrar que el punto de dolor cambia de forma pero no de origen. En S1 el problema aparece como ambigüedad y retrabajo; en S2 como opacidad del abastecimiento; y en S3 como interrupción, demora o cierre sin evidencia suficiente. Dicho de otro modo, los journeys confirman que el problema central no es una sola pantalla mal resuelta, sino una cadena de decisiones y validaciones que hoy pierde continuidad entre actores.
</p>

<p align="justify">
Esta lectura también deja una implicancia directa para diseño: el MVP necesita mejorar no solo la captura del pedido, sino también los momentos de transición entre estados. Si el sistema estructura bien el pedido, pero no comunica con claridad su confirmación, preparación, despacho o entrega, el valor percibido seguirá fragmentado. Por eso los journeys sostienen la prioridad de estados visibles, historial del pedido, confirmación clara y trazabilidad mínima del cierre.
</p>

### 2.3.4. Empathy Mapping

<p align="justify">
Los empathy maps complementan la lectura operativa con variables de percepción, confianza, frustración y expectativa. Este nivel resulta importante porque la adopción del producto no dependerá solo de eficiencia funcional, sino también de si cada segmento siente que el sistema le reduce carga, incertidumbre o exposición al error.
</p>

<p align="justify">
En S1, el empathy map concentra emociones ligadas a presión, urgencia y desgaste por duplicación de tareas; en S2, predominan la desconfianza frente a la opacidad del abastecimiento y la necesidad de respaldo humano; y en S3, la carga emocional se asocia a interrupciones, reclamos y falta de evidencia al cierre. Estas diferencias son útiles porque muestran que la adopción no depende de un único argumento de valor para todos los actores.
</p>

*Empathy Map — Segmento 1: Coordinación Comercial*
![Empathy Map 1](../assets/images/empathy-map-1.png)
Análisis de expectativas y temores del personal administrativo respecto a la adopción tecnológica. Elaboración propia.

*Empathy Map — Segmento 2: Cliente Comercial B2B*
![Empathy Map 2](../assets/images/empathy-map-2.png)
Identificación de motivadores extrínsecos e intrínsecos para la digitalización del bodeguero. Elaboración propia.

*Empathy Map — Segmento 3: Despacho y Entrega*
![Empathy Map 3](../assets/images/empathy-map-3.png)
Exploración del entorno laboral y necesidades de soporte del personal en ruta. Elaboración propia.

<p align="justify">
En términos de producto, los empathy maps confirman tres criterios de diseño. Primero, la herramienta debe reducir esfuerzo cognitivo en S1, no aumentarlo. Segundo, debe generar confianza en S2, no solo eficiencia transaccional. Tercero, debe proteger a S3 frente a ambigüedades del cierre, ofreciendo un registro simple pero suficiente de la entrega. Bajo esta lectura, el needfinding deja de ser un conjunto de imágenes explicativas y se convierte en una base argumental para justificar por qué el MVP prioriza captura estructurada, visibilidad compartida y evidencia mínima de entrega.
</p>

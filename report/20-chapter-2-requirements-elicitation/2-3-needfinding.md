## 2.3. Needfinding
<p align="justify">
Los artefactos de needfinding que se presentan a continuación siguen la taxonomía canónica del proyecto definida desde el Capítulo I: <strong>S1</strong> para coordinación comercial y captura del pedido, <strong>S2</strong> para cliente comercial B2B y abastecimiento recurrente, y <strong>S3</strong> para despacho, transporte y cierre de entrega. Esta decisión es deliberada: el needfinding no replica literalmente los bloques de entrevista, sino que reorganiza la evidencia en función de los tres actores que estructuran el MVP.
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

**Ilustración 1**
*User Persona — Segmento 1: Valeria Sánchez*
![User Persona 1](../assets/images/user-persona-1.png)
*Nota.* Representación del arquetipo de coordinación comercial, enfocado en reducir la carga administrativa y el retrabajo. Elaboración propia.

**Ilustración 2**
*User Persona — Segmento 2: Hilda*
![User Persona 2](../assets/images/user-persona-2.png)
*Nota.* Representación sintética del arquetipo de cliente comercial B2B, construida a partir de entrevistas a compradores minoristas y mayoristas, más evidencia de adopción digital del canal tradicional. Elaboración propia.

**Ilustración 3**
*User Persona — Segmento 3: Pedro*
![User Persona 3](../assets/images/user-persona-3.png)
*Nota.* Representación sintética del arquetipo de despacho y entrega, enfocada en la eficiencia de ruta y el cierre digital con evidencia. Su construcción se apoya en triangulación entre stakeholder operativo, pain points del seguimiento y modelado del flujo de dominio. Elaboración propia.

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

### 2.3.3. User Journey Mapping

<p align="justify">
Los journey maps modelan la situación <em>as-is</em> de cada segmento. Su valor analítico está en visibilizar dónde se concentran esperas, ambigüedades, dependencias manuales e interrupciones que después se transforman en oportunidades de diseño.
</p>

**Ilustración 4**
*Journey Map — Segmento 1: Coordinación Comercial*
![Journey Map 1](../assets/images/journey-map-1.png)
*Nota.* Mapeo del proceso de captura y gestión de pedidos, identificando puntos de dolor en la transcripción manual. Elaboración propia.

**Ilustración 5**
*Journey Map — Segmento 2: Cliente Comercial B2B*
![Journey Map 2](../assets/images/journey-map-2.png)
*Nota.* Mapeo de la experiencia de abastecimiento del cliente, destacando la incertidumbre en el seguimiento de entrega. Elaboración propia.

**Ilustración 6**
*Journey Map — Segmento 3: Despacho y Entrega*
![Journey Map 3](../assets/images/journey-map-3.png)
*Nota.* Mapeo de la ruta logística, enfatizando los cuellos de botella en la comunicación de incidencias. Elaboración propia.

### 2.3.4. Empathy Mapping

<p align="justify">
Los empathy maps complementan la lectura operativa con variables de percepción, confianza, frustración y expectativa. Este nivel resulta importante porque la adopción del producto no dependerá solo de eficiencia funcional, sino también de si cada segmento siente que el sistema le reduce carga, incertidumbre o exposición al error.
</p>

**Ilustración 7**
*Empathy Map — Segmento 1: Coordinación Comercial*
![Empathy Map 1](../assets/images/empathy-map-1.png)
*Nota.* Análisis de expectativas y temores del personal administrativo respecto a la adopción tecnológica. Elaboración propia.

**Ilustración 8**
*Empathy Map — Segmento 2: Cliente Comercial B2B*
![Empathy Map 2](../assets/images/empathy-map-2.png)
*Nota.* Identificación de motivadores extrínsecos e intrínsecos para la digitalización del bodeguero. Elaboración propia.

**Ilustración 9**
*Empathy Map — Segmento 3: Despacho y Entrega*
![Empathy Map 3](../assets/images/empathy-map-3.png)
*Nota.* Exploración del entorno laboral y necesidades de soporte del personal en ruta. Elaboración propia.

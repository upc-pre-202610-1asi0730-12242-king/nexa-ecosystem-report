## **2.3. Needfinding**

La construcción de este bloque parte de tres insumos previos. El primero es el análisis de entrevistas de la sección 2.2, que identifica patrones de comportamiento, fricciones recurrentes y expectativas de adopción. El segundo es el análisis competitivo de la sección 2.1, que muestra que las soluciones existentes resuelven fragmentos del problema, pero no articulan con suficiente claridad la continuidad entre captura comercial, abastecimiento del cliente y cierre de entrega. El tercero es la lógica del dominio modelada en el proyecto, donde cada segmento interviene en un momento distinto del flujo.

Los artefactos de needfinding traducen evidencia cualitativa en criterios de diseño: quién necesita autonomía, quién necesita visibilidad, quién necesita rapidez, quién necesita trazabilidad y en qué punto del recorrido cada necesidad se vuelve más sensible.

### ***2.3.1. User Personas***

La tabla resume la relación entre evidencia cualitativa, arquetipo sintetizado y función de diseño. Elaboración propia.

*User Persona — S1: Coordinación comercial / ventas internas — Valeria Sánchez*
![User Persona 1](../assets/images/chapter-2/user-personas/user-persona-1.png)
> *Nota:* Representación del arquetipo de vendedoras y coordinación comercial, enfocado en reducir la carga administrativa y el retrabajo en la captura del pedido. Elaboración propia.

*User Persona — S2: Jefatura logística / coordinación operativa — Roberto García*
![User Persona 2](../assets/images/chapter-2/user-personas/user-persona-2.png)
> *Nota:* Representación sintética del arquetipo de coordinación logística y operativa, enfocada en el control del cumplimiento, la visibilidad del despacho y el cierre con evidencia. Su construcción se apoya en hallazgos de trazabilidad, incidencias y coordinación operativa dentro del dominio. Elaboración propia.

*User Persona — S3: Comprador B2B / cliente comercial — Elena Litano*
![User Persona 3](../assets/images/chapter-2/user-personas/user-persona-3.png)
> *Nota:* Representación sintética del arquetipo de comprador comercial B2B, construida a partir de entrevistas a compradores minoristas y mayoristas, más evidencia de adopción digital del canal tradicional. Elaboración propia.

### ***2.3.2. User Task Matrix***

#### User Task Matrix: Frecuencia e Importancia por Arquetipo

| Tareas del Mundo Real                                     | Valeria (S1: Comercial) |             | Roberto (S2: Logística) |             | Comprador B2B (S3) |             |
|:----------------------------------------------------------|:------------------------|:------------|:------------------------|:------------|:----------------------|:------------|
|                                                           | Frecuencia              | Importancia | Frecuencia              | Importancia | Frecuencia            | Importancia |
| **Revisar lista de precios y stock disponible**           | Alta                    | Alta        | Media                   | Alta        | Alta                  | Alta        |
| **Elaborar y enviar listas de pedido**                    | Alta                    | Alta        | -                       | -           | Alta                  | Alta        |
| **Revisar deudas y límite de crédito del comprador**      | Alta                    | Alta        | -                       | -           | Baja                  | Media       |
| **Controlar fechas de caducidad de la mercadería**        | Media                   | Alta        | Alta                    | Alta        | Alta                  | Alta        |
| **Preparar y organizar la carga física para el reparto**  | -                       | -           | Alta                    | Alta        | -                     | -           |
| **Consultar avance o momento estimado de entrega**        | Alta                    | Media       | Alta                    | Alta        | Alta                  | Alta        |
| **Verificar y dar conformidad a la mercadería entregada** | -                       | -           | Alta                    | Alta        | Alta                  | Alta        |

> *Nota:* Análisis de la carga de tareas manuales distribuidas a lo largo de la cadena de suministro refrigerada. Frecuencia e importancia determinadas mediante el análisis cualitativo de las entrevistas (Needfinding). Elaboración propia.

### ***2.3.3. User Journey Mapping***

Los Journey Maps describen la situación actual de cada segmento antes de Nexa. Representan el recorrido As-Is: cómo se realiza hoy cada proceso, qué fricciones aparecen en cada etapa y dónde se concentra el mayor estrés operativo. No describen la experiencia dentro de la plataforma propuesta.

*Journey Map As-Is — S1: Coordinación comercial / ventas internas*
![Journey Map 1](../assets/images/chapter-2/journey-maps/journey-map-1.png)
> *Nota:* Mapeo del proceso actual de captura y gestión de pedidos, identificando puntos de dolor en la transcripción manual y la dispersión de canales. Elaboración propia.

*Journey Map As-Is — S2: Jefatura logística / coordinación operativa*
![Journey Map 2](../assets/images/chapter-2/journey-maps/journey-map-2.png)
> *Nota:* Mapeo de la ruta logística actual, enfatizando los cuellos de botella en la comunicación de incidencias y la falta de trazabilidad operativa. Elaboración propia.

*Journey Map As-Is — S3: Comprador B2B / cliente comercial*
![Journey Map 3](../assets/images/chapter-2/journey-maps/journey-map-3.png)
> *Nota:* Mapeo de la experiencia actual de abastecimiento del cliente, destacando la incertidumbre en el seguimiento de entrega y la dependencia del vendedor. Elaboración propia.

Los tres recorridos muestran un mismo flujo con fricciones distintas. En S1 el problema aparece como ambigüedad y retrabajo en la captura comercial; en S2 como presión operativa, incidencias y coordinación logística con información incompleta; y en S3 como incertidumbre sobre disponibilidad, confirmación y seguimiento del pedido.

Para el diseño, esto exige cuidar no solo la captura del pedido, sino también las transiciones entre confirmación, preparación, despacho y entrega.

#### As-Is Scenario Map

El recorrido del As-Is Scenario Map se estructura en seis etapas operativas, alineadas estrictamente con los tres segmentos canónicos del producto y representados por sus respectivos User Personas: S1 (Coordinación comercial / ventas internas), S2 (Jefatura logística / coordinación operativa) y S3 (Comprador B2B / cliente comercial).

#### Mapa de Escenario Actual (As-Is)

| Etapa Operativa (As-Is) | Actores | Acciones actuales | Pain points reales | Emociones / Fricciones                                               | Oportunidades de diseño |
|---|---|---|---|----------------------------------------------------------------------|---|
| **1. Necesidad y reabastecimiento** | S3: Comprador B2B / cliente comercial | Revisa stock propio en sus conservadoras, estima rotación, arma lista mental o en papel, y consulta por WhatsApp/llamada. | Catálogo desactualizado, sin precios ni disponibilidad visible, sin histórico de compras ágil. | Incertidumbre, urgencia, dependencia del vendedor. | Catálogo vivo con precios, disponibilidad y sugerencias de compra por cliente. |
| **2. Captura del pedido** | S1: Coordinación comercial / ventas internas, S3: Comprador B2B / cliente comercial | El pedido entra por WhatsApp, audio, foto de lista o llamada. S1 transcribe e interpreta al ERP/Excel. | Transcripción manual, ambigüedad de códigos, doble digitación, stock no confirmado en tiempo real. | Presión, retrabajo, miedo a equivocarse al transcribir. | Formulario estructurado con validación de SKU, precio, stock y crédito en un solo paso. |
| **3. Validación de stock, crédito y FEFO** | S1: Coordinación comercial / ventas internas, S2: Jefatura logística / coordinación operativa | S1 consulta stock en ERP y por teléfono a almacén; revisa crédito en módulo separado. S2 confirma por lote/vencimiento. | Stock desactualizado en ERP, crédito fragmentado, rotación FEFO/FIFO coordinada verbalmente. | Desconfianza del sistema, interrupciones constantes entre áreas.                  | Vista única de stock real, crédito disponible y lotes priorizados por vencimiento. |
| **4. Preparación y picking en almacén** | S2: Jefatura logística / coordinación operativa | Se imprime guía de remisión, se arman cajas/pallets manualmente, se valida visualmente temperatura y fecha. | Errores de picking, lote incorrecto, ruptura de cadena de frío no registrada, quiebres de stock descubiertos tarde. | Estrés por el tiempo, reclamos posteriores, riesgo de mermas.                      | Lista de picking digital con lote/vencimiento sugerido y checklist de temperatura integrado. |
| **5. Despacho y tránsito** | S2: Jefatura logística / coordinación operativa | Cargan vehículo, salen con guía física, coordinan ruta por teléfono; el cliente llama a ventas para conocer el avance. | "Ceguera logística": sin estado visible para el cliente, sin trazabilidad operativa suficiente, llamadas interrumpen al conductor. | Cansancio, llamadas invasivas cruzadas, ansiedad del cliente final.                  | Estado compartido de despacho y registro operativo mínimo. |
| **6. Entrega y cierre** | S2: Jefatura logística / coordinación operativa; S3: Comprador B2B / cliente comercial | Descarga, conteo manual, firma en guía física manchada o arrugada; reclamos por cantidades o vencimientos. | Cierre sin evidencia digital, disputas difíciles de resolver sobre quién rompió la cadena de frío, trazabilidad nula. | Frustración, desconfianza, reclamos post-entrega que afectan cobranzas.                     | Evidencia de conformidad de entrega como capacidad planificada del flujo. |

Estos puntos describen oportunidades del proceso actual. La primera iteración prioriza la captura estructurada del pedido y la visibilidad básica de estado entre S1, S2 y S3.

### ***2.3.4. Empathy Mapping***

A continuación, se presentan los Empathy Maps desarrollados para cada segmento objetivo.

*Empathy Map — S1: Coordinación comercial / ventas internas*
![Empathy Map 1](../assets/images/chapter-2/empathy-maps/empathy-map-1.png)
> *Nota:* Análisis de expectativas y temores del personal administrativo respecto a la adopción tecnológica. Elaboración propia.

*Empathy Map — S2: Jefatura logística / coordinación operativa*
![Empathy Map 2](../assets/images/chapter-2/empathy-maps/empathy-map-2.png)
> *Nota:* Exploración del entorno laboral y necesidades de soporte de S2: Jefatura logística / coordinación operativa. Elaboración propia.

*Empathy Map — S3: Comprador B2B / cliente comercial*
![Empathy Map 3](../assets/images/chapter-2/empathy-maps/empathy-map-3.png)
> *Nota:* Identificación de motivadores extrínsecos e intrínsecos para la digitalización del comprador comercial B2B. Elaboración propia.

*Síntesis de Empathy Mapping*

| Segmento | Principal pain | Principal gain | Design implication |
|---|---|---|---|
| S1: Coordinación comercial / ventas internas | Pedidos incompletos, doble digitación y validaciones dispersas | Registrar y seguir pedidos con menor retrabajo | Captura asistida con cliente, productos, condiciones y estado visible |
| S2: Jefatura logística / coordinación operativa | Información incompleta para preparar, priorizar o despachar | Control operativo con inventario, pedido y despacho en una misma lectura | Vistas de inventario, priorización FEFO, despacho y cierre con evidencia |
| S3: Comprador B2B / cliente comercial | Incertidumbre sobre catálogo, disponibilidad y avance del pedido | Comprar con más autonomía y recibir confirmaciones claras | Portal comprador con catálogo, pedido y seguimiento como alcance planificado |

> *Nota:* La tabla resume los principales dolores, ganancias esperadas e implicancias de diseño identificadas a partir de los empathy maps. Elaboración propia.

### ***Síntesis complementaria de Needfinding***

#### User Goals por Segmento

Los user goals sintetizan el objetivo principal que cada persona busca alcanzar al interactuar con el producto. Su función es conectar los hallazgos de la investigación cualitativa con los flujos de diseño documentados en la sección 4.4, asegurando que cada wireflow y user flow tenga origen en una necesidad identificada y no en una decisión arbitraria de diseño.

*Tabla: User Goals por segmento*

| Segmento | User Persona | User goal | Pain actual | Criterio de éxito | Flujo relacionado |
|:---|:---|:---|:---|:---|:---|
| S1: Coordinación comercial / ventas internas | Valeria Sánchez | Registrar o asistir un pedido B2B validando cliente, condición comercial y disponibilidad de productos, con trazabilidad posterior del estado del pedido | Captura manual por WhatsApp/audio, doble digitación, validaciones dispersas entre ERP y teléfono, sin historial integrado accesible | El pedido se crea con cliente y productos validados en un solo flujo estructurado, queda trazable y es visible para coordinación operativa | User Flow S1 — Pedido asistido (4.4.4) |
| S2: Jefatura logística / coordinación operativa | Roberto García | Supervisar inventario, riesgo FEFO, despacho y cierre de entrega con registro de conformidad | Opacidad del abastecimiento, coordinación verbal con almacén, cierres de entrega sin evidencia digital y falta de visibilidad compartida entre áreas | El ciclo logístico completo (inventario → despacho → cierre) se ejecuta con información estructurada y evidencia registrada en el sistema | User Flow S2 — Inventario, despacho y cierre (4.4.4) |
| S3: Comprador B2B / cliente comercial | Elena Litano | Consultar catálogo, seleccionar productos y dar seguimiento autónomo a pedidos desde un portal B2B sin depender del vendedor | Incertidumbre sobre disponibilidad real, dependencia del vendedor para conocer el estado del pedido y ausencia de historial de compras accesible | El comprador puede explorar el catálogo, enviar un pedido y consultar su estado sin necesidad de contacto por WhatsApp ni llamada telefónica | User Flow S3 — Portal de compra (4.4.4) — *Flujo de planificación, primera iteración* |

> *Nota:* S3 se documenta como flujo de planificación en la primera iteración; los flujos internos S1 y S2 constituyen la evidencia de validación principal. Los user goals conectan la investigación cualitativa del needfinding con los wireflows y user flows de la sección 4.4. Elaboración propia.

#### Trazabilidad investigación → producto

La siguiente tabla documenta cómo cada insumo de investigación derivó en un artefacto de diseño, qué segmento afecta y cómo informa las decisiones de producto. Su función es demostrar que el MVP no surge de suposiciones no sustentadas, sino de evidencia cualitativa sistemáticamente procesada.

*Tabla: Trazabilidad investigación → producto*

| Insumo de investigación | Artefacto derivado | Segmento | Cómo informa el diseño del producto |
|:---|:---|:---|:---|
| Entrevistas: pedidos recibidos por WhatsApp, audio y listas manuales; doble digitación y errores de transcripción | User Persona S1 (Valeria) → User Goal S1 | S1 | Justifica el flujo asistido de captura de pedido con validación de cliente, stock y condición comercial en un solo paso |
| Entrevistas: falta de visibilidad de inventario en tiempo real, coordinación verbal con almacén, cierres sin evidencia | User Persona S2 (Roberto) → User Goal S2 | S2 | Justifica el módulo de inventario con FEFO, el dispatch board y el cierre simulado POD mock |
| Entrevistas: incertidumbre del comprador sobre disponibilidad y estado del pedido; dependencia del vendedor | User Persona S3 (Elena) → User Goal S3 | S3 | Justifica el portal B2B con catálogo consultable, flujo de pedido y seguimiento autónomo |
| User Task Matrix: tareas de alta frecuencia e importancia por arquetipo | Priorización de funcionalidades core del MVP | S1, S2, S3 | Identifica qué tareas el producto debe resolver primero para generar valor operativo visible |
| Journey Maps: mapeo de fricciones por etapa del proceso actual | Puntos de dolor por segmento → decisiones de diseño | S1, S2, S3 | Revela los momentos de mayor fricción y orienta la priorización de estados visibles, trazabilidad y transiciones entre pantallas |
| As-Is Scenario Map: recorrido operativo actual en seis etapas | Oportunidades de diseño por etapa operativa | S1, S2, S3 | Conecta el estado actual del proceso fragmentado con las decisiones de alcance del MVP y la lógica de los flujos diseñados |

> *Nota:* La trazabilidad demuestra que cada decisión de diseño tiene origen identificable en evidencia cualitativa. Los artefactos de investigación son fuente directa del backlog, los user goals y la arquitectura de información. Elaboración propia.

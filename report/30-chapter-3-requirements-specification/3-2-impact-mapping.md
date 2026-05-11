## 3.2. Impact Mapping

<p align="justify">
El Impact Mapping es una técnica de planificación estratégica propuesta por Gojko Adzic que permite alinear el desarrollo de software con objetivos de negocio explícitos. En lugar de partir de una lista extensa de funcionalidades, el método obliga a responder cuatro preguntas en secuencia: qué meta se persigue, qué actores pueden influir sobre ella, qué cambios de comportamiento son necesarios y qué entregables permiten provocar dichos cambios. En el contexto de Nexa, esta técnica se emplea para convertir la evidencia del Capítulo 2 en un criterio de priorización defendible dentro del backlog.
</p>

<p align="justify">
Su valor dentro del informe es metodológico. El mapa de impactos actúa como puente entre la investigación cualitativa y la especificación funcional: toma los problemas observados en entrevistas, needfinding y EventStorming, los ordena por impacto sobre el negocio y evita que el producto se expanda prematuramente hacia capacidades atractivas pero secundarias. Por ello, el mapa no se limita a ilustrar actores o módulos; su función es justificar por qué el MVP se concentra en el flujo crítico del pedido B2B refrigerado y no en una digitalización total de la empresa desde la primera iteración.
</p>

<p align="justify">
El mapa se estructura en cuatro niveles fundamentales:
</p>

1. **Meta (Goal):** resultado de negocio que se desea alcanzar.
2. **Actor:** participante cuyo comportamiento puede acercar o alejar la meta.
3. **Impacto:** cambio observable en la forma de actuar del actor.
4. **Entregable (Deliverable):** componente funcional o técnico que facilita dicho cambio.

*Impact Mapping de Nexa — Alineación de metas, actores e impactos del MVP*

![Impact-mapping](../assets/images/impact-map.png)

Elaboración propia. El mapa sintetiza la relación entre problemas observados en la investigación, actores priorizados y entregables requeridos para el MVP.

<p align="justify">
La lectura central del diagrama es que Nexa no persigue una optimización genérica de la cadena de frío, sino una reducción específica de fricción en el pedido y en su trazabilidad posterior. Esa definición es importante porque delimita alcance. El proyecto prioriza visibilidad comercial y operativa donde la investigación encontró mayor densidad de errores: captura informal del pedido, validación tardía de stock o condiciones, incertidumbre sobre la entrega y baja capacidad de cierre con evidencia trazable.
</p>

<p align="justify">
En esta lectura, el mapa conserva como actores protagónicos al Segmento 1, al Segmento 2 y al Segmento 3 porque son ellos quienes concentran la interacción funcional más directa con el flujo del MVP. Las restricciones de validación, inventario, estados y trazabilidad permanecen dentro del dominio del problema, pero no introducen una segmentación adicional respecto del Capítulo 2.
</p>

*Lectura analítica del Impact Mapping de Nexa*

| Nivel del mapa | Elemento priorizado | Sustento en Capítulo 2 | Traducción en especificación |
| :--- | :--- | :--- | :--- |
| Meta | **Alcanzar 500 clientes comerciales B2B autónomos y reducir quejas logísticas y rechazos operativos en 50%.** | Entrevistas y needfinding mostraron dependencia de mensajes dispersos, revisión manual, quiebres de stock y seguimiento ciego. | Metas SMART alineadas a la eficiencia operativa, adopción digital y reducción de mermas. |
| Actor | Segmento 1: Vendedoras y coordinación comercial | Necesidad de registrar pedidos sin doble digitación y diferenciar solicitudes desde el inicio antes de comprometer la operación. | Épicas EP08 y EP11. |
| Actor | Segmento 3: Compradores comerciales B2B | Necesidad de consultar un catálogo confiable, preparar compras y seguir el despacho sin depender de llamadas o WhatsApp. | Épicas EP05, EP06, EP07 y EP12. |
| Actor | Segmento 2: Jefatura logística y coordinación operativa | Necesidad de validar disponibilidad, organizar preparación y documentar la entrega con evidencia verificable. |Épicas EP09, EP10 y EP12. |
| Impacto | Sustituir interacciones informales por flujos estructurados | En el análisis de entrevistas se observaron audios, listas y llamadas como soporte principal del pedido. | **US43: Como coordinadora comercial, quiero revisar el pedido capturado antes de enviarlo a revisión, para reducir errores.** |
| Impacto | Anticipar restricciones antes de prometer la entrega | Hallazgos sobre stock incierto, mora, crédito y validación demasiado tardía. | **US29: Como comprador comercial B2B, quiero consultar los productos disponibles para mi cuenta, para preparar pedidos con información clara y confiable.** |
| Impacto | Dar visibilidad al estado real del despacho | Needfinding y journey maps mostraron incertidumbre sobre ETA, incidencias y recepción. | **US66: Como responsable de despacho, quiero registrar evidencia de entrega, para respaldar que el pedido fue atendido correctamente.** |
| Deliverable | MVP dividido en frente público, núcleo transaccional y capa de integración | La solución necesita comunicar valor, ejecutar el flujo central y sostenerlo con contratos consistentes. | **US47: Como jefatura logística, quiero actualizar el estado de revisión de un pedido, para que comercial y comprador sepan si la solicitud avanza.** |

<p align="justify">
Una consecuencia relevante de esta lectura es que el mapa también justifica exclusiones. Quedan fuera del MVP inicial funcionalidades más amplias como analítica avanzada, optimización de rutas o automatizaciones secundarias porque, aunque puedan ser valiosas en el mediano plazo, no atacan primero el punto de quiebre identificado en la investigación: la discontinuidad entre captura, validación, abastecimiento y entrega. Mantener esa frontera fortalece la coherencia del capítulo, ya que el backlog deja de parecer una acumulación de ideas y se presenta como una secuencia argumentada de decisiones.
</p>

<p align="justify">
Desde la lógica narrativa del informe, el Impact Mapping cumple así una función de bisagra. El Capítulo 2 demuestra dónde está el problema y quiénes lo experimentan con más intensidad; esta sección define qué cambios de comportamiento vale la pena provocar; y el Product Backlog de la sección 3.3 materializa ese razonamiento en un orden de construcción y liberación técnicamente ejecutable. Esa continuidad es la que permite leer el Capítulo 3 como especificación sustentada y no solo como inventario de historias.
</p>

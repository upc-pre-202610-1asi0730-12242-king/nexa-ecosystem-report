## 3.2. Impact Mapping


El mapa se estructura en cuatro niveles fundamentales:

1. **Meta (Goal):** resultado de negocio que se desea alcanzar.
2. **Actor:** participante cuyo comportamiento puede acercar o alejar la meta.
3. **Impacto:** cambio observable en la forma de actuar del actor.

**Business Goals SMART de Nexa**
*Impact Mapping de Nexa — Alineación de metas, actores e impactos del MVP*

| Business Goal ID | Business Goal SMART | Métrica de evaluación |

### Impact Mapping
> *Nota:* El mapa sintetiza la relación entre problemas observados en la investigación, actores priorizados y entregables requeridos para el MVP. Elaboración propia.

La lectura central del diagrama es que Nexa no persigue una optimización genérica de la cadena de frío, sino una reducción específica de fricción en el pedido y en su trazabilidad posterior. Esa definición es importante porque delimita alcance. El proyecto prioriza visibilidad comercial y operativa donde la investigación encontró mayor densidad de errores: captura informal del pedido, validación tardía de stock o condiciones, incertidumbre sobre la entrega y baja capacidad de cierre con evidencia trazable.


| Business Goal SMART | Actor / Persona | Impact | Deliverable |
|---|---|---|---|---|
| Alcanzar que 500 clientes comerciales B2B realicen pedidos recurrentes a través de la plataforma de manera autónoma en los primeros 6 meses de lanzamiento. | Elena Litano — S3: Comprador B2B / cliente comercial | Migrar el hábito de compra de WhatsApp hacia la plataforma web, autogestionando requerimientos sin esperar confirmación manual. | Portal B2B con catálogo interactivo y sistema de envío. |
| Alcanzar que 500 clientes comerciales B2B realicen pedidos recurrentes a través de la plataforma de manera autónoma en los primeros 6 meses de lanzamiento. | Valeria Sánchez — S1: Coordinación comercial / ventas internas | Dejar de transcribir pedidos manualmente, actuando como validadora ágil de solicitudes estructuradas por el portal. | Módulo de revisión de captura comercial. |
| Reducir las llamadas de reclamo por "ceguera logística" y los rechazos operativos en ruta en un 50% en el lapso de 8 meses. | Roberto García — S2: Jefatura logística / coordinación operativa | Planificar el despacho con inventario sincronizado y gestionar la flota usando evidencias digitales reportadas desde la calle. | Módulo de gestión operativa, seguimiento de despacho y evidencia e-POD. |

![Impact Mapping de Nexa - Parte 2](../assets/images/chapter-3/impact-mapping/impact-map-part-2.png)
Una consecuencia relevante de esta lectura es que el mapa también justifica exclusiones. Quedan fuera del MVP inicial funcionalidades más amplias como analítica avanzada, optimización de rutas o automatizaciones secundarias porque, aunque puedan ser valiosas en el mediano plazo, no atacan primero el punto de quiebre identificado en la investigación: la discontinuidad entre captura, validación, abastecimiento y entrega. Mantener esa frontera fortalece la coherencia del capítulo, ya que el backlog deja de parecer una acumulación de ideas y se presenta como una secuencia argumentada de decisiones.

![Impact Mapping de Nexa - Parte 3](../assets/images/chapter-3/impact-mapping/impact-map-part-3.png)

Desde la lógica del informe, el Impact Mapping cumple así una función de bisagra. El Capítulo 2 demuestra dónde está el problema y quiénes lo experimentan con más intensidad; esta sección define qué cambios de comportamiento vale la pena provocar; y el Product Backlog de la sección 3.3 materializa ese razonamiento en un orden de construcción y liberación técnicamente ejecutable. Esa continuidad es la que permite leer el Capítulo 3 como especificación sustentada y no solo como inventario de historias.
El Capítulo 2 muestra dónde aparece el problema y quiénes lo viven con mayor intensidad. Esta sección define los cambios de comportamiento esperados, y el Product Backlog de la sección 3.3 traduce esa lectura en una secuencia de construcción.
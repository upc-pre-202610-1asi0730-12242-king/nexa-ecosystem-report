## 4.4. Web Applications UX/UI Design.

Esta sección documenta el diseño UX/UI de las superficies autenticadas del producto. La **webapp operativa interna (Ops)** para **S1: Coordinación comercial / ventas internas** y **S2: Jefatura logística / coordinación operativa** constituye la evidencia principal de diseño e implementación de esta entrega. El **portal B2B** para **S3: Comprador B2B / cliente comercial** se documenta a nivel de planificación en TB1: el flujo comprador está definido, pero no cuenta con pantallas implementadas en la webapp ni con mockups finales completos en esta iteración. S1 y S2 son la evidencia de validación principal. Las tres superficies comparten el sistema visual definido en 4.1, pero la prioridad de diseño en la webapp Ops es **claridad operativa, lectura rápida del estado del negocio y reducción de fricción en tareas repetitivas**.

Cada pantalla resuelve una pregunta concreta del dominio: qué pedido está en riesgo, qué producto necesita atención, qué validación bloquea la operación, qué unidad está en ruta y qué evidencia respalda el cierre. La documentación se organiza en wireframes, wireflows, mock-ups y user flows como artefactos de diseño UX/UI.

### 4.4.1. Web Applications Wireframes.

Los wireframes ordenan la estructura funcional antes de entrar en alta fidelidad. Su valor está en definir jerarquías, zonas de información y rutas de interacción por superficie y persona. La colección se organiza como recorrido operativo de diseño para S1 y S2, con pantallas suficientes para explicar dashboard, pedidos, inventario, despacho, POD mock y trazabilidad.

#### Sprint 1 — Wireframes de diseño

| Wireframe | Persona / Segmento | User goal que habilita |
|---|---|---|
| Dashboard Operativo Total Control | Valeria (S1), Roberto (S2) | Leer KPIs, alertas y accesos directos al iniciar sesión |
| B2B Orders Hub | Valeria (S1) | Revisar bandeja de pedidos y priorizar acción |
| Creación de Pedido Asistido | Valeria (S1) | Capturar un pedido con validación de cliente y stock |
| Inventory Management | Roberto (S2) | Revisar disponibilidad, riesgo FEFO y rotación |
| Confirmación de Despacho & Asignación de Flota | Roberto (S2) | Liberar salida y asignar unidad de transporte |
| FEFO Intelligence & Analytics | Roberto (S2) | Priorizar lotes por vencimiento y riesgo de merma |
| Active Shipments & Routes | Roberto (S2) | Monitorear unidades en tránsito y estado de ruta |
| Cierre de Entrega (POD) & Certificación | Roberto (S2) | Registrar evidencia y cerrar entrega formalmente |
| Inventory Detail | Roberto (S2) | Profundizar en estado de un SKU específico |
| Order Detail & Traceability | Valeria (S1), Roberto (S2) | Reconstruir historial completo de un pedido |

#### Dashboard Operativo Total Control

![Wireframe Dashboard Operativo Total Control](../assets/images/webapp-wireframes/webapp-wireframe-dashboard-operativo-total-control.png)

Este wireframe define la superficie de entrada para usuarios internos que necesitan leer rápidamente el estado del negocio. La composición concentra KPIs, alertas y accesos directos a módulos críticos, evitando que la supervisión tenga que saltar entre pantallas para detectar riesgos. Su función dentro del MVP es convertir una operación fragmentada en una vista centralizada de decisión.

#### B2B Orders Hub

![Wireframe B2B Orders Hub](../assets/images/webapp-wireframes/webapp-wireframe-b2b-orders-hub.png)

La vista de órdenes organiza el flujo comercial en una bandeja operable, con estados visibles, filtros y acceso al detalle de cada pedido. Aquí la prioridad de diseño no es “mostrar una tabla”, sino permitir lectura rápida de cola de trabajo, excepciones y prioridades. Esto responde directamente al problema de desorden entre pedidos informales, confirmaciones tardías y seguimiento manual.

#### Creación de Pedido Asistido

![Wireframe Creación de Pedido Asistido](../assets/images/webapp-wireframes/webapp-wireframe-creacion-pedido-asistido.png)

Este wireframe estructura el momento más sensible del flujo: la captura del pedido por coordinación comercial. El layout reserva zonas claras para identificación del cliente, selección de productos, condiciones comerciales y validaciones visibles, reduciendo el riesgo de doble digitación o ambigüedad. Su aporte es demostrar que la captura puede nacer ordenada desde el origen.

#### Inventory Management

![Wireframe Inventory Management](../assets/images/webapp-wireframes/webapp-wireframe-inventory-management.png)

La gestión de inventario fue diseñada como una vista de control y no solo de registro. El wireframe prioriza disponibilidad, riesgo, clasificación y acceso a detalle, porque el inventario en Nexa debe sostener decisiones comerciales y no limitarse a listar cantidades. Por eso la navegación permite pasar de visión agregada a intervención puntual sin romper el contexto.

#### Confirmación de Despacho & Asignación de Flota

![Wireframe Confirmación de Despacho y Asignación de Flota](../assets/images/webapp-wireframes/webapp-wireframe-confirmacion-despacho-asignacion-flota.png)

Esta pantalla modela la transición entre pedido confirmado y ejecución física. Su estructura visibiliza unidades listas para salir, asignación de transporte y condiciones necesarias para despachar, evitando que ese paso dependa de coordinación verbal dispersa. El wireframe muestra que despacho y planeamiento deben quedar dentro de la misma lógica operativa del sistema.

#### FEFO Intelligence & Analytics

![Wireframe FEFO Intelligence & Analytics](../assets/images/webapp-wireframes/webapp-wireframe-fefo-intelligence-analytics.png)

El módulo FEFO fue planteado como una vista analítica especializada para convertir vencimientos y rotación en decisiones visibles. El wireframe ordena señales de riesgo, lotes prioritarios y lectura de tendencias, reforzando que Nexa no solo administra pedidos, sino que también ayuda a prevenir pérdida de producto. Esta pantalla conecta directamente con la necesidad de reducir merma y sostener trazabilidad de inventario perecedero.

#### Active Shipments & Routes

![Wireframe Active Shipments & Routes](../assets/images/webapp-wireframes/webapp-wireframe-active-shipments-routes.png)

El seguimiento de rutas se diseñó como tablero de operación viva. Aquí la interfaz debe soportar lectura rápida de estado estimado, incidencias y entregas activas, porque el usuario en esta fase necesita reaccionar y no navegar sin rumbo. La estructura apunta a reducir llamadas y mejorar visibilidad compartida entre operación, coordinación y cliente.

#### Cierre de Entrega (POD) & Certificación

![Wireframe Cierre de Entrega POD y Certificación](../assets/images/webapp-wireframes/webapp-wireframe-cierre-entrega-pod-certificacion.png)

El cierre del pedido no se resolvió como un formulario aislado, sino como una interfaz de certificación de cumplimiento. Este wireframe hace visibles los campos de evidencia, conformidad y validación final, porque el objetivo es reducir reclamos posteriores y sostener un historial trazable. Su diseño responde al problema recurrente de cierres débiles, pruebas dispersas y documentación poco defendible.

#### Inventory Detail

![Wireframe Inventory Detail](../assets/images/webapp-wireframes/webapp-wireframe-inventory-detail-premium-artisan-organic-milk.png)

El detalle de inventario baja al nivel de un SKU concreto para mostrar información que no cabe en la vista agregada: estado térmico, disponibilidad, riesgo y contexto del producto. Esta profundidad es importante porque muchos problemas de cadena de frío no se detectan en una vista general, sino al revisar condiciones específicas de un ítem. Por ello, el wireframe fue planteado como apoyo a decisiones finas y no solo como ficha informativa.

#### Order Detail & Traceability

![Wireframe Order Detail & Traceability](../assets/images/webapp-wireframes/webapp-wireframe-order-detail-traceability.png)

El detalle del pedido organiza la historia completa de una orden en una sola superficie: datos comerciales, estados, eventos logísticos y evidencia asociada. Esta pantalla resulta crítica para reclamos, auditoría interna y seguimiento operativo porque traduce la promesa de trazabilidad en una vista concreta. Su función es evitar que la explicación de “qué pasó con el pedido” vuelva a depender de mensajes sueltos o reconstrucciones manuales.

### 4.4.2. Web Applications Wireflow Diagrams.

Un wireflow conecta pantallas, decisiones y estados de UI según un user goal concreto. En esta sección, los wireflows documentan cambios de pantalla, continuidad visual y restricciones de rol para las tres superficies principales: S1 comercial, S2 logística y S3 portal B2B.

Los wireflows sintetizan las pantallas y estados principales derivados de los user flows. A diferencia de los user flows, no detallan todas las rutas alternativas, sino que muestran el recorrido visual mínimo necesario para cumplir cada user goal. Las decisiones específicas, restricciones y unhappy paths se desarrollan en los User Flow Diagrams.

**Evidencia FigJam:** [Wireflows Web Applications Nexa](https://www.figma.com/board/sjNuqAaFEa1MilaxkKwt3v)

| User goal | Segmento / User Persona | Tarea relacionada | Evidencia de wireflow | Explicación del recorrido |
|---|---|---|---|---|
| Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior. | S1: Coordinación comercial / ventas internas — Valeria Sánchez | Login — perfil Valeria → Dashboard comercial → Clientes → Detalle de cliente → Validación de condición comercial → Pedido asistido → Selección de productos → Validación de disponibilidad → Confirmación del pedido → Detalle y seguimiento del pedido → Reportes comerciales. | FigJam Wireflows Web Applications Nexa + mockups S1 seleccionados | El recorrido conecta la revisión comercial del cliente con la captura asistida del pedido y su seguimiento posterior, evitando que la coordinación dependa de mensajes dispersos. |
| Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo y reportes. | S2: Jefatura logística / coordinación operativa — Roberto García | Login — perfil Roberto → Dashboard logístico → Inventario → Detalle de lote → Revisión FEFO y stock → Priorización operativa → Tablero de despacho → Confirmación de despacho → POD mock → Validación de evidencia → Reportes operativos. | FigJam Wireflows Web Applications Nexa + mockups S2 seleccionados | El recorrido conecta lectura de inventario, priorización FEFO, despacho y cierre simulado para sostener trazabilidad operativa en Sprint 2. |
| Consultar catálogo, seleccionar productos y revisar pedidos desde una experiencia de portal B2B. | S3: Comprador B2B / cliente comercial — Elena Litano | Login — perfil Elena → Portal comprador → Catálogo → Detalle de producto → Carrito / pedido → Confirmación de pedido → Órdenes / seguimiento. | FigJam Wireflows Web Applications Nexa | El recorrido representa el portal comprador como alcance de planificación TB1. No se declara cobertura completa de mockups S3 en esta entrega. |

### 4.4.3. Web Applications Mock-ups.

Los mockups representan pantallas seleccionadas de alta fidelidad para la dirección actual de la webapp. Se agrupan por segmento y user goal para mostrar evidencia visual sin convertir el capítulo en una galería extensa. El tablero completo contiene más pantallas; este reporte incluye solo vistas representativas que sostienen los recorridos S1 y S2, mientras que S3 permanece documentado como flujo portal de planificación en esta iteración.

| Mockup group | Segment | User goal | Included screens | Purpose |
|---|---|---|---|---|
| S1: Coordinación comercial / ventas internas | Valeria / S1 | Crear y seguir un pedido asistido | Login, dashboard, cliente, pedido, detalle, reportes | Evidenciar captura comercial guiada, validaciones y trazabilidad |
| S2: Jefatura logística / coordinación operativa | Roberto / S2 | Controlar inventario, despacho y POD mock | Dashboard, inventario, lote, despacho, POD mock, reportes | Evidenciar monitoreo FEFO, operación logística y cierre simulado |
| S3: Comprador B2B / cliente comercial | Elena / S3 | Comprar desde portal B2B | Flujo de planificación FigJam | Documentar alcance comprador sin inventar capturas no disponibles |

#### S1: Coordinación comercial / ventas internas — mockups de pedido asistido

![S1 Login Valeria selected](../assets/images/webapp-mockups-current/s1-01-login-valeria-selected.png)

![S1 Dashboard coordinación comercial](../assets/images/webapp-mockups-current/s1-02-dashboard-commercial.png)

![S1 Client detail drawer](../assets/images/webapp-mockups-current/s1-04-client-detail-drawer.png)

![S1 Assisted order products step](../assets/images/webapp-mockups-current/s1-07-assisted-order-products-step.png)

![S1 Order detail created by Valeria](../assets/images/webapp-mockups-current/s1-10-order-detail-created-by-valeria.png)

![S1 Reportes coordinación comercial](../assets/images/webapp-mockups-current/s1-12-commercial-reports.png)

Elaboración propia. Este grupo muestra el recorrido comercial desde la selección de perfil hasta la evidencia de pedido y reportes. Las pantallas se eligieron porque cubren los puntos decisivos del user goal: acceso por rol, lectura de estado, revisión de cliente, armado de pedido, trazabilidad por creador y análisis comercial.

#### S2: Jefatura logística / coordinación operativa — mockups de operación logística

![S2 Dashboard jefatura logística](../assets/images/webapp-mockups-current/s2-02-dashboard-logistics.png)

![S2 Inventory overview](../assets/images/webapp-mockups-current/s2-03-inventory-overview.png)

![S2 Lot detail drawer](../assets/images/webapp-mockups-current/s2-05-lot-detail-drawer.png)

![S2 Dispatch board](../assets/images/webapp-mockups-current/s2-07-dispatch-board.png)

![S2 POD mock modal](../assets/images/webapp-mockups-current/s2-09-pod-mock-modal.png)

![S2 Operational reports](../assets/images/webapp-mockups-current/s2-12-operational-reports.png)

Elaboración propia. Este grupo resume el recorrido logístico desde monitoreo hasta cierre simulado de entrega. Las pantallas seleccionadas cubren dashboard, inventario, lote, despacho, POD mock y reportes operativos, que son las evidencias visuales más representativas del flujo S2.

#### S3: Comprador B2B / cliente comercial — flujo planificado de portal

El portal B2B se documenta como flujo comprador de planificación. En esta entrega no se agregan capturas S3 porque la evidencia visual disponible se concentra en S1 y S2. Para evitar rutas inventadas, el portal queda representado por el wireflow de FigJam y por su separación explícita respecto a los roles internos Ops.

### 4.4.4. Web Applications User Flow Diagrams.

#### Criterios de resolución de flujo

El diseño UX/UI de aplicaciones web se construye en cuatro niveles de resolución creciente. Cada nivel responde a una pregunta concreta sobre el recorrido del usuario y sirve de base para el siguiente. La secuencia es: User Goal → Task Flow → Wireflow → User Flow.

*Tabla: Niveles de resolución de flujo aplicados en Nexa*

| Nivel | Propósito en el diseño | Evidencia en esta sección |
|:---|:---|:---|
| **User Goal** | Define qué objetivo concreto persigue cada persona antes de entrar al flujo. Responde a: ¿qué quiere lograr este usuario? | Objetivos de S1, S2 y S3 derivados del needfinding (síntesis complementaria de Needfinding) |
| **Task Flow** | Lista las acciones que el usuario necesita ejecutar para alcanzar el objetivo. Responde a: ¿qué pasos tiene que dar? | Secuencia de pasos por segmento en la tabla siguiente |
| **Wireflow** | Conecta las pantallas y estados de la interfaz recorridos durante la tarea. Responde a: ¿qué pantallas aparecen en ese recorrido? | FigJam Wireflows Web Applications Nexa |
| **User Flow** | Agrega decisiones, caminos alternativos y estados finales al recorrido. Responde a: ¿qué ocurre si algo sale distinto? | Diagramas visuales Lucidchart para S1/S2 y alcance planificado de S3 |

*Tabla: User Goals, Task Flows y referencias de flujo por segmento*

| Segmento | Persona | User Goal | Task Flow Summary | Wireflow | User Flow |
|:---|:---|:---|:---|:---|:---|
| S1: Coordinación comercial / ventas internas | Valeria Sánchez | Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior | Login — perfil Valeria → Dashboard comercial → Clientes → Detalle de cliente → Validación de condición comercial → Pedido asistido → Selección de productos → Validación de disponibilidad → Confirmación del pedido → Detalle y seguimiento del pedido → Reportes comerciales | FigJam Wireflows Web Applications Nexa | Userflow S1 en Lucidchart |
| S2: Jefatura logística / coordinación operativa | Roberto García | Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo y reportes | Login — perfil Roberto → Dashboard logístico → Inventario → Detalle de lote → Revisión FEFO y stock → Priorización operativa → Tablero de despacho → Confirmación de despacho → POD mock → Validación de evidencia → Reportes operativos | FigJam Wireflows Web Applications Nexa | Userflow S2 en Lucidchart |
| S3: Comprador B2B / cliente comercial | Elena Litano | Consultar catálogo, seleccionar productos y revisar pedidos desde una experiencia de portal B2B | Login — perfil Elena → Portal comprador → Catálogo → Detalle de producto → Carrito / pedido → Confirmación de pedido → Órdenes / seguimiento | FigJam Wireflows Web Applications Nexa | Flujo comprador documentado como alcance de planificación TB1 |

> *Nota:* Los user goals provienen de la síntesis complementaria de Needfinding. Los task flows resumen la secuencia de acciones sin entrar en decisiones específicas, que se detallan en los user flows. S3 se documenta como flujo de planificación en la primera iteración; los flujos S1 y S2 constituyen la evidencia de validación principal. Elaboración propia.

---

Para TB1, la evidencia visual formal de user flows se presenta mediante Lucidchart para S1 y S2. S3 se conserva como flujo comprador planificado, sin declarar mockups completos ni evidencia final de implementación de portal.

#### User Flow S1 — Coordinación comercial: pedido asistido

El user flow de S1 representa el recorrido de Valeria, responsable de coordinación comercial / ventas internas, desde el acceso al sistema hasta la creación y seguimiento de un pedido asistido. El flujo incluye validaciones de condición comercial, disponibilidad de productos y rutas alternativas para restricciones de cliente o cantidad insuficiente.

[Ver userflow S1 en Lucidchart](https://lucid.app/lucidchart/8f6d6af2-f229-47f8-ba02-86b27cdc6fed/edit?invitationId=inv_09391266-7e11-4614-8edf-12cf979cdabf)

![S1 User flow coordinación comercial](../assets/images/userflows/s1-commercial-userflow-lucid.png)

Figura. User flow visual para S1: Coordinación comercial / ventas internas.

#### User Flow S2 — Jefatura logística: inventario, despacho y cierre

El user flow de S2 representa el recorrido de Roberto, responsable de jefatura logística / coordinación operativa, desde la revisión de inventario y lotes con criterio FEFO hasta la gestión de despacho y cierre con POD simulado. El flujo incluye rutas alternativas para riesgo operativo, despacho no listo y evidencia incompleta.

[Ver userflow S2 en Lucidchart](https://lucid.app/lucidchart/b91c8e98-a38b-456a-92e5-f942be7e8439/edit?invitationId=inv_5c030713-67e5-4e84-90bf-661b26cef528)

![S2 User flow jefatura logística](../assets/images/userflows/s2-logistics-userflow-lucid.png)

Figura. User flow visual para S2: Jefatura logística / coordinación operativa.

#### User Flow S3 — Comprador B2B: portal de compra

Para S3: Comprador B2B / cliente comercial, el flujo se mantiene como alcance parcial de TB1. Se documenta a nivel de planificación para conectar catálogo, pedido y seguimiento, sin afirmar pantallas webapp implementadas ni mockups finales completos en esta entrega.

```mermaid
flowchart LR
    A["S3: Comprador B2B / cliente comercial"] --> B["Consulta catálogo"]
    B --> C["Revisa disponibilidad y condiciones"]
    C --> D["Arma pedido"]
    D --> E["Envía solicitud"]
    E --> F["Recibe confirmación"]
    F --> G["Consulta seguimiento"]
```

Figura. User flow planificado para S3: Comprador B2B / cliente comercial. Elaboración propia.

#### Tabla de consistencia: User Goals, wireflows y user flows

| User goal | Persona | Wireflow | User flow | Evidencia visual | Estado TB1 |
|:---|:---|:---|:---|:---|:---|
| Registrar pedido asistido validando cliente, condición comercial y disponibilidad de producto | Valeria (S1) | FigJam Wireflows Web Applications Nexa | Userflow S1 en Lucidchart | Lucidchart + mockups S1 seleccionados | Documentado e implementado en webapp |
| Supervisar inventario FEFO, coordinar despacho y cerrar entrega con POD mock | Roberto (S2) | FigJam Wireflows Web Applications Nexa | Userflow S2 en Lucidchart | Lucidchart + mockups S2 seleccionados | Documentado e implementado en webapp |
| Explorar catálogo, enviar pedido y consultar estado desde portal B2B | Elena (S3) | FigJam Wireflows Web Applications Nexa | Flujo comprador planificado | FigJam como planificación portal | Documentado como alcance parcial de TB1 |

> *Nota:* Los user goals provienen de la síntesis complementaria de Needfinding. S1 y S2 están validados con mockups y evidencia de webapp; S3 se documenta como flujo de planificación y no se afirma implementación completa del portal en TB1. Elaboración propia.

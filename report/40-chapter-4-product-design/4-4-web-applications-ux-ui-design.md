## 4.4. Web Applications UX/UI Design.

Esta sección documenta el diseño UX/UI de las superficies autenticadas del producto. La **webapp operativa interna (Ops)** para **S1: Coordinación comercial / ventas internas** y **S2: Jefatura logística / coordinación operativa** constituye la evidencia principal de diseño e implementación de esta entrega. El **portal B2B** para **S3: Comprador B2B / cliente comercial** se documenta a nivel de planificación en TB1: el flujo comprador está definido, pero no cuenta con pantallas implementadas en la webapp ni con mockups finales completos en esta iteración. S1 y S2 son la evidencia de validación principal. Las tres superficies comparten el sistema visual definido en 4.1, pero la prioridad de diseño en la webapp Ops es **claridad operativa, lectura rápida del estado del negocio y reducción de fricción en tareas repetitivas**.

Cada pantalla resuelve una pregunta concreta del dominio: qué pedido está en riesgo, qué producto necesita atención, qué validación bloquea la operación, qué unidad está en ruta y qué evidencia respalda el cierre. La documentación se organiza en wireframes, wireflows, mock-ups y user flows como artefactos de diseño UX/UI.

### 4.4.1. Web Applications Wireframes.

Los wireframes actuales de la webapp se organizan por segmento operativo. La cobertura visual de TB1 se concentra en **S1: Coordinación comercial / ventas internas** y **S2: Jefatura logística / coordinación operativa**. **S3: Comprador B2B / cliente comercial** permanece como flujo planificado, sin pantallas webapp implementadas en esta entrega.

*Tabla: Wireframes de la webapp por segmento operativo*

| Segmento | Pantallas documentadas | Recorrido cubierto |
|:---|:---|:---|
| S1: Coordinación comercial / ventas internas | Login, dashboard, clientes, detalle de cliente, pedidos, creación de pedido, productos, resumen, detalle de pedido y reportes | Ingreso, revisión comercial, gestión de clientes, registro de pedido, selección de productos, confirmación, seguimiento y consulta de reportes |
| S2: Jefatura logística / coordinación operativa | Login, dashboard logístico, inventario general, inventario por lote, detalle de lote, creación/revisión operativa de pedido, despacho, registro de salida, notificación, confirmación y reportes operativos | Ingreso, control de inventario, revisión por lote, preparación de despacho, registro operativo, confirmación de salida y lectura de reportes |
| S3: Comprador B2B / cliente comercial | Sin pantallas webapp implementadas en TB1 | Flujo comprador considerado en planificación de catálogo, pedido y seguimiento |

> *Nota:* Elaboración propia. Los wireframes S1 y S2 provienen de los artefactos actualizados de la webapp; S3 se conserva como alcance planificado para no afirmar pantallas que aún no forman parte de la implementación visual.

#### S1: Coordinación comercial / ventas internas

El recorrido S1 cubre el trabajo de Valeria desde el ingreso a la plataforma hasta la consulta de reportes comerciales. La secuencia prioriza captura clara de pedidos, revisión de cliente, selección de productos y trazabilidad del pedido creado.

*Figura. Wireframe de login para S1*

![Wireframe de login para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-login.jpg)

Nota. Elaboración propia. La pantalla de ingreso separa el acceso autenticado del recorrido público de la landing.

*Figura. Wireframe de dashboard comercial para S1*

![Wireframe de dashboard comercial para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-dashboard.jpg)

Nota. Elaboración propia. El dashboard reúne estado de pedidos, alertas comerciales y accesos a tareas frecuentes.

*Figura. Wireframe de lista de clientes para S1*

![Wireframe de lista de clientes para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-clientes-lista.jpg)

Nota. Elaboración propia. La lista permite ubicar clientes y revisar información comercial antes de iniciar un pedido.

*Figura. Wireframe de detalle de cliente para S1*

![Wireframe de detalle de cliente para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-detalle-cliente.jpg)

Nota. Elaboración propia. El detalle concentra condiciones, datos relevantes y contexto necesario para decidir si el pedido puede avanzar.

*Figura. Wireframe de lista de pedidos para S1*

![Wireframe de lista de pedidos para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-pedidos-lista.jpg)

Nota. Elaboración propia. La bandeja de pedidos ordena estados, prioridades y acceso rápido al detalle.

*Figura. Wireframe de creación de pedido para S1*

![Wireframe de creación de pedido para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido.jpg)

Nota. Elaboración propia. La captura inicial del pedido separa cliente, condiciones y datos base para reducir ambigüedad.

*Figura. Wireframe de selección de productos para S1*

![Wireframe de selección de productos para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido-productos.jpg)

Nota. Elaboración propia. La selección de productos ayuda a revisar cantidades, disponibilidad y composición del pedido.

*Figura. Wireframe de resumen de pedido para S1*

![Wireframe de resumen de pedido para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido-resumen.jpg)

Nota. Elaboración propia. El resumen permite confirmar información antes de registrar el pedido.

*Figura. Wireframe de detalle de pedido para S1*

![Wireframe de detalle de pedido para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-detalle-pedido.jpg)

Nota. Elaboración propia. El detalle sostiene seguimiento comercial y lectura del historial de la orden.

*Figura. Wireframe de reportes para S1*

![Wireframe de reportes para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-reportes.jpg)

Nota. Elaboración propia. Los reportes comerciales consolidan información para revisar actividad, pedidos y desempeño del flujo.

#### S2: Jefatura logística / coordinación operativa

El recorrido S2 cubre el trabajo de Roberto desde el ingreso a la plataforma hasta la lectura de reportes operativos. La secuencia prioriza inventario, lotes, despacho, registro de salida, confirmación y control de incidencias.

*Figura. Wireframe de login para S2*

![Wireframe de login para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-login.jpg)

Nota. Elaboración propia. El acceso mantiene la separación por rol antes de entrar a módulos operativos.

*Figura. Wireframe de dashboard logístico para S2*

![Wireframe de dashboard logístico para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-dashboard-logistica.jpg)

Nota. Elaboración propia. El dashboard logístico prioriza pedidos en riesgo, inventario, preparación y despacho.

*Figura. Wireframe de inventario general para S2*

![Wireframe de inventario general para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-inventario-vista-general.jpg)

Nota. Elaboración propia. La vista general muestra disponibilidad, clasificación y señales operativas de inventario.

*Figura. Wireframe de inventario por lote para S2*

![Wireframe de inventario por lote para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-inventario-por-lote.jpg)

Nota. Elaboración propia. La lectura por lote facilita priorización FEFO y revisión de riesgo.

*Figura. Wireframe de detalle de lote para S2*

![Wireframe de detalle de lote para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-detalle-lote.jpg)

Nota. Elaboración propia. El detalle permite revisar condiciones específicas del lote antes de tomar acción operativa.

*Figura. Wireframe de creación o revisión operativa de pedido para S2*

![Wireframe de creación o revisión operativa de pedido para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-crear-pedido-v2.jpg)

Nota. Elaboración propia. Esta pantalla conecta información de pedido con revisión operativa y disponibilidad.

*Figura. Wireframe de despacho con pedidos listos para salir*

![Wireframe de despacho con pedidos listos para salir](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-listos-para-salir.jpg)

Nota. Elaboración propia. El tablero de despacho agrupa pedidos listos y facilita priorizar salida.

*Figura. Wireframe de registro de salida para S2*

![Wireframe de registro de salida para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-modal-registro.jpg)

Nota. Elaboración propia. El registro recoge datos necesarios para dejar constancia del despacho.

*Figura. Wireframe de notificación de despacho para S2*

![Wireframe de notificación de despacho para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-notificacion.jpg)

Nota. Elaboración propia. La notificación confirma que el cambio de estado fue comunicado dentro del flujo.

*Figura. Wireframe de confirmación de despacho para S2*

![Wireframe de confirmación de despacho para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-confirmacion.jpg)

Nota. Elaboración propia. La confirmación formaliza la salida y reduce dependencia de coordinación verbal.

*Figura. Wireframe de reportes operativos para S2*

![Wireframe de reportes operativos para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-reportes-operativos-v2.jpg)

Nota. Elaboración propia. Los reportes operativos consolidan actividad, inventario, despacho e incidencias.

### 4.4.2. Web Applications Wireflow Diagrams.

Los wireflows actualizados conectan las pantallas principales de S1 y S2 con sus recorridos de trabajo. S3 permanece documentado como flujo comprador planificado, sin afirmar pantallas completas de portal en TB1.

**Wireflow S1 en Lucidchart:** [S1: Coordinación comercial / ventas internas](https://lucid.app/lucidchart/4aeb3b33-353d-4b0c-b978-5bed19d4fdca/edit?viewport_loc=-11%2C-11%2C3028%2C1465%2C0_0&invitationId=inv_c95b5cdc-7bd7-46ad-aa88-0fa213649397)

**Wireflow S2 en Lucidchart:** [S2: Jefatura logística / coordinación operativa](https://lucid.app/lucidchart/6573c628-5545-4360-8fb2-3bb444c7e648/edit?viewport_loc=-298%2C-263%2C3315%2C1788%2C0_0&invitationId=inv_5e548793-b34d-43ed-b8fc-0f9dd7cf81a5)

| User goal | Segmento / User Persona | Tarea relacionada | Evidencia de wireflow | Explicación del recorrido |
|---|---|---|---|---|
| Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior. | S1: Coordinación comercial / ventas internas — Valeria Sánchez | Login → Dashboard comercial → Clientes → Detalle de cliente → Pedido asistido → Selección de productos → Resumen → Confirmación → Detalle de pedido → Reportes. | Lucidchart S1. | El recorrido conecta la revisión comercial del cliente con la captura asistida del pedido y su seguimiento posterior, evitando que la coordinación dependa de mensajes dispersos. |
| Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo y reportes. | S2: Jefatura logística / coordinación operativa — Roberto García | Login → Dashboard logístico → Inventario general → Inventario por lote → Detalle de lote → Revisión operativa de pedido → Despacho → Registro de salida → Notificación → Confirmación → Reportes operativos. | Lucidchart S2 y wireflow S2 documentado como figura. | El recorrido conecta lectura de inventario, priorización FEFO, despacho y cierre simulado para sostener trazabilidad operativa en Sprint 2. |
| Consultar catálogo, seleccionar productos y revisar pedidos desde una experiencia de portal B2B. | S3: Comprador B2B / cliente comercial — Elena Litano | Portal comprador → Catálogo → Detalle de producto → Carrito / pedido → Confirmación de pedido → Órdenes / seguimiento. | Flujo planificado. | El recorrido representa el portal comprador como alcance de planificación TB1. No se declara cobertura completa de mockups S3 en esta entrega. |

*Figura. Wireflow principal para S2: Jefatura logística / coordinación operativa*

![Wireflow S2 principal](../assets/images/chapter-4/webapp/wireflows/wireflow-s2-jefatura-logistica-coordinacion-operativa.png)

Nota. Elaboración propia. El wireflow muestra la continuidad visual entre dashboard logístico, inventario, lote, despacho, confirmación y reportes operativos.

*Figura. Wireflow complementario para S2: Jefatura logística / coordinación operativa*

![Wireflow S2 complementario](../assets/images/chapter-4/webapp/wireflows/wireflow-s2-jefatura-logistica-coordinacion-operativa-alt.png)

Nota. Elaboración propia. Esta vista complementa el recorrido S2 con una variante de lectura del flujo operativo disponible en los artefactos actualizados.

### 4.4.3. Web Applications Mock-ups.

Los mockups representan pantallas seleccionadas de alta fidelidad para la dirección actual de la webapp. Se agrupan por segmento y user goal para mostrar evidencia visual sin convertir el capítulo en una galería extensa. El tablero completo contiene más pantallas; este reporte incluye solo vistas representativas que sostienen los recorridos S1 y S2, mientras que S3 permanece documentado como flujo portal de planificación en esta iteración.

| Grupo de mockups | Segmento | User goal | Pantallas incluidas | Propósito |
|---|---|---|---|---|
| S1: Coordinación comercial / ventas internas | Valeria / S1 | Crear y seguir un pedido asistido | Login, dashboard, cliente, pedido, detalle, reportes | Evidenciar captura comercial guiada, validaciones y trazabilidad |
| S2: Jefatura logística / coordinación operativa | Roberto / S2 | Controlar inventario, despacho y POD mock | Dashboard, inventario, lote, despacho, POD mock, reportes | Evidenciar monitoreo FEFO, operación logística y cierre simulado |
| S3: Comprador B2B / cliente comercial | Elena / S3 | Comprar desde portal B2B | Flujo planificado | Documentar alcance comprador sin inventar capturas no disponibles |

#### S1: Coordinación comercial / ventas internas — mockups de pedido asistido

![S1 Login Valeria selected](../assets/images/chapter-4/webapp/mockups/s1-01-login-valeria-selected.png)

![S1 Dashboard coordinación comercial](../assets/images/chapter-4/webapp/mockups/s1-02-dashboard-commercial.png)

![S1 Client detail drawer](../assets/images/chapter-4/webapp/mockups/s1-04-client-detail-drawer.png)

![S1 Assisted order products step](../assets/images/chapter-4/webapp/mockups/s1-07-assisted-order-products-step.png)

![S1 Order detail created by Valeria](../assets/images/chapter-4/webapp/mockups/s1-10-order-detail-created-by-valeria.png)

![S1 Reportes coordinación comercial](../assets/images/chapter-4/webapp/mockups/s1-12-commercial-reports.png)

Elaboración propia. Este grupo muestra el recorrido comercial desde la selección de perfil hasta la evidencia de pedido y reportes. Las pantallas se eligieron porque cubren los puntos decisivos del user goal: acceso por rol, lectura de estado, revisión de cliente, armado de pedido, trazabilidad por creador y análisis comercial.

#### S2: Jefatura logística / coordinación operativa — mockups de operación logística

![S2 Dashboard jefatura logística](../assets/images/chapter-4/webapp/mockups/s2-02-dashboard-logistics.png)

![S2 Inventory overview](../assets/images/chapter-4/webapp/mockups/s2-03-inventory-overview.png)

![S2 Lot detail drawer](../assets/images/chapter-4/webapp/mockups/s2-05-lot-detail-drawer.png)

![S2 Dispatch board](../assets/images/chapter-4/webapp/mockups/s2-07-dispatch-board.png)

![S2 POD mock modal](../assets/images/chapter-4/webapp/mockups/s2-09-pod-mock-modal.png)

![S2 Operational reports](../assets/images/chapter-4/webapp/mockups/s2-12-operational-reports.png)

Elaboración propia. Este grupo resume el recorrido logístico desde monitoreo hasta cierre simulado de entrega. Las pantallas seleccionadas cubren dashboard, inventario, lote, despacho, POD mock y reportes operativos, que son las evidencias visuales más representativas del flujo S2.

#### S3: Comprador B2B / cliente comercial — flujo planificado de portal

El portal B2B se documenta como flujo comprador de planificación. En esta entrega no se agregan capturas S3 porque la evidencia visual disponible se concentra en S1 y S2. Para evitar rutas inventadas, el portal queda separado de los roles internos Ops y no se presenta como pantalla implementada.

### 4.4.4. Web Applications User Flow Diagrams.

#### Criterios de resolución de flujo

Para mantener trazabilidad entre investigación, diseño e implementación, los recorridos de la webapp se documentan en cuatro niveles: User Goal, Task Flow, Wireflow y User Flow. La lectura se mantiene por segmento para no mezclar responsabilidades entre coordinación comercial, jefatura logística y comprador B2B.

*Tabla: Niveles de resolución de flujo aplicados en Nexa*

| Nivel | Aplicación en Nexa | Evidencia en esta sección |
|:---|:---|:---|
| **User Goal** | Objetivo operativo de cada persona dentro del flujo B2B refrigerado | Objetivos de S1, S2 y S3 derivados del needfinding |
| **Task Flow** | Secuencia de acciones necesarias para completar el pedido, despacho o seguimiento | Tabla por segmento |
| **Wireflow** | Continuidad visual entre pantallas de la webapp | Lucidchart S1, Lucidchart S2 y figura de wireflow S2 |
| **User Flow** | Decisiones y rutas alternativas del recorrido | Diagramas visuales Lucidchart para S1/S2 y alcance planificado de S3 |

*Tabla: User Goals, Task Flows y referencias de flujo por segmento*

| Segmento | Persona | User Goal | Resumen de task flow | Wireflow | User Flow |
|:---|:---|:---|:---|:---|:---|
| S1: Coordinación comercial / ventas internas | Valeria Sánchez | Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior | Login — perfil Valeria → Dashboard comercial → Clientes → Detalle de cliente → Validación de condición comercial → Pedido asistido → Selección de productos → Validación de disponibilidad → Confirmación del pedido → Detalle y seguimiento del pedido → Reportes comerciales | [Wireflow S1 en Lucidchart](https://lucid.app/lucidchart/4aeb3b33-353d-4b0c-b978-5bed19d4fdca/edit?viewport_loc=-11%2C-11%2C3028%2C1465%2C0_0&invitationId=inv_c95b5cdc-7bd7-46ad-aa88-0fa213649397) | Userflow S1 en Lucidchart |
| S2: Jefatura logística / coordinación operativa | Roberto García | Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo y reportes | Login — perfil Roberto → Dashboard logístico → Inventario → Detalle de lote → Revisión FEFO y stock → Priorización operativa → Tablero de despacho → Confirmación de despacho → POD mock → Validación de evidencia → Reportes operativos | [Wireflow S2 en Lucidchart](https://lucid.app/lucidchart/6573c628-5545-4360-8fb2-3bb444c7e648/edit?viewport_loc=-298%2C-263%2C3315%2C1788%2C0_0&invitationId=inv_5e548793-b34d-43ed-b8fc-0f9dd7cf81a5) + figura de wireflow S2 | Userflow S2 en Lucidchart |
| S3: Comprador B2B / cliente comercial | Elena Litano | Consultar catálogo, seleccionar productos y revisar pedidos desde una experiencia de portal B2B | Login — perfil Elena → Portal comprador → Catálogo → Detalle de producto → Carrito / pedido → Confirmación de pedido → Órdenes / seguimiento | Flujo comprador planificado | Flujo comprador documentado como alcance de planificación TB1 |

> *Nota:* Los user goals provienen de la síntesis complementaria de Needfinding. Los task flows resumen la secuencia de acciones sin entrar en decisiones específicas, que se detallan en los user flows. S3 se documenta como flujo de planificación en la primera iteración; los flujos S1 y S2 constituyen la evidencia de validación principal. Elaboración propia.

---

Para TB1, la evidencia visual formal de user flows se presenta mediante Lucidchart para S1 y S2. S3 se conserva como flujo comprador planificado, sin declarar mockups completos ni evidencia final de implementación de portal.

#### User Flow S1 — Coordinación comercial: pedido asistido

El user flow de S1 representa el recorrido de Valeria, responsable de coordinación comercial / ventas internas, desde el acceso al sistema hasta la creación y seguimiento de un pedido asistido. El flujo incluye validaciones de condición comercial, disponibilidad de productos y rutas alternativas para restricciones de cliente o cantidad insuficiente.

[Ver userflow S1 en Lucidchart](https://lucid.app/lucidchart/8f6d6af2-f229-47f8-ba02-86b27cdc6fed/edit?invitationId=inv_09391266-7e11-4614-8edf-12cf979cdabf)

![S1 User flow coordinación comercial](../assets/images/chapter-4/webapp/user-flows/s1-commercial-userflow-lucid.png)

Figura. User flow visual para S1: Coordinación comercial / ventas internas.

#### User Flow S2 — Jefatura logística: inventario, despacho y cierre

El user flow de S2 representa el recorrido de Roberto, responsable de jefatura logística / coordinación operativa, desde la revisión de inventario y lotes con criterio FEFO hasta la gestión de despacho y cierre con POD simulado. El flujo incluye rutas alternativas para riesgo operativo, despacho no listo y evidencia incompleta.

[Ver userflow S2 en Lucidchart](https://lucid.app/lucidchart/b91c8e98-a38b-456a-92e5-f942be7e8439/edit?invitationId=inv_5c030713-67e5-4e84-90bf-661b26cef528)

![S2 User flow jefatura logística](../assets/images/chapter-4/webapp/user-flows/s2-logistics-userflow-lucid.png)

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
| Registrar pedido asistido validando cliente, condición comercial y disponibilidad de producto | Valeria (S1) | [Wireflow S1 en Lucidchart](https://lucid.app/lucidchart/4aeb3b33-353d-4b0c-b978-5bed19d4fdca/edit?viewport_loc=-11%2C-11%2C3028%2C1465%2C0_0&invitationId=inv_c95b5cdc-7bd7-46ad-aa88-0fa213649397) | Userflow S1 en Lucidchart | Lucidchart + mockups S1 seleccionados | Documentado e implementado en webapp |
| Supervisar inventario FEFO, coordinar despacho y cerrar entrega con POD mock | Roberto (S2) | [Wireflow S2 en Lucidchart](https://lucid.app/lucidchart/6573c628-5545-4360-8fb2-3bb444c7e648/edit?viewport_loc=-298%2C-263%2C3315%2C1788%2C0_0&invitationId=inv_5e548793-b34d-43ed-b8fc-0f9dd7cf81a5) + figura de wireflow S2 | Userflow S2 en Lucidchart | Lucidchart + mockups S2 seleccionados | Documentado e implementado en webapp |
| Explorar catálogo, enviar pedido y consultar estado desde portal B2B | Elena (S3) | Flujo comprador planificado | Flujo comprador planificado | Planificación de portal, sin pantallas implementadas | Documentado como alcance parcial de TB1 |

> *Nota:* Los user goals provienen de la síntesis complementaria de Needfinding. S1 y S2 están validados con mockups y evidencia de webapp; S3 se documenta como flujo de planificación y no se afirma implementación completa del portal en TB1. Elaboración propia.

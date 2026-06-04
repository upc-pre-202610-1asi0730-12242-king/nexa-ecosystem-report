## 4.4. Web Applications UX/UI Design

Esta sección documenta el diseño UX/UI de las superficies autenticadas de Nexa: la **Web Application interna** para los segmentos **S1 — Commercial Coordination** y **S2 — Operations / Account Owner**, y el **Buyer Portal** para **S3 — B2B Buyer Portal**. Estas superficies comparten el sistema visual definido en 4.1 y la arquitectura de información descrita en 4.2, pero se diferencian por densidad, navegación, nivel de detalle y responsabilidad de negocio.

La Web Application interna está orientada a operación diaria. S1 necesita validar solicitudes, revisar clientes, convertir solicitudes de compra (`Purchase Requests`) en órdenes de compra (`Purchase Orders`) y gestionar documentos comerciales. S2 necesita controlar inventario, lotes, despacho, evidencias, analítica operativa, promociones, portales de cliente (`Customer Portals`) y administración de empresa/tenant. El Buyer Portal está orientado al autoservicio del comprador B2B: catálogo, constructor de solicitud (`Request Builder`), solicitudes, pedidos, documentos visibles y seguimiento.

El diseño UX/UI se organiza por user goals y no únicamente por pantallas. Cada recorrido responde a una pregunta del dominio: qué solicitud debe validarse, qué pedido está bloqueado, qué lote requiere atención, qué despacho debe prepararse, qué evidencia falta y qué estado puede consultar el comprador. Por ello, esta sección presenta wireframes, wireflows, mockups y user flows como artefactos conectados.

Para **S3 — B2B Buyer Portal**, esta sección incorpora mockups desktop y mobile de alta fidelidad, rutas canónicas, task flow, wireflow visual y user flow diagramático exportado. La cobertura mobile se documenta mediante mockups responsive incorporados en esta sección, mientras que el wireflow y el user flow S3 respaldan la continuidad del recorrido del comprador B2B.

| Criterio | Aplicación en Web Application / Buyer Portal | Relación con 4.1 / 4.2 |
|---|---|---|
| Jerarquía visual | Dashboards, tablas, drawers, modals y estados priorizan decisiones operativas por flujo | Aplica la jerarquía, color, tipografía y espaciado definidos en 4.1 |
| Arquitectura de información | Módulos y rutas siguen la organización por S1, S2 y S3 | Mantiene la estructura de superficies, rutas canónicas y navegación definida en 4.2 |
| Diseño inclusivo | Labels claros, estados textuales, contraste y mensajes de validación reducen ambigüedad | Conecta con los criterios de accesibilidad, tono y lenguaje de 4.1 |
## 4.4. Web Applications UX/UI Design.

Esta sección documenta el diseño UX/UI de las superficies autenticadas del producto. La **webapp operativa interna (Ops)** para **S1: Coordinación comercial / ventas internas** y **S2: Jefatura logística / coordinación operativa** constituye la evidencia principal de diseño e implementación de esta entrega. El **portal B2B** para **S3: Comprador B2B / cliente comercial** se documenta a nivel de planificación en TB1: el flujo comprador está definido, pero no cuenta con pantallas implementadas en la webapp ni con mockups finales completos en esta iteración. S1 y S2 son la evidencia de validación principal. Las tres superficies comparten el sistema visual definido en 4.1, pero la prioridad de diseño en la webapp Ops es **claridad operativa, lectura rápida del estado del negocio y reducción de fricción en tareas repetitivas**.

Cada pantalla resuelve una pregunta concreta del dominio: qué pedido está en riesgo, qué producto necesita atención, qué validación bloquea la operación, qué unidad está en ruta y qué evidencia respalda el cierre. La documentación se organiza en wireframes, wireflows, mock-ups y user flows como artefactos de diseño UX/UI.

### 4.4.1. Web Applications Wireframes.

Los wireframes actuales de la webapp se organizan por segmento operativo. La cobertura visual de TB1 se concentra en **S1: Coordinación comercial / ventas internas** y **S2: Jefatura logística / coordinación operativa**. **S3: Comprador B2B / cliente comercial** permanece como flujo planificado, sin pantallas webapp implementadas en esta entrega.

*Tabla: Wireframes de la webapp por segmento operativo*

| Segmento | Pantallas documentadas | Recorrido cubierto |
|:---|:---|:---|

![Wireframe de login para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-login.jpg)

> *Nota:* La pantalla de ingreso separa el acceso autenticado del recorrido público de la Landing Page. Elaboración propia.
> *Nota*. La pantalla de ingreso separa el acceso autenticado del recorrido público de la landing. Elaboración propia.


![Wireframe de dashboard comercial para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-dashboard.jpg)

> *Nota:* El dashboard reúne estado de pedidos, alertas comerciales y accesos a tareas frecuentes. Elaboración propia.
> *Nota*. El dashboard reúne estado de pedidos, alertas comerciales y accesos a tareas frecuentes. Elaboración propia.

![Wireframe de lista de clientes para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-clientes-lista.jpg)

> *Nota:* La lista permite ubicar clientes y revisar información comercial antes de iniciar o validar un pedido. Elaboración propia.

> *Nota*. La lista permite ubicar clientes y revisar información comercial antes de iniciar un pedido. Elaboración propia.


![Wireframe de detalle de cliente para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-detalle-cliente.jpg)

> *Nota:* El detalle concentra condiciones, datos relevantes y contexto necesario para decidir si el pedido puede avanzar. Elaboración propia.
> *Nota*. El detalle concentra condiciones, datos relevantes y contexto necesario para decidir si el pedido puede avanzar. Elaboración propia.


![Wireframe de lista de pedidos para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-pedidos-lista.jpg)

> *Nota:* La bandeja de pedidos ordena estados, prioridades y acceso rápido al detalle. Elaboración propia.
> *Nota*. La bandeja de pedidos ordena estados, prioridades y acceso rápido al detalle. Elaboración propia.

![Wireframe de creación de pedido para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido.jpg)

> *Nota:* La captura inicial del pedido separa cliente, condiciones y datos base para reducir ambigüedad. Elaboración propia.
> *Nota*. La captura inicial del pedido separa cliente, condiciones y datos base para reducir ambigüedad. Elaboración propia.


![Wireframe de selección de productos para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido-productos.jpg)

> *Nota:* La selección de productos ayuda a revisar cantidades, disponibilidad y composición del pedido. Elaboración propia.

> *Nota*. La selección de productos ayuda a revisar cantidades, disponibilidad y composición del pedido. Elaboración propia.


![Wireframe de resumen de pedido para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido-resumen.jpg)

> *Nota:* El resumen permite confirmar información antes de registrar o convertir el pedido. Elaboración propia.
> *Nota*. El resumen permite confirmar información antes de registrar el pedido. Elaboración propia.


![Wireframe de detalle de pedido para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-detalle-pedido.jpg)

> *Nota:* El detalle sostiene seguimiento comercial y lectura del historial de la orden. Elaboración propia.
> *Nota*. El detalle sostiene seguimiento comercial y lectura del historial de la orden. Elaboración propia.

![Wireframe de reportes para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-reportes.jpg)

> *Nota:* Los reportes comerciales consolidan información para revisar actividad, pedidos y desempeño del flujo. Elaboración propia.

#### S2 — Operations / Account Owner
> *Nota*. Los reportes comerciales consolidan información para revisar actividad, pedidos y desempeño del flujo. Elaboración propia.

#### S2: Jefatura logística / coordinación operativa


![Wireframe de login para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-login.jpg)

> *Nota:* El acceso mantiene la separación por rol antes de entrar a módulos operativos. Elaboración propia.

> *Nota*. El acceso mantiene la separación por rol antes de entrar a módulos operativos. Elaboración propia.


![Wireframe de dashboard logístico para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-dashboard-logistica.jpg)

> *Nota:* El dashboard logístico prioriza pedidos en riesgo, inventario, preparación y despacho. Elaboración propia.
> *Nota*. El dashboard logístico prioriza pedidos en riesgo, inventario, preparación y despacho. Elaboración propia.


![Wireframe de inventario general para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-inventario-vista-general.jpg)

> *Nota:* La vista general muestra disponibilidad, clasificación y señales operativas de inventario. Elaboración propia.
> *Nota*. La vista general muestra disponibilidad, clasificación y señales operativas de inventario. Elaboración propia.


![Wireframe de inventario por lote para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-inventario-por-lote.jpg)

> *Nota:* La lectura por lote facilita priorización FEFO y revisión de riesgo. Elaboración propia.
> *Nota*. La lectura por lote facilita priorización FEFO y revisión de riesgo. Elaboración propia.

![Wireframe de detalle de lote para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-detalle-lote.jpg)

> *Nota:* El detalle permite revisar condiciones específicas del lote antes de tomar acción operativa. Elaboración propia.

> *Nota*. El detalle permite revisar condiciones específicas del lote antes de tomar acción operativa. Elaboración propia.


![Wireframe de creación o revisión operativa de pedido para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-crear-pedido-v2.jpg)

> *Nota:* Esta pantalla conecta información de pedido con revisión operativa y disponibilidad. Elaboración propia.
> *Nota*. Esta pantalla conecta información de pedido con revisión operativa y disponibilidad. Elaboración propia.


![Wireframe de despacho con pedidos listos para salir](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-listos-para-salir.jpg)

> *Nota:* El tablero de despacho agrupa pedidos listos y facilita priorizar salida. Elaboración propia.
> *Nota*. El tablero de despacho agrupa pedidos listos y facilita priorizar salida. Elaboración propia.

![Wireframe de registro de salida para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-modal-registro.jpg)

> *Nota:* El registro recoge datos necesarios para dejar constancia del despacho. Elaboración propia.
> *Nota*. El registro recoge datos necesarios para dejar constancia del despacho. Elaboración propia.


![Wireframe de notificación de despacho para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-notificacion.jpg)

> *Nota:* La notificación confirma que el cambio de estado fue comunicado dentro del flujo. Elaboración propia.

> *Nota*. La notificación confirma que el cambio de estado fue comunicado dentro del flujo. Elaboración propia.


![Wireframe de confirmación de despacho para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-confirmacion.jpg)

> *Nota:* La confirmación permite cerrar el paso operativo de salida y mantener trazabilidad. Elaboración propia.
> *Nota*. La confirmación formaliza la salida y reduce dependencia de coordinación verbal. Elaboración propia.


![Wireframe de reportes operativos para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-reportes-operativos-v2.jpg)

> *Nota:* Los reportes operativos consolidan indicadores de inventario, despacho y cierre. Elaboración propia.

#### S3 — B2B Buyer Portal

El recorrido S3 corresponde a Elena Litano como compradora B2B. En la Web Application, este segmento se materializa mediante el Buyer Portal, cuyo propósito es reducir dependencia de WhatsApp, llamadas o coordinación manual para consultar catálogo, enviar solicitudes y revisar pedidos.

| Vista del Buyer Portal | Tipo | Propósito UX | Ruta canónica |
|---|---|---|---|
| Home | Flujo principal | Mostrar resumen de actividad, pedidos, solicitudes y accesos frecuentes | `/portal/home` |
| Product Catalog | Flujo principal | Permitir búsqueda y selección de productos disponibles | `/portal/product-catalog` |
| Product Detail | Flujo principal | Revisar información del producto antes de solicitarlo | `/portal/product-catalog/:id` |
| Constructor de solicitud (`Request Builder`) | Flujo principal | Confirmar productos, cantidades y datos de solicitud | `/portal/request-builder` |
| My Requests | Flujo principal | Revisar solicitudes enviadas y su estado | `/portal/purchase-requests` |
| Request Detail | Flujo principal | Consultar trazabilidad inicial, comentarios y estado de solicitud | `/portal/purchase-requests/:id` |
> *Nota*. Los reportes operativos consolidan actividad, inventario, despacho e incidencias. Elaboración propia.

### 4.4.2. Web Applications Wireflow Diagrams.

Los wireflows actualizados conectan las pantallas principales de S1 y S2 con sus recorridos de trabajo. S3 permanece documentado como flujo comprador planificado, sin afirmar pantallas completas de portal en TB1.

|---|---|---|---|---|
| Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior | S1 — Commercial Coordination — Valeria Sánchez | Login → Dashboard comercial → Clientes → Detalle de cliente → Pedido asistido → Selección de productos → Resumen → Confirmación → Detalle de pedido → Reportes | Lucidchart S1 | El recorrido conecta la revisión comercial del cliente con la captura asistida del pedido y su seguimiento posterior, evitando que la coordinación dependa de mensajes dispersos |
| Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo y reportes | S2 — Operations / Account Owner — Roberto García | Login → Dashboard logístico → Inventario general → Inventario por lote → Detalle de lote → Revisión operativa de pedido → Despacho → Registro de salida → Notificación → Confirmación → Reportes operativos | Lucidchart S2 y wireflow S2 documentado como figura | El recorrido conecta lectura de inventario, priorización FEFO, despacho y cierre operativo con evidencia de entrega simulada para sostener trazabilidad operativa |
| Consultar catálogo, enviar solicitud, revisar pedido y acceder a tracking/documentos visibles | S3 — B2B Buyer Portal — Elena Litano | Login → Portal Home → Product Catalog → Product Detail → constructor de solicitud (`Request Builder`) → My Requests → My Orders → Order Detail / Tracking → Business Documents → Payment Methods | Mockups desktop de alta fidelidad, rutas canónicas, task flow y wireflow S3 visual | El recorrido representa la experiencia de autoservicio del comprador B2B mediante una secuencia funcional trazable |

**Figura. Wireflow principal para S1 — Commercial Coordination**
| Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior. | S1: Coordinación comercial / ventas internas — Valeria Sánchez | Login → Dashboard comercial → Clientes → Detalle de cliente → Pedido asistido → Selección de productos → Resumen → Confirmación → Detalle de pedido → Reportes. | Lucidchart S1. | El recorrido conecta la revisión comercial del cliente con la captura asistida del pedido y su seguimiento posterior, evitando que la coordinación dependa de mensajes dispersos. |
| Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo y reportes. | S2: Jefatura logística / coordinación operativa — Roberto García | Login → Dashboard logístico → Inventario general → Inventario por lote → Detalle de lote → Revisión operativa de pedido → Despacho → Registro de salida → Notificación → Confirmación → Reportes operativos. | Lucidchart S2 y wireflow S2 documentado como figura. | El recorrido conecta lectura de inventario, priorización FEFO, despacho y cierre simulado para sostener trazabilidad operativa en Sprint 2. |
| Consultar catálogo, seleccionar productos y revisar pedidos desde una experiencia de portal B2B. | S3: Comprador B2B / cliente comercial — Elena Litano | Portal comprador → Catálogo → Detalle de producto → Carrito / pedido → Confirmación de pedido → Órdenes / seguimiento. | Flujo planificado. | El recorrido representa el portal comprador como alcance de planificación TB1. No se declara cobertura completa de mockups S3 en esta entrega. |

![Wireflow S2 principal](../assets/images/chapter-4/webapp/wireflows/wireflow-s2-jefatura-logistica-coordinacion-operativa.png)

> *Nota.* El wireflow muestra la continuidad visual entre dashboard logístico, inventario, lote, despacho, confirmación y reportes operativos. Elaboración propia.

**Figura. Wireflow principal para S3 — B2B Buyer Portal**

> *Nota*. El wireflow muestra la continuidad visual entre dashboard logístico, inventario, lote, despacho, confirmación y reportes operativos. Elaboración propia.

*Figura. Wireflow complementario para S2: Jefatura logística / coordinación operativa*

![Wireflow S2 complementario](../assets/images/chapter-4/webapp/wireflows/wireflow-s2-jefatura-logistica-coordinacion-operativa-alt.png)


| Grupo de mockups | Segmento | User goal | Pantallas incluidas | Propósito |
|---|---|---|---|---|
| S1 — Commercial Coordination | Valeria / S1 | Crear y seguir un pedido asistido | Login, dashboard, cliente, pedido, detalle, reportes | Evidenciar captura comercial guiada, validaciones y trazabilidad |
| S2 — Operations / Account Owner | Roberto / S2 | Controlar inventario, despacho y evidencia de entrega simulada (`Proof of Delivery` / POD) | Dashboard, inventario, lote, despacho, evidencia de entrega simulada, reportes | Evidenciar monitoreo FEFO, operación logística y cierre operativo |
| S3 — B2B Buyer Portal | Elena / S3: B2B Buyer Portal | Comprar y hacer seguimiento desde portal B2B | Login/Portal Entry, Home, Product Catalog, Product Detail, Request Builder, My Requests, My Orders/Tracking, Business Documents | Evidenciar el portal de autoservicio B2B con mockups desktop y mobile incorporados |

#### S1 — Commercial Coordination: mockups de pedido asistido

![S1 Mock Ups](../assets/images/chapter-4/webapp/mockups/commercial.png)

> *Nota:* Este grupo muestra el recorrido comercial desde la selección de perfil hasta la evidencia de pedido y reportes. Las pantallas se eligieron porque cubren los puntos decisivos del user goal: acceso por rol, lectura de estado, revisión de cliente, armado de pedido, trazabilidad por creador y análisis comercial. Elaboración propia.

#### S2 — Operations / Account Owner: mockups de operación logística

![S2 jefatura logística](../assets/images/chapter-4/webapp/mockups/operations.png)

> *Nota.* Este grupo resume el recorrido operativo desde monitoreo hasta cierre operativo con evidencia de entrega simulada. Las pantallas seleccionadas cubren dashboard, inventario, lote, despacho, evidencia de entrega simulada (`Proof of Delivery` / POD) y reportes operativos, que son las evidencias visuales más representativas del flujo S2. Elaboración propia.

#### S3 — B2B Buyer Portal: mockups de autoservicio B2B
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

> *Nota*. Este grupo muestra el recorrido comercial desde la selección de perfil hasta la evidencia de pedido y reportes. Las pantallas se eligieron porque cubren los puntos decisivos del user goal: acceso por rol, lectura de estado, revisión de cliente, armado de pedido, trazabilidad por creador y análisis comercial. Elaboración propia.

#### S2: Jefatura logística / coordinación operativa — mockups de operación logística

![S2 Dashboard jefatura logística](../assets/images/chapter-4/webapp/mockups/s2-02-dashboard-logistics.png)


#### Criterios de resolución de flujo


*Tabla: Niveles de resolución de flujo aplicados en Nexa*

| Nivel | Aplicación en Nexa | Representación en esta sección |
| Nivel | Aplicación en Nexa | Evidencia en esta sección |
| **User Goal** | Objetivo operativo de cada persona dentro del flujo B2B refrigerado | Objetivos de S1, S2 y S3 derivados del needfinding |
| **Task Flow** | Secuencia de acciones necesarias para completar solicitud, validación, despacho o seguimiento | Tabla por segmento |
| **Task Flow** | Secuencia de acciones necesarias para completar el pedido, despacho o seguimiento | Tabla por segmento |
| **Wireflow** | Continuidad visual entre pantallas de la webapp | Lucidchart S1, Lucidchart S2 y figura de wireflow S2 |

*Tabla: User Goals, Task Flows y referencias de flujo por segmento*

| Segmento | Persona | User Goal | Resumen de task flow | Wireflow | User Flow |
|---|---|---|---|---|---|
| S1 — Commercial Coordination | Valeria Sánchez | Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior | Login — perfil Valeria → Dashboard comercial → Clientes → Detalle de cliente → Validación de condición comercial → Pedido asistido → Selección de productos → Validación de disponibilidad → Confirmación del pedido → Detalle y seguimiento del pedido → Reportes comerciales | [Wireflow S1 en Lucidchart](https://lucid.app/lucidchart/4aeb3b33-353d-4b0c-b978-5bed19d4fdca/edit?viewport_loc=-11%2C-11%2C3028%2C1465%2C0_0&invitationId=inv_c95b5cdc-7bd7-46ad-aa88-0fa213649397) | Userflow S1 en Lucidchart |
| S2 — Operations / Account Owner | Roberto García | Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo, evidencias y administración de empresa | Login — perfil Roberto → Dashboard operativo → Inventario → Detalle de lote → Revisión FEFO y stock → Priorización operativa → Tablero de despacho → Confirmación de despacho → Evidencia de entrega simulada → Validación de evidencia → Reportes operativos → Company Administration si corresponde | [Wireflow S2 en Lucidchart](https://lucid.app/lucidchart/6573c628-5545-4360-8fb2-3bb444c7e648/edit?viewport_loc=-298%2C-263%2C3315%2C1788%2C0_0&invitationId=inv_5e548793-b34d-43ed-b8fc-0f9dd7cf81a5) | Userflow S2 en Lucidchart |
| S3 — B2B Buyer Portal | Elena Litano | Consultar catálogo, enviar solicitud, revisar pedidos, acceder a documentos y seguir el estado del despacho con mayor autonomía | Login — perfil Elena → Portal Home → Product Catalog → Product Detail → constructor de solicitud (`Request Builder`) → My Requests → My Orders → Order Detail / Tracking → Business Documents → Payment Methods | Wireflow S3 visual incorporado en esta sección | User flow S3 visual incorporado en esta sección |
|:---|:---|:---|:---|:---|:---|
| S1: Coordinación comercial / ventas internas | Valeria Sánchez | Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior | Login — perfil Valeria → Dashboard comercial → Clientes → Detalle de cliente → Validación de condición comercial → Pedido asistido → Selección de productos → Validación de disponibilidad → Confirmación del pedido → Detalle y seguimiento del pedido → Reportes comerciales | [Wireflow S1 en Lucidchart](https://lucid.app/lucidchart/4aeb3b33-353d-4b0c-b978-5bed19d4fdca/edit?viewport_loc=-11%2C-11%2C3028%2C1465%2C0_0&invitationId=inv_c95b5cdc-7bd7-46ad-aa88-0fa213649397) | Userflow S1 en Lucidchart |
| S2: Jefatura logística / coordinación operativa | Roberto García | Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo y reportes | Login — perfil Roberto → Dashboard logístico → Inventario → Detalle de lote → Revisión FEFO y stock → Priorización operativa → Tablero de despacho → Confirmación de despacho → POD mock → Validación de evidencia → Reportes operativos | [Wireflow S2 en Lucidchart](https://lucid.app/lucidchart/6573c628-5545-4360-8fb2-3bb444c7e648/edit?viewport_loc=-298%2C-263%2C3315%2C1788%2C0_0&invitationId=inv_5e548793-b34d-43ed-b8fc-0f9dd7cf81a5) | Userflow S2 en Lucidchart |
| S3: Comprador B2B / cliente comercial | Elena Litano | Consultar catálogo, seleccionar productos y revisar pedidos desde una experiencia de portal B2B | Login — perfil Elena → Portal comprador → Catálogo → Detalle de producto → Carrito / pedido → Confirmación de pedido → Órdenes / seguimiento | Flujo comprador planificado | Flujo comprador documentado como alcance de planificación TB1 |

> *Nota:* Los user goals provienen de la síntesis complementaria de Needfinding. Los task flows resumen la secuencia de acciones sin entrar en decisiones específicas, que se detallan en los user flows. S3 se documenta como flujo de planificación en la primera iteración; los flujos S1 y S2 constituyen la evidencia de validación principal. Elaboración propia.

---

[Ver userflow S1 en Lucidchart](https://lucid.app/lucidchart/8f6d6af2-f229-47f8-ba02-86b27cdc6fed/edit?invitationId=inv_09391266-7e11-4614-8edf-12cf979cdabf)

![S1 User flow coordinación comercial](../assets/images/chapter-4/webapp/user-flows/s1-commercial-userflow-lucid.png)

**Figura. User flow visual para S1 — Commercial Coordination.**

Figura. User flow visual para S1: Coordinación comercial / ventas internas.

#### User Flow S2 — Jefatura logística: inventario, despacho y cierre

[Ver userflow S2 en Lucidchart](https://lucid.app/lucidchart/b91c8e98-a38b-456a-92e5-f942be7e8439/edit?invitationId=inv_5c030713-67e5-4e84-90bf-661b26cef528)

![S2 User flow jefatura logística](../assets/images/chapter-4/webapp/user-flows/s2-logistics-userflow-lucid.png)

**Figura. User flow visual para S2 — Operations / Account Owner.**

#### User Flow S3 — B2B Buyer Portal: solicitud, pedido y seguimiento

El user flow de S3 representa el recorrido de Elena como compradora B2B. El flujo conecta el descubrimiento, acceso, construcción de solicitudes, pedidos confirmados, documentos y estado del pago. Esta representación diagramática complementa los mockups desktop y mobile de alta fidelidad incorporados en esta sección.
Figura. User flow visual para S2: Jefatura logística / coordinación operativa.

#### User Flow S3 — Comprador B2B: portal de compra

Para S3: Comprador B2B / cliente comercial, el flujo se mantiene como alcance parcial de TB1. Se documenta a nivel de planificación para conectar catálogo, pedido y seguimiento, sin afirmar pantallas webapp implementadas ni mockups finales completos en esta entrega.

```mermaid
flowchart LR
    A["S3: Comprador B2B / cliente comercial"] --> B["Consulta catálogo"]
    B --> C["Revisa disponibilidad y condiciones"]

#### Tabla de consistencia: User Goals, wireflows y user flows

| User goal | Persona | Wireflow | User flow | Representación en esta sección | Cobertura documentada |
|---|---|---|---|---|---|
| Registrar pedido asistido validando cliente, condición comercial y disponibilidad de producto | Valeria Sánchez (S1) | [Wireflow S1 en Lucidchart](https://lucid.app/lucidchart/4aeb3b33-353d-4b0c-b978-5bed19d4fdca/edit?viewport_loc=-11%2C-11%2C3028%2C1465%2C0_0&invitationId=inv_c95b5cdc-7bd7-46ad-aa88-0fa213649397) | Userflow S1 en Lucidchart | Lucidchart + mockups S1 seleccionados | Recorrido comercial documentado con assets visuales |
| User goal | Persona | Wireflow | User flow | Evidencia visual | Estado TB1 |
|:---|:---|:---|:---|:---|:---|
| Registrar pedido asistido validando cliente, condición comercial y disponibilidad de producto | Valeria (S1) | [Wireflow S1 en Lucidchart](https://lucid.app/lucidchart/4aeb3b33-353d-4b0c-b978-5bed19d4fdca/edit?viewport_loc=-11%2C-11%2C3028%2C1465%2C0_0&invitationId=inv_c95b5cdc-7bd7-46ad-aa88-0fa213649397) | Userflow S1 en Lucidchart | Lucidchart + mockups S1 seleccionados | Documentado e implementado en webapp |
| Supervisar inventario FEFO, coordinar despacho y cerrar entrega con POD mock | Roberto (S2) | [Wireflow S2 en Lucidchart](https://lucid.app/lucidchart/6573c628-5545-4360-8fb2-3bb444c7e648/edit?viewport_loc=-298%2C-263%2C3315%2C1788%2C0_0&invitationId=inv_5e548793-b34d-43ed-b8fc-0f9dd7cf81a5) + figura de wireflow S2 | Userflow S2 en Lucidchart | Lucidchart + mockups S2 seleccionados | Documentado e implementado en webapp |
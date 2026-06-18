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
| Design System | Cards, badges, botones, tablas, modals y espaciado se aplican de forma consistente | Usa los patrones visuales y componentes documentados en 4.1 |
| Flujo por user goal | Wireframes, wireflows y user flows se agrupan por objetivo de usuario | Relaciona las vistas con la organización por responsabilidades de negocio de 4.2 |
| Responsive y densidad operativa | S1/S2 priorizan desktop/tablet; S3 prioriza autoservicio y lectura clara | Conserva la diferenciación de superficies indicada en 4.1 y 4.2 |

### 4.4.1. Web Applications Wireframes

Los wireframes de la Web Application se organizan por segmento operativo y por flujo de trabajo. La evidencia visual de wireframes cubre principalmente S1 y S2; S3 cuenta con mockups desktop y mobile de alta fidelidad incorporados en esta sección como adaptación responsive del flujo.

*Tabla: Wireframes de la Web Application por segmento*

| Segmento | Pantallas documentadas | Recorrido cubierto | Representación en esta sección |
|---|---|---|---|
| S1 — Commercial Coordination | Login, dashboard comercial, clientes, detalle de cliente, pedidos, creación de pedido, selección de productos, resumen, detalle de pedido y reportes | Ingreso, revisión comercial, gestión de clientes, registro de pedido, selección de productos, confirmación, seguimiento y consulta de reportes | Wireframes visuales incluidos en los assets del reporte |
| S2 — Operations / Account Owner | Login, dashboard logístico, inventario general, inventario por lote, detalle de lote, revisión operativa de pedido, despacho, registro de salida, notificación, confirmación y reportes operativos | Ingreso, control de inventario, revisión por lote, preparación de despacho, registro operativo, confirmación de salida y lectura de reportes | Wireframes visuales incluidos en los assets del reporte |
| S3 — B2B Buyer Portal | Home, Product Catalog, Product Detail, constructor de solicitud (`Request Builder`), My Requests, My Orders, Business Documents, Premium y Profile | Consulta de catálogo, armado de solicitud, revisión de solicitudes, seguimiento de pedidos y documentos visibles | Mockups desktop y mobile de alta fidelidad, rutas canónicas, task flow, wireflow visual y user flow S3 exportado |

#### S1 — Commercial Coordination

El recorrido S1 cubre el trabajo de Valeria Sánchez desde el ingreso a la plataforma hasta la consulta de reportes comerciales. La secuencia prioriza captura clara de pedidos, revisión de cliente, validación comercial, selección de productos y trazabilidad del pedido creado.

**Figura. Wireframe de login para S1**

![Wireframe de login para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-login.jpg)

> *Nota:* La pantalla de ingreso separa el acceso autenticado del recorrido público de la Landing Page. Elaboración propia.

**Figura. Wireframe de dashboard comercial para S1**

![Wireframe de dashboard comercial para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-dashboard.jpg)

> *Nota:* El dashboard reúne estado de pedidos, alertas comerciales y accesos a tareas frecuentes. Elaboración propia.

**Figura. Wireframe de lista de clientes para S1**

![Wireframe de lista de clientes para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-clientes-lista.jpg)

> *Nota:* La lista permite ubicar clientes y revisar información comercial antes de iniciar o validar un pedido. Elaboración propia.

**Figura. Wireframe de detalle de cliente para S1**

![Wireframe de detalle de cliente para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-detalle-cliente.jpg)

> *Nota:* El detalle concentra condiciones, datos relevantes y contexto necesario para decidir si el pedido puede avanzar. Elaboración propia.

**Figura. Wireframe de lista de pedidos para S1**

![Wireframe de lista de pedidos para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-pedidos-lista.jpg)

> *Nota:* La bandeja de pedidos ordena estados, prioridades y acceso rápido al detalle. Elaboración propia.

**Figura. Wireframe de creación de pedido para S1**

![Wireframe de creación de pedido para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido.jpg)

> *Nota:* La captura inicial del pedido separa cliente, condiciones y datos base para reducir ambigüedad. Elaboración propia.

**Figura. Wireframe de selección de productos para S1**

![Wireframe de selección de productos para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido-productos.jpg)

> *Nota:* La selección de productos ayuda a revisar cantidades, disponibilidad y composición del pedido. Elaboración propia.

**Figura. Wireframe de resumen de pedido para S1**

![Wireframe de resumen de pedido para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-crear-pedido-resumen.jpg)

> *Nota:* El resumen permite confirmar información antes de registrar o convertir el pedido. Elaboración propia.

**Figura. Wireframe de detalle de pedido para S1**

![Wireframe de detalle de pedido para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-detalle-pedido.jpg)

> *Nota:* El detalle sostiene seguimiento comercial y lectura del historial de la orden. Elaboración propia.

**Figura. Wireframe de reportes para S1**

![Wireframe de reportes para S1](../assets/images/chapter-4/webapp/wireframes/s1-coordinacion-comercial-ventas-internas/wireframe-reportes.jpg)

> *Nota:* Los reportes comerciales consolidan información para revisar actividad, pedidos y desempeño del flujo. Elaboración propia.

#### S2 — Operations / Account Owner

El recorrido S2 cubre el trabajo de Roberto García desde el ingreso a la plataforma hasta la lectura de reportes operativos. La secuencia prioriza inventario, lotes, criterio FEFO, despacho, registro de salida, confirmación, evidencias y control operativo. Además, S2 asume la administración de empresa, cuenta, accesos y tenant, sin crear un segmento Admin separado.

**Figura. Wireframe de login para S2**

![Wireframe de login para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-login.jpg)

> *Nota:* El acceso mantiene la separación por rol antes de entrar a módulos operativos. Elaboración propia.

**Figura. Wireframe de dashboard logístico para S2**

![Wireframe de dashboard logístico para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-dashboard-logistica.jpg)

> *Nota:* El dashboard logístico prioriza pedidos en riesgo, inventario, preparación y despacho. Elaboración propia.

**Figura. Wireframe de inventario general para S2**

![Wireframe de inventario general para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-inventario-vista-general.jpg)

> *Nota:* La vista general muestra disponibilidad, clasificación y señales operativas de inventario. Elaboración propia.

**Figura. Wireframe de inventario por lote para S2**

![Wireframe de inventario por lote para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-inventario-por-lote.jpg)

> *Nota:* La lectura por lote facilita priorización FEFO y revisión de riesgo. Elaboración propia.

**Figura. Wireframe de detalle de lote para S2**

![Wireframe de detalle de lote para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-detalle-lote.jpg)

> *Nota:* El detalle permite revisar condiciones específicas del lote antes de tomar acción operativa. Elaboración propia.

**Figura. Wireframe de creación o revisión operativa de pedido para S2**

![Wireframe de creación o revisión operativa de pedido para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-crear-pedido-v2.jpg)

> *Nota:* Esta pantalla conecta información de pedido con revisión operativa y disponibilidad. Elaboración propia.

**Figura. Wireframe de despacho con pedidos listos para salir**

![Wireframe de despacho con pedidos listos para salir](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-listos-para-salir.jpg)

> *Nota:* El tablero de despacho agrupa pedidos listos y facilita priorizar salida. Elaboración propia.

**Figura. Wireframe de registro de salida para S2**

![Wireframe de registro de salida para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-modal-registro.jpg)

> *Nota:* El registro recoge datos necesarios para dejar constancia del despacho. Elaboración propia.

**Figura. Wireframe de notificación de despacho para S2**

![Wireframe de notificación de despacho para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-notificacion.jpg)

> *Nota:* La notificación confirma que el cambio de estado fue comunicado dentro del flujo. Elaboración propia.

**Figura. Wireframe de confirmación de despacho para S2**

![Wireframe de confirmación de despacho para S2](../assets/images/chapter-4/webapp/wireframes/s2-jefatura-logistica-coordinacion-operativa/wireframe-despacho-confirmacion.jpg)

> *Nota:* La confirmación permite cerrar el paso operativo de salida y mantener trazabilidad. Elaboración propia.

**Figura. Wireframe de reportes operativos para S2**

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
| My Orders | Flujo principal | Revisar órdenes confirmadas | `/portal/purchase-orders` |
| Order Detail | Flujo principal | Consultar tracking, documentos y estado operativo | `/portal/purchase-orders/:id` |
| Business Documents | Flujo principal | Acceder a documentos visibles para el comprador | `/portal/business-documents` |
| Payment Methods | Flujo principal | Gestionar método de pago y revisar estado de pago cuando corresponde | `/portal/payment-methods` |
| Premium | Soporte | Revisar beneficios comerciales o promociones destacadas del portal | `/portal/premium` |
| Profile | Soporte | Revisar datos de cuenta del comprador | `/portal/profile` |
| Legal Terms | Soporte | Consultar términos legales del portal | `/portal/legal/terms` |
| Privacy | Soporte | Consultar información de privacidad del portal | `/portal/legal/privacy` |
| Support | Soporte | Acceder a ayuda o canal de comunicación del comprador | `/portal/support` |

Para S3 — B2B Buyer Portal, esta sección documenta el flujo principal separado de las rutas de soporte legal/comunicacional. S3 cuenta con mockups desktop y mobile de alta fidelidad incorporados en esta sección como evidencia visual del flujo responsive.

### 4.4.2. Web Applications Wireflow Diagrams

Los wireflows conectan pantallas, decisiones y estados de interfaz. En Nexa se organizan por user goal para mantener trazabilidad entre el needfinding, la arquitectura de información, los mockups y la solución diseñada.

*Tabla: Wireflows por user goal*

| User goal | Segmento y persona | Task flow resumido | Tipo de artefacto documentado | Explicación |
|---|---|---|---|---|
| Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior | S1 — Commercial Coordination — Valeria Sánchez | Login → Dashboard comercial → Clientes → Detalle de cliente → Pedido asistido → Selección de productos → Resumen → Confirmación → Detalle de pedido → Reportes | Lucidchart S1 | El recorrido conecta la revisión comercial del cliente con la captura asistida del pedido y su seguimiento posterior, evitando que la coordinación dependa de mensajes dispersos |
| Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo y reportes | S2 — Operations / Account Owner — Roberto García | Login → Dashboard logístico → Inventario general → Inventario por lote → Detalle de lote → Revisión operativa de pedido → Despacho → Registro de salida → Notificación → Confirmación → Reportes operativos | Lucidchart S2 y wireflow S2 documentado como figura | El recorrido conecta lectura de inventario, priorización FEFO, despacho y cierre operativo con evidencia de entrega simulada para sostener trazabilidad operativa |
| Consultar catálogo, enviar solicitud, revisar pedido y acceder a tracking/documentos visibles | S3 — B2B Buyer Portal — Elena Litano | Login → Portal Home → Product Catalog → Product Detail → constructor de solicitud (`Request Builder`) → My Requests → My Orders → Order Detail / Tracking → Business Documents → Payment Methods | Mockups desktop de alta fidelidad, rutas canónicas, task flow y wireflow S3 visual | El recorrido representa la experiencia de autoservicio del comprador B2B mediante una secuencia funcional trazable |

**Figura. Wireflow principal para S1 — Commercial Coordination**

![Wireflow S1 principal](../assets/images/chapter-4/webapp/wireflows/wireflow-s1.jpeg)

> *Nota.* El wireflow muestra la continuidad visual del flujo comercial desde el inicio de sesión, dashboard comercial, gestión de clientes, selección de productos, validación de disponibilidad, confirmación del pedido y reportes comerciales. Elaboración propia.

**Figura. Wireflow principal para S2 — Operations / Account Owner**

![Wireflow S2 principal](../assets/images/chapter-4/webapp/wireflows/wireflow-s2-jefatura-logistica-coordinacion-operativa.png)

> *Nota.* El wireflow muestra la continuidad visual entre dashboard logístico, inventario, lote, despacho, confirmación y reportes operativos. Elaboración propia.

**Figura. Wireflow principal para S3 — B2B Buyer Portal**

![Wireflow S3 principal](../assets/images/chapter-4/webapp/wireflows/wireflow-s3-b2b-buyer-portal.png)

> *Nota.* El wireflow muestra la continuidad visual del Buyer Portal desde el login de Elena hasta el dashboard B2B, catálogo, detalle de producto, constructor de solicitud, solicitudes, pedidos, documentos de negocio y métodos de pago. Elaboración propia.

### 4.4.3. Web Applications Mock-ups

Los mockups representan pantallas seleccionadas de alta fidelidad para la dirección visual de la Web Application. Se agrupan por segmento y user goal para mostrar evidencia visual sin convertir el capítulo en una galería extensa. S3 cuenta con mockups desktop y mobile de alta fidelidad incorporados en esta sección como evidencia visual responsive.

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

![S3 B2B](../assets/images/chapter-4/webapp/mockups/b2b.png)

> *Nota:* Este grupo muestra el recorrido del comprador B2B dentro del portal, desde el acceso por perfil hasta la consulta y seguimiento de sus pedidos. Las pantallas se eligieron porque cubren los puntos decisivos del user goal: ingreso al portal, revisión de información comercial disponible, consulta de productos o pedidos, seguimiento del estado de atención y visualización de evidencias asociadas al proceso de compra. Elaboración propia.

**Vistas de Dispositivo Móvil (Mobile Mockups)**:

#### S1 — Commercial Coordination: mockups de pedido asistido

![S1 Mock Ups](../assets/images/chapter-4/webapp/mockups/commercial-mobile.png)

#### S2 — Operations / Account Owner: mockups de operación logística

![S2 jefatura logística](../assets/images/chapter-4/webapp/mockups/operator-mobile.png)

#### S3 — B2B Buyer Portal: mockups de autoservicio B2B

![S3 B2B](../assets/images/chapter-4/webapp/mockups/b2b-mobile.png)

*Nota: La cobertura mobile se documenta mediante mockups responsive incorporados en esta sección para S1, S2 y S3.*

### 4.4.4. Web Applications User Flow Diagrams

#### Criterios de resolución de flujo

Para mantener trazabilidad entre investigación, diseño y solución, los recorridos de la Web Application se documentan en cuatro niveles: User Goal, Task Flow, Wireflow y User Flow. La lectura se mantiene por segmento para no mezclar responsabilidades entre coordinación comercial, Operations / Account Owner y comprador B2B.

*Tabla: Niveles de resolución de flujo aplicados en Nexa*

| Nivel | Aplicación en Nexa | Representación en esta sección |
|---|---|---|
| **User Goal** | Objetivo operativo de cada persona dentro del flujo B2B refrigerado | Objetivos de S1, S2 y S3 derivados del needfinding |
| **Task Flow** | Secuencia de acciones necesarias para completar solicitud, validación, despacho o seguimiento | Tabla por segmento |
| **Wireflow** | Continuidad visual entre pantallas de la Web Application | Lucidchart S1, Lucidchart S2 y figuras de wireflow S2/S3 |
| **User Flow** | Decisiones, rutas alternativas y estados del recorrido | Diagramas visuales Lucidchart para S1/S2/S3 |

*Tabla: User Goals, Task Flows y referencias de flujo por segmento*

| Segmento | Persona | User Goal | Resumen de task flow | Wireflow | User Flow |
|---|---|---|---|---|---|
| S1 — Commercial Coordination | Valeria Sánchez | Registrar o asistir un pedido B2B validando cliente, condición comercial, disponibilidad de productos y seguimiento posterior | Login — perfil Valeria → Dashboard comercial → Clientes → Detalle de cliente → Validación de condición comercial → Pedido asistido → Selección de productos → Validación de disponibilidad → Confirmación del pedido → Detalle y seguimiento del pedido → Reportes comerciales | https://lucid.app/lucidchart/4aeb3b33-353d-4b0c-b978-5bed19d4fdca/edit?viewport_loc=-11%2C-11%2C3028%2C1465%2C0_0&invitationId=inv_c95b5cdc-7bd7-46ad-aa88-0fa213649397| Userflow S1 en Lucidchart |
| S2 — Operations / Account Owner | Roberto García | Supervisar inventario, lotes, riesgos FEFO, despacho, cierre operativo, evidencias y administración de empresa | Login — perfil Roberto → Dashboard operativo → Inventario → Detalle de lote → Revisión FEFO y stock → Priorización operativa → Tablero de despacho → Confirmación de despacho → Evidencia de entrega simulada → Validación de evidencia → Reportes operativos → Company Administration si corresponde | https://lucid.app/lucidchart/6573c628-5545-4360-8fb2-3bb444c7e648/edit?viewport_loc=-298%2C-263%2C3315%2C1788%2C0_0&invitationId=inv_5e548793-b34d-43ed-b8fc-0f9dd7cf81a5 | Userflow S2 en Lucidchart |
| S3 — B2B Buyer Portal | Elena Litano | Consultar catálogo, enviar solicitud, revisar pedidos, acceder a documentos y seguir el estado del despacho con mayor autonomía | Login — perfil Elena → Portal Home → Product Catalog → Product Detail → constructor de solicitud (`Request Builder`) → My Requests → My Orders → Order Detail / Tracking → Business Documents → Payment Methods | https://lucid.app/lucidchart/6484c9d8-fa54-40a2-aea6-449700cd2285/edit?viewport_loc=-6260%2C-4950%2C18517%2C9389%2C0_0&invitationId=inv_fd80fa67-4315-4bbd-8ce0-56f1f3243954  | User flow S3 en Lucidchart|

#### User Flow S1 — Commercial Coordination: validación y pedido asistido

El user flow de S1 representa el recorrido de Valeria, responsable de coordinación comercial, desde el acceso al sistema hasta la creación y seguimiento de un pedido asistido. El flujo incluye validaciones de condición comercial, disponibilidad de productos y rutas alternativas para restricciones de cliente o cantidad insuficiente.

https://lucid.app/lucidchart/8f6d6af2-f229-47f8-ba02-86b27cdc6fed/edit?invitationId=inv_09391266-7e11-4614-8edf-12cf979cdabf

![S1 User flow coordinación comercial](../assets/images/chapter-4/webapp/user-flows/s1-commercial-userflow-lucid.png)

**Figura. User flow visual para S1 — Commercial Coordination.**

#### User Flow S2 — Operations / Account Owner: inventario, despacho y cierre

El user flow de S2 representa el recorrido de Roberto, responsable de operaciones y cuenta, desde la revisión de inventario y lotes con criterio FEFO hasta la gestión de despacho y cierre con evidencia de entrega simulada (`Proof of Delivery` / POD). El flujo incluye rutas alternativas para riesgo operativo, despacho no listo, evidencia incompleta y administración de empresa cuando corresponde al account owner.

https://lucid.app/lucidchart/b91c8e98-a38b-456a-92e5-f942be7e8439/edit?invitationId=inv_5c030713-67e5-4e84-90bf-661b26cef528

![S2 User flow jefatura logística](../assets/images/chapter-4/webapp/user-flows/s2-logistics-userflow-lucid.png)

**Figura. User flow visual para S2 — Operations / Account Owner.**

#### User Flow S3 — B2B Buyer Portal: solicitud, pedido y seguimiento

El user flow de S3 representa el recorrido de Elena como compradora B2B. El flujo conecta el descubrimiento, acceso, construcción de solicitudes, pedidos confirmados, documentos y estado del pago. Esta representación diagramática complementa los mockups desktop y mobile de alta fidelidad incorporados en esta sección.

https://lucid.app/lucidchart/fd9a95ac-41df-4050-b097-9ac255290e45/edit?view_items=jV76JIpS~GQ~%2CEE-69fu3SEZn%2C.x869HhjmLNZ%2CRK-6ZJxNGbXU%2CL196QvicmQVg%2ClU76RF2avL6M%2CAG-6WBY~X2a7%2CHp-6tXcRsOlP%2C-A-6w-SDYvhl%2C4C-6akbc7L6h%2Cl276CkhOmWTU%2CQy-6BvPXAV~n%2Co-96vNrpwFv4%2CiH-6tPVlqJ~t%2C_S76DK_lKxe0%2CDJ-6oe-3SeFb%2CNU76~dYYOGKw%2C4y-6KmugLEqt%2CmT763XdIavdu%2CZB-670PGAeBO%2C1T763mBjJlI6%2CeQ96-oZnMWG9%2CPA-6sghQQ68V%2C6U76LKo6njtH%2CCL-6Tizg1zZf%2C3K-6Rk5lg8Hb%2CuB-66-HzZfqH%2CYz-6kid1ejZ3%2CQC-6z8A~3dBL%2CxI-6DgDxHBfQ%2CgU76PxI~0a53%2CjD-6cAXRji8p%2CvI86ERula6-o%2Czv-6MAfnpLo3%2Cn976MIfJMQX~%2Cws-6d_5MiM4_%2Cg776~27srzo6%2CGA86Vy0STfAp%2C5B86w3ydsgO1%2Cy276~Zfq8YbP%2CNt-6w-GgvXLa%2C8076KHyf8nyv%2Cvy86n.J~nj8x%2CK376xZksEcUG%2CN776KbACctwI&page=0_0&invitationId=inv_4888a70f-e0f1-4797-83ed-a762247133cb

![S3 User flow B2B Buyer Portal](../assets/images/chapter-4/webapp/user-flows/s3-buyer-portal-userflow-lucid.png)

**Figura. User flow documentado para S3 — B2B Buyer Portal.**


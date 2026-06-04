## 4.5. Web Applications Prototyping.


El prototipo se relaciona directamente con la arquitectura de información definida en la sección 4.2 y con los user flows documentados en la sección 4.4. Por ello, la navegación no se organiza solo por pantallas, sino por responsabilidades de negocio: S3 consulta catálogo y envía solicitudes, S1 valida comercialmente y convierte solicitudes de compra (`Purchase Requests`) en órdenes de compra (`Purchase Orders`), y S2 ejecuta inventario, despacho, evidencias y administración de empresa/tenant.

El prototipado constituye **evidencia de diseño interactivo**. La evidencia de implementación, ejecución, despliegue académico AV2 y servicios simulados se documenta en el Capítulo V.

La evidencia visual y audiovisual incluida cubre los recorridos principales de S1, S2 y S3 dentro de la Web Application. Los flujos de S1 y S2 se documentan con soporte interactivo de la consola interna, mientras que S3 (B2B Buyer Portal) incorpora mockups desktop y mobile de alta fidelidad en la sección 4.4. La cobertura mobile se documenta mediante mockups responsive incorporados en el reporte.
| Evidencia de prototipado | Propósito |

**Tabla. Criterios aplicados para las decisiones de interacción del prototipo**

| Criterio | Aplicación en Nexa | Relación con arquitectura de información |
|---|---|---|
| Navegación por responsabilidad | S1, S2 y S3 acceden a módulos distintos según su rol y alcance operativo | Refuerza la separación entre Commercial Coordination, Operations / Account Owner y Buyer Portal |
| Continuidad de flujo | Los recorridos conectan login, dashboard, entidades de negocio, detalle y confirmación | Evita que las pantallas funcionen como vistas aisladas |
| Progressive disclosure | Los detalles se muestran mediante drawers, modales, pasos guiados o vistas de detalle | Reduce carga cognitiva y mantiene contexto operativo |
| Feedback de estado | Badges, confirmaciones y mensajes permiten entender el avance de solicitudes, pedidos y despachos | Comunica trazabilidad sin depender solo del color |
| Densidad adaptada | La Web Application interna prioriza desktop/tablet por volumen operativo; el Buyer Portal prioriza claridad y autoservicio en desktop y mobile | Responde a diferencias de uso entre usuarios internos y compradores B2B |
| Flujo | Segmento | Cobertura en prototipo | Evidencia | Estado TB1 |

**Tabla. Artefactos de prototipado y cobertura documentada**

| Artefacto de prototipado | Propósito | Cobertura documentada |
|---|---|---|
| [Proyecto Figma del equipo](https://www.figma.com/files/team/1586383034175281439/project/587167294) | Espacio maestro con wireframes, mockups y decisiones visuales del equipo | Referencia visual del diseño del producto |
| [Archivo Figma de la Web Application](https://www.figma.com/design/buDa5VZmYjPNokbl4FEJqx/Web-App?node-id=0-1) | Prototipo navegable con frames conectados de la aplicación | Recorridos principales de la Web Application interna |
| [Video del prototipo — Web y Móvil](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202323040_upc_edu_pe/IQAOXrLcl2ziRpTDa5QgX__QARetYOg71_XS5G2YR84vlVs?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=MTgzyN) | Video de recorrido del prototipo Web y Mobile | Enlace audiovisual del prototipo de Web Application interna |
| [FigJam — Userflow y Wireflow S1/S2](https://www.figma.com/board/LjIjtyfoOpeYa5OCSJUYpD/Nexa-Ops-S1-S2-Userflow-Wireflow?node-id=0-1&t=F9ZnAAAzCUpiK4qs-1) | Board de trabajo para validar rutas, flujos y decisiones de interacción | Wireflow y userflow de S1/S2 |
| Screenshot de video para Web Application interna | Captura de referencia audiovisual del prototipo | Figura incluida en esta sección |
| Buyer Portal S3 | Recorrido del comprador B2B | Cobertura funcional mediante rutas canónicas, paths de navegación y user flow definido en 4.4 |
| Mobile Web Browser | Adaptación responsive del prototipo | Criterios responsive, paths de navegación y enlace audiovisual incluido |

**Tabla. Cobertura de prototipado por flujo y segmento**

| Flujo | Segmento | Cobertura en prototipo | Representación en esta sección |
|---|---|---|---|
| Validación y pedido asistido | S1 — Commercial Coordination | Dashboard comercial, cuentas de cliente (`Client Accounts`), detalle de cliente, registro manual de pedido (`Manual Order Entry`), selección de productos, detalle de pedido y reportes | Figma, FigJam, captura audiovisual y userflow S1 |

![Captura del prototipo de la web application](../assets/images/chapter-4/webapp/prototyping/prototyping.jpeg)

**Figura. Captura del video de prototipo mostrando la sección de clientes y el drawer de perfil del cliente dentro del flujo S1. Elaboración propia.**

### Video de prototyping WebApp Sprint 3

El video inicia con el flujo de S1 — Commercial Coordination y luego incorpora los cambios hacia S2 — Operations / Account Owner y S3 — B2B Buyer Portal. La grabación permite evidenciar la navegación integrada del prototipo WebApp y su comportamiento de interacción para los segmentos principales.

![Video de prototyping WebApp Sprint 3](../assets/images/chapter-4/webapp/prototyping/prototyping-webapp-sprint-3-video.png)

| Elemento | Detalle |
|---|---|
| Video | `upc-pre-202610-1asi0730-12242-nexa-webapp-prototype-sprint-3` |
| Plataforma | Microsoft Stream / SharePoint |
| URL | [Microsoft Stream / SharePoint](https://upcedupe-my.sharepoint.com/personal/u202416289_upc_edu_pe/_layouts/15/stream.aspx?id=%2Fpersonal%2Fu202416289%5Fupc%5Fedu%5Fpe%2FDocuments%2Fupc%2Dpre%2D202610%2D%201asi0730%2D12242%2Dking%2Fnexa%2Dprototype%2Fupc%2Dpre%2D202610%2D1asi0730%2D12242%2Dnexa%2Dwebbapp%2Emp4&referrer=StreamWebApp%2EWeb&referrerScenario=AddressBarCopied%2Eview%2E739e15be%2D2efd%2D49c4%2Da343%2D4cb5d8cab16a) |
| Duración | `6:46` |
| Segmento S1 | Inicio del recorrido |
| Cambio a segmento S2 | `1:44` |
| Cambio a segmento S3 | `3:49` |
| Evidencia visual | `prototyping-webapp-sprint-3-video.png` |

### 4.5.1. Sistema de navegación aplicado al prototipo


| Superficie | Segmento | Navegación principal | Propósito |
|---|---|---|---|
| Web Application interna | S1 — Commercial Coordination | Dashboard comercial, catálogo, solicitudes de compra (`Purchase Requests`), órdenes de compra (`Purchase Orders`), registro manual de pedido (`Manual Order Entry`), cuentas de cliente (`Client Accounts`) y documentos comerciales (`Business Documents`) | Validar solicitudes, revisar clientes, crear o convertir pedidos y gestionar documentos comerciales |
| Web Application interna | S2 — Operations / Account Owner | Dashboard operativo, control de inventario (`Inventory Control`), lotes de inventario (`Inventory Lots`), órdenes de despacho (`Dispatch Orders`), evidencia de entrega (`Proof of Delivery` / POD), analítica operativa (`Operational Analytics`), promociones, portales de cliente (`Customer Portals`) y administración de empresa (`Company Administration`) | Controlar inventario, lotes, despacho, evidencias, operación y configuración de empresa/tenant |
| Buyer Portal | S3 — B2B Buyer Portal | Home, catálogo de productos (`Product Catalog`), constructor de solicitud (`Request Builder`), mis solicitudes (`My Requests`), mis órdenes (`My Orders`), documentos comerciales (`Business Documents`), beneficios premium y perfil (`Profile`) | Permitir autoservicio del comprador para solicitar productos, revisar pedidos, documentos y tracking |

La navegación es **role-aware**: el usuario autenticado accede a una experiencia según su perfil y alcance operativo. S1 y S2 comparten la consola interna, pero no necesariamente comparten la misma prioridad de módulos. S3 utiliza el Buyer Portal como superficie separada para evitar exposición innecesaria de información operativa interna.

### 4.5.2. Interacciones principales del prototipo

El prototipo utiliza patrones de interacción consistentes con la arquitectura de información y los user flows. Las interacciones no se plantean como animaciones decorativas, sino como respuestas a decisiones del negocio: validar un cliente, confirmar productos, revisar disponibilidad, despachar una orden o consultar un estado.

| Patrón de interacción | Uso en el prototipo | Segmento |
|---|---|---|
| Login con selección de experiencia | Permite entrar a la superficie correspondiente según usuario autenticado | S1, S2, S3 |
| Dashboard inicial | Resume actividad relevante y accesos frecuentes | S1, S2, S3 |
| Tablas con filtros | Permiten revisar solicitudes, clientes, pedidos, lotes y despachos | S1, S2 |
| Drawers de detalle | Muestran información contextual sin abandonar la vista principal | S1, S2 |
| Flujo guiado por pasos | Permite construir o revisar una solicitud/pedido antes de confirmar | S1, S3 |
| Estados visuales | Comunican avance de solicitud, pedido, inventario o despacho | S1, S2, S3 |
| Confirmaciones | Reducen errores antes de registrar cambios importantes | S1, S2, S3 |
| Tracking y documentos visibles | Permiten al comprador consultar avance y soporte documental | S3 |

### 4.5.3. Paths de prototipo por user goal

Los paths del prototipo siguen los user flows definidos en 4.4. Cada recorrido cubre un objetivo de usuario y una secuencia de interacción esperada.

| Segmento | User goal | Path de prototipo | Cobertura documentada |
|---|---|---|---|
| S1 — Commercial Coordination | Registrar o asistir un pedido B2B validando cliente, condición comercial y disponibilidad | Login → Commercial Dashboard → Client Accounts → Client Detail → Manual Order Entry → Product Selection → Order Summary → Purchase Order Detail → Commercial Reports | Recorrido visual y audiovisual de pedido asistido |
| S2 — Operations / Account Owner | Supervisar inventario, lotes, despacho, evidencia de entrega simulada (`Proof of Delivery` / POD) y reportes operativos | Login → Operations Dashboard → Inventory Control → Inventory Lots → Lot Detail → Dispatch Orders → Dispatch Detail → Proof of Delivery → Operational Analytics | Recorrido visual y audiovisual de control operativo |
| S3 — B2B Buyer Portal | Consultar catálogo, enviar solicitud, revisar pedidos, documentos y tracking | Login → Portal Home → Product Catalog → Product Detail → Request Builder → My Requests → My Orders → Order Detail / Tracking → Business Documents | Cobertura funcional mediante rutas canónicas, paths de navegación y user flow definido en 4.4 |

### 4.5.4. Evidencia audiovisual del prototipo por aplicación

La evidencia de prototipado se presenta diferenciando la experiencia en pantallas grandes y dispositivos móviles. Esto permite validar la consistencia visual y la adaptabilidad de la interfaz en sus distintas superficies de uso.

*   **Desktop Web Browser**:
    *   **S1 y S2 (Consola Interna)**: Prototipo navegable interactivo de la consola interna, complementado con un video descriptivo de recorrido y una captura referencial en esta sección.
    *   **S3 (B2B Buyer Portal)**: Prototipo de autoservicio para el comprador, representado visualmente por el set de 8 mockups de escritorio incorporados en la sección 4.4.
*   **Mobile Web Browser**:
    *   **S1 y S2 (Consola Interna)**: Adaptación responsive de pantallas operativas densas descrita mediante criterios de adaptabilidad y mostrada en el video de recorrido enlazado.
    *   **S3 (B2B Buyer Portal)**: La adaptación móvil del Buyer Portal se documenta mediante mockups responsive incorporados en la sección 4.4.

**Diferenciación de Fases de Diseño**:
Es importante destacar que las capturas de wireframes (sección 4.4.1) y los mockups interactivos finales representan etapas metodológicas distintas. Los wireframes de baja/media fidelidad sirvieron para validar la distribución de elementos e interacción básica con el usuario comercial, mientras que los mockups de alta fidelidad y el prototipo final navegable representan la definición visual terminada e integrada de Nexa.

| Aplicación / superficie | Desktop Web Browser | Mobile Web Browser | Tipo de artefacto | Enlace audiovisual / representación |
|---|---|---|---|---|
| Web Application interna — S1/S2 | Prototipo navegable de consola interna | Adaptación responsive descrita por criterios de prototipo y video enlazado | Screenshot incluido y video de recorrido | [Video del prototipo — Web y Móvil](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202323040_upc_edu_pe/IQAOXrLcl2ziRpTDa5QgX__QARetYOg71_XS5G2YR84vlVs?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=MTgzyN) |
| Buyer Portal — S3 | Mockups de alta fidelidad del portal B2B incorporados en 4.4 | Adaptación móvil del Buyer Portal documentada mediante mockups responsive | Mockups desktop y mobile incorporados | Cobertura responsive documentada en 4.4 |

### 4.5.5. Relación entre prototipo, user flows e implementación

El prototipo se usa como puente entre diseño e implementación. Su función es demostrar que las rutas de navegación, módulos y decisiones de interacción son coherentes con los user goals definidos para cada segmento.

La navegación es **rol-consciente**: S1: Coordinación comercial / ventas internas ve por defecto Pedidos y Clientes; S3: Comprador B2B / cliente comercial ve Catálogo, Mis pedidos y Seguimiento; S2: Jefatura logística / coordinación operativa ve Gestión operativa, Despachos y Evidencias. Los *call-to-actions* primarios (crear pedido, despachar, cerrar entrega) se mantienen siempre visibles como *floating action* en la parte inferior derecha del frame, respetando la lógica **mobile-first**. Las transiciones entre frames siguen el principio de *progressive disclosure*: el usuario avanza solo cuando el sistema ya puede confirmar stock, crédito o estado, evitando pantallas intermedias sin valor.
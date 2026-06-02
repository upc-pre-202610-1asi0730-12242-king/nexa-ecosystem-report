
La Landing Page es la superficie pública de entrada al ecosistema Nexa. Su función principal es comunicar la propuesta de valor, explicar el problema operativo que resuelve la plataforma, segmentar visitantes por tipo de operación y dirigirlos hacia una demostración, contacto comercial o acceso autenticado al producto.

Esta sección traduce las decisiones definidas en **4.1 Style Guidelines** y **4.2 Information Architecture** hacia una propuesta visual concreta. La Landing Page no replica las pantallas internas de la Web Application ni del Buyer Portal; su objetivo es presentar el valor de Nexa mediante una narrativa clara, jerarquía visual consistente, CTAs visibles, lenguaje profesional, contacto identificable, canales de confianza y adaptación responsive.

La propuesta visual documentada en esta sección mantiene correspondencia con la Landing Page pública del proyecto: [https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/). La evidencia de despliegue, ejecución y validación se documenta en el Capítulo V; esta sección se concentra en la propuesta UI, wireframes y mockups.

El mensaje principal de la Landing Page resume la promesa de Nexa: **coordinar pedidos B2B refrigerados con mayor visibilidad entre compra, ventas, inventario y despacho**. A partir de ese pitch message, la interfaz organiza el contenido en una secuencia progresiva: problema operativo, propuesta de valor, capacidades de la plataforma, rutas por tipo de empresa, confianza institucional, preguntas frecuentes y puntos de conversión.

Cada elemento del sitio público mantiene continuidad con una capacidad del producto. Las páginas de **Solutions** funcionan como rutas comerciales para empresas interesadas; no reemplazan los segmentos funcionales del producto. Los segmentos operativos definitivos siguen siendo **S1 — Commercial Coordination**, **S2 — Operations / Account Owner** y **S3 — B2B Buyer Portal**.

| Elemento de la Landing Page | Intención de diseño | Continuidad en el producto | Superficie relacionada |
|---|---|---|---|
| Hero / Pitch message | Presentar el problema operativo y la promesa central de Nexa en el primer contacto visual | Introduce el flujo transversal: S3 solicita, S1 valida y S2 ejecuta | Landing Page |
| CTA `Request a demo` / `Solicitar una demostración` | Convertir el interés del visitante en contacto comercial | Contacto guiado, revisión de operación y explicación del demo | Landing Page / Company contact |
| CTA `Log in` / `Ingresar` | Permitir acceso a usuarios autenticados | Entrada al sistema mediante login | `#/auth/login` |
| Home | Presentar el problema, la promesa de valor y el recorrido principal | Explica la relación entre pedidos, disponibilidad, coordinación y despacho | Landing Page |
| Platform | Explicar capacidades de catálogo, pedidos, inventario, despacho y trazabilidad | Conecta la propuesta pública con dashboards y módulos internos | `/ops/commercial/dashboard`, `/ops/operations/dashboard`, `/portal/home` |
| Solutions Hub | Segmentar la comunicación por tipo de empresa interesada | Permite que importadores, distribuidores y operadores de almacenamiento entiendan el valor según su operación | Landing Page |
| Importers & Wholesalers | Comunicar valor para operaciones con abastecimiento, stock y lotes | Relaciona validación comercial, disponibilidad e inventario | `/ops/commercial/purchase-requests`, `/ops/operations/inventory-control` |
| Distributors | Comunicar el flujo principal de pedido B2B, disponibilidad, despacho y evidencia | Relaciona Buyer Portal, solicitudes de compra (`Purchase Requests`), órdenes de compra (`Purchase Orders`) y órdenes de despacho (`Dispatch Orders`) | `/portal/product-catalog`, `/ops/commercial/purchase-requests`, `/ops/operations/dispatch-orders` |
| Cold Storage Operators | Comunicar control de almacenamiento, trazabilidad y operación refrigerada | Relaciona inventario, lotes, control operativo y trazabilidad | `/ops/operations/inventory-control`, `/ops/operations/operational-analytics` |
| Company | Generar confianza y presentar el contexto del equipo | Refuerza credibilidad antes del contacto comercial | Landing Page |
| FAQ | Reducir fricción antes de solicitar una demostración | Responde dudas sobre implementación, seguridad, datos, alcance y contacto | Landing Page |
| Footer / Contact support | Ofrecer canales de contacto, navegación de soporte y acceso a redes sociales | Facilita acceso a email, contacto, FAQ, soluciones y canales de confianza | Landing Page |

|---|---|---|
| Jerarquía visual | Hero con pitch message, subtítulo, CTAs y bloques de valor | Prioriza comprensión rápida antes de navegación profunda |
| Navegación global | Navbar con acceso a Platform, Solutions, Company, FAQ y CTAs | Refuerza el sistema de navegación definido en 4.2 |
| Segmentación comercial | Solutions organiza rutas para importadores, distribuidores y operadores de cámaras frías | Permite explicar la propuesta por tipo de empresa interesada |
| Conversión | CTAs visibles para solicitar demostración, iniciar sesión o continuar hacia contacto | Conecta navegación pública con acciones concretas del visitante |
| Contacto y confianza | Company, FAQ y footer concentran información institucional, soporte, email y redes sociales | Reduce incertidumbre antes de compartir datos comerciales |
| Consistencia visual | Uso de colores, tipografía, cards, botones y espaciado definidos en 4.1 | Mantiene continuidad con el Design System de Nexa |
| Diseño inclusivo | Texto legible, contraste, CTAs identificables, labels claros y navegación simple | Reduce fricción para visitantes con distintos niveles de familiaridad tecnológica |
| CTA "Ingresar" | Acceso autenticado al sistema | [Webapp login](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-webapp/#/auth/login) |

| Criterio | Aplicación en wireframe | Aplicación en mockup | Relación con 4.1 / 4.2 |
|---|---|---|---|
| Jerarquía visual | Ordena hero, problema, solución y CTA antes de contenidos secundarios | Refuerza jerarquía con escala tipográfica, color, contraste y espaciado | Aplica la jerarquía visual definida en 4.1 y la navegación progresiva de 4.2 |
| Arquitectura de información | Distribuye navegación en Platform, Solutions, Company y FAQ | Mantiene la misma estructura con señales visuales, secciones y CTAs consistentes | Alinea la Landing Page con los sistemas de organización y navegación de 4.2 |
| Diseño inclusivo | Define labels claros, lectura progresiva y bloques reconocibles | Aplica contraste, botones identificables y composición legible | Conecta con accesibilidad, tono y principios visuales de 4.1 |
| Responsive design | Plantea navegación colapsada, hero compacto y stack vertical | Valida adaptación mobile con menor densidad y continuidad visual | Responde a la orientación responsive descrita en 4.1 y 4.2 |
| Conversión | Ubica CTAs hacia demo, contacto o login dentro del recorrido | Hace visibles las acciones principales sin saturar la interfaz | Vincula la narrativa pública con las rutas de acceso documentadas en 4.2 |

### 4.3.1. Landing Page Wireframe

La Landing Page de Nexa se trabajó primero en **Figma** mediante wireframes de baja fidelidad. En esta etapa se ordenaron contenido, jerarquía de secciones, navegación, rutas por tipo de visitante y puntos de conversión antes de pasar a mockups de mayor detalle.
La landing page de Nexa se trabajó primero en **Figma** mediante wireframes de baja fidelidad. En esta etapa se ordenaron contenido, jerarquía de secciones, navegación, rutas por tipo de visitante y puntos de conversión antes de pasar a mockups de mayor detalle.

Los wireframes permiten validar la arquitectura de información sin distraer la revisión con colores, imágenes o estilos finales. La prioridad fue comprobar que el visitante pueda entender el problema, reconocer el tipo de operación al que pertenece, revisar la plataforma y encontrar una vía clara de contacto o acceso.


#### A. Desktop Web Browser

| Wireframe | Propósito de validación |
|---|---|
| Home | Validar la jerarquía inicial: problema, propuesta de valor, CTA y bloques principales |
| Platform | Validar la explicación funcional de la plataforma sin entrar a pantallas autenticadas |
| Solutions Hub | Validar la separación de rutas comerciales por tipo de operación |
| Company | Validar confianza, contexto del equipo y acceso al contacto |
| Distributors | Validar la comunicación del flujo principal B2B: pedido, inventario, despacho y evidencia |
| Importers & Wholesalers | Validar el mensaje para operaciones con abastecimiento, stock y lotes |
| FAQ | Validar agrupación de dudas frecuentes y reducción de fricción previa al contacto |

La página **Cold Storage Operators** reutiliza la misma plantilla de solución validada en las rutas de **Distributors** e **Importers & Wholesalers**, por lo que comparte estructura de hero, problema, propuesta de valor, capacidades y CTA.

![Wireframe desktop de Home](../assets/images/chapter-4/landing/wireframes/desktop/home-wireframe.jpg)

> *Nota:* La portada organiza hero, propuesta principal, CTA y primeros bloques de valor para un visitante que llega por primera vez al sitio. Elaboración propia.

**Figura. Wireframe desktop de Platform**

![Wireframe desktop de Platform](../assets/images/chapter-4/landing/wireframes/desktop/platform-wireframe.jpg)

> *Nota:* La página Platform ordena módulos, beneficios funcionales y lectura general de la solución sin entrar todavía a pantallas autenticadas. Elaboración propia.

**Figura. Wireframe desktop de Solutions**
*Figura. Wireframe desktop de Solutions*

![Wireframe desktop de Solutions](../assets/images/chapter-4/landing/wireframes/desktop/solutions-wireframe.jpg)

> *Nota:* El hub de Solutions separa rutas públicas para visitantes interesados en distribución, importación, mayoristas y cámaras frías. Elaboración propia.


![Wireframe desktop de Company](../assets/images/chapter-4/landing/wireframes/desktop/company-wireframe.jpg)

> *Nota:* La página Company da contexto institucional al proyecto, presenta confianza y mantiene una vía clara hacia el contacto comercial. Elaboración propia.

**Figura. Wireframe desktop de Distribuidores**

![Wireframe desktop de Distribuidores](../assets/images/chapter-4/landing/wireframes/desktop/distributors-wireframe.jpg)

> *Nota:* La ruta para distribuidores enfatiza coordinación de pedidos, visibilidad operativa, despacho y continuidad de atención. Elaboración propia.

**Figura. Wireframe desktop de Importadores**

![Wireframe desktop de Importadores](../assets/images/chapter-4/landing/wireframes/desktop/importers-wireframe.jpg)

> *Nota:* La ruta para importadores y mayoristas prioriza abastecimiento, disponibilidad, lotes e inventario para operaciones B2B. Elaboración propia.
> *Nota*. La ruta para importadores y mayoristas prioriza abastecimiento, disponibilidad y lectura de inventario para operaciones B2B. Elaboración propia.

**Figura. Wireframe desktop de FAQ**

![Wireframe desktop de FAQ](../assets/images/chapter-4/landing/wireframes/desktop/faq-wireframe.jpg)


#### B. Mobile Web Browser

La versión móvil conserva la misma secuencia pública, pero reduce densidad visual y concentra navegación, lectura de propuesta y CTA en una estructura vertical más compacta. La prioridad mobile es que el visitante pueda comprender rápidamente qué hace Nexa, acceder al menú, revisar el mensaje principal y llegar al CTA sin depender de una pantalla amplia.

La vista mobile de Home funciona como muestra representativa del patrón responsive aplicado a la Landing Page. Este patrón considera navegación colapsada, hero compacto, CTAs visibles, secciones en stack vertical, lectura progresiva, menor densidad visual y continuidad con la arquitectura de información definida en 4.2.

| Criterio mobile | Aplicación esperada |
|---|---|
| Navegación | Menú colapsado con acceso a rutas principales |
| Lectura | Secciones en stack vertical con títulos breves |
| CTA | Botones visibles y con área táctil suficiente |
| Jerarquía | Hero, problema, solución y contacto en orden progresivo |
| Accesibilidad | Contraste, labels claros y elementos interactivos reconocibles |


![Wireframe mobile de Home](../assets/images/chapter-4/landing/wireframes/mobile/home-wireframe.jpg)


### 4.3.2. Landing Page Mock-up

Una vez validada la estructura, los mockups se desarrollaron en **Figma** para fijar tratamiento visual, jerarquía de botones, ritmo de secciones, color, tipografía e identidad de marca. Los mockups aplican el Design System definido en 4.1 y respetan la arquitectura de información descrita en 4.2.

Las capturas corresponden al recorrido principal en **Desktop Web Browser** y a una muestra de adaptación para **Mobile Web Browser**. En esta etapa se valida la apariencia final de la Landing Page: uso de color, tipografía, espaciado, contraste, cards, CTAs, bloques informativos y consistencia visual entre páginas.
Una vez validada la estructura, los mockups se desarrollaron en **Figma** para fijar tratamiento visual, jerarquía de botones, ritmo de secciones, color, tipografía e identidad de marca. Las capturas corresponden al recorrido principal en **Desktop Web Browser** y a una muestra de adaptación para **Mobile Web Browser**.

#### A. Desktop Web Browser

| Mockup | Criterio UI validado |
|---|---|
| Home | Mensaje principal, CTA, jerarquía editorial y cierre de conversión |
| Platform | Explicación de capacidades mediante módulos y bloques visuales |
| Company | Confianza, presentación del equipo y soporte de contacto |
| Distributors | Flujo de pedido B2B, FEFO, despacho y visibilidad operativa |
| Importers & Wholesalers | Abastecimiento, lotes, disponibilidad e inventario |

**Figura. Mockups de Landing Page**

![Mockups de landing page](../assets/images/chapter-4/landing/mockups/desktop/landing-page.png)

> Nota: Mockups de la version de escritorio de la landing page. Elaboración propia.
*Figura. Mockup desktop de Platform*

![Mockup desktop de Platform](../assets/images/chapter-4/landing/mockups/desktop/platform.jpg)

> *Nota*. Platform muestra la propuesta funcional del producto mediante módulos, beneficios operativos y lectura de plataforma. Elaboración propia.

#### B. Mobile Web Browser

La adaptación móvil mantiene el mismo lenguaje visual del sitio público y prioriza lectura vertical, CTA visible, navegación compacta y bloques más breves para consulta desde teléfono. Esta vista valida que la identidad visual de Nexa no dependa exclusivamente del formato desktop.

El mockup mobile de Home valida el patrón visual responsive aplicable al sitio público: navegación colapsada, hero compacto, CTAs visibles, secciones en stack vertical, lectura progresiva, menor densidad visual y continuidad con el sistema de navegación documentado en 4.2.
*Figura. Mockup mobile de Home*

| Criterio UI mobile | Aplicación en el mockup |
|---|---|
| Hero compacto | Mensaje principal y CTA visibles al inicio |
| Secciones apiladas | Cards y bloques reordenados en una sola columna |
| Navegación táctil | Menú compacto y botones con mayor área de interacción |
| Continuidad visual | Mismos colores, tipografía y estilo de cards que desktop |

**Figura. Mockup mobile de Home**

![Mockup mobile de Home](../assets/images/chapter-4/landing/mockups/mobile/mobile-landing-mockups.png)

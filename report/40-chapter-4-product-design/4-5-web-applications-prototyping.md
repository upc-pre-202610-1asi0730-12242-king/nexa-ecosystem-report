## 4.5. Web Applications Prototyping.

<p align="justify">
El prototipado de la web application en Nexa debe leerse como la consolidación navegable de los artefactos ya desarrollados en la sección 4.4. Si los wireframes definieron estructura, los mock-ups resolvieron jerarquía visual y los user flows explicaron la lógica de interacción, el prototipo integra esas capas en una experiencia continua que permite revisar coherencia entre módulos, transiciones y puntos de decisión.
</p>

<p align="justify">
En esta etapa, el equipo articuló el prototipo en <strong>Figma</strong> y dejó además un recorrido audiovisual que permite revisar la navegación sin depender todavía de una implementación autenticada en producción. Por eso esta subsección funciona como evidencia de diseño integrado y de preparación funcional del producto.
</p>

| Evidencia de prototipado | Propósito |
|---|---|
| [Proyecto Figma del equipo](https://www.figma.com/files/team/1586383034175281439/project/587167294) | Preservar el espacio maestro donde se organizan wireframes, mock-ups y decisiones de diseño |
| [Archivo Figma de la web application](https://www.figma.com/design/buDa5VZmYjPNokbl4FEJqx/Web-App?node-id=0-1) | Verificar la versión navegable y los frames conectados de la aplicación autenticada |
| [Recorrido del prototipo (Web)](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202323040_upc_edu_pe/IQC3ykPGDqn4Sra12gTSQKf4ATYJUS89I621TTxwWaqo81k?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=1UDCU7) | Mostrar el recorrido principal del prototipo web como evidencia visual de navegación |
| [Mobile Application Prototype - Video Evidence](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202323040_upc_edu_pe/IQDBP5iLNJedR6OhB8Sivc1rAaVCa4SDrxvranY5tTLbkPM?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=QD00j7) | Evidencia audiovisual del prototipo de la aplicación móvil (mobile-first), mostrando la navegación desde dispositivo móvil |

<p align="justify">
La utilidad metodológica del prototipo es doble. Primero, permite revisar continuidad entre módulos sin depender todavía de desarrollo productivo. Segundo, ofrece una base defendible para explicar cómo evolucionará Nexa desde su capa pública hacia su capa transaccional. En otras palabras, el prototipo no sustituye al desarrollo, pero sí reduce el riesgo de que la implementación futura contradiga lo ya investigado, priorizado y diseñado.
</p>

*Captura referencial del prototipo de la web application*

![Captura del prototipo de la web application](../assets/images/webapp-mockups/webapp-dashboard-operativo-total-control.png)

Elaboración propia. La captura corresponde a la pantalla principal del prototipo y resume la lógica de dashboard operativo utilizada como punto de entrada a la aplicación.

*Prueba de interacción del prototipo de la aplicación móvil*

![Mobile Application Prototype Proof](../assets/images/mobile-browser/mobile-application-prototype-proof.png)

Elaboración propia. Evidencia visual del prototipo ejecutado directamente en dispositivo móvil como validación del diseño responsive.


<p align="justify">
Bajo esta lectura, el prototipado debe presentarse con honestidad de alcance: constituye <strong>evidencia de diseño integrado</strong>, no evidencia de despliegue autenticado ni de operación real en producción. Su valor en el informe es mostrar que la web application ya fue pensada como un sistema consistente y recorrible antes de entrar en fases posteriores de implementación.
</p>

### 4.5.1. Sistema de navegación aplicado al prototipo

<p align="justify">
El prototipo aplica un <strong>sistema de navegación jerárquico por rol</strong> con un nivel global y dos niveles contextuales, consistente con la arquitectura de información definida en la sección 4.2. El nivel global se expresa en un <em>top bar</em> persistente con identidad de marca, selector de contexto (empresa activa) y acciones de cuenta; el primer nivel contextual se expresa en un <em>side navigation</em> por módulo del dominio (Catálogo, Pedidos, Inventario, Clientes, Despacho, Trazabilidad); el segundo nivel se expresa como <em>tabs</em> y <em>breadcrumbs</em> dentro de cada módulo para movimientos laterales sin perder contexto.
</p>

<p align="justify">
La navegación es <strong>rol-consciente</strong>: el Segmento 1 (coordinación comercial) ve por defecto Pedidos y Clientes; el Segmento 3 (compradores B2B) ve Catálogo, Mis pedidos y Seguimiento; el Segmento 2 (jefatura logística) ve Gestión operativa, Despachos y Evidencias. Los <em>call-to-actions</em> primarios (crear pedido, despachar, cerrar entrega) se mantienen siempre visibles como <em>floating action</em> en la parte inferior derecha del frame, respetando la lógica <strong>mobile-first</strong>. Las transiciones entre frames siguen el principio de <em>progressive disclosure</em>: el usuario avanza solo cuando el sistema ya puede confirmar stock, crédito o estado, evitando pantallas intermedias sin valor.
</p>

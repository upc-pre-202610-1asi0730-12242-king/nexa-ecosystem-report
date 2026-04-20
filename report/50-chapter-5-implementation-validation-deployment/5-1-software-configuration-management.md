# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

<p align="justify">
La gestión de la configuración del software establece las bases técnicas, herramientas y normativas que el equipo de Ingeniería de Software utilizará para garantizar la integridad, calidad y versionado de los artefactos de la plataforma Nexa durante todo su ciclo de vida.
</p>

### 5.1.1. Software Development Environment Configuration

<p align="justify">
Para estandarizar el desarrollo y asegurar la compatibilidad entre las estaciones de trabajo de los miembros del equipo, se ha definido el siguiente ecosistema de herramientas:
</p>

**Gestión de Proyecto y Documentación:**

- **Jira Software:** Utilizado para la gestión estricta del Product Backlog, seguimiento de los Sprints y asignación de responsabilidades bajo el marco de trabajo ágil Scrum.

- **Markdown:** Empleado para la redacción de la documentación académica oficial bajo el estándar Docs-as-Code de la UPC.

**Diseño y Experiencia de Usuario (UX/UI):**

- **Figma:** Herramienta principal para el prototipado de alta fidelidad, creación de Wireframes y gestión de la biblioteca de componentes visuales (Style Guidelines).

- **UXPressia:** Plataforma utilizada para el modelado de User Personas y Customer Journey Maps.

**Desarrollo Integrado (IDE) y Arquitectura:**

- **Visual Studio Code:** Editor de código estandarizado para la maquetación e implementación de la Landing Page. El sitio público se construye con HTML5 semántico, CSS personalizado y JavaScript vanilla, sin dependencia de frameworks externos, garantizando compatibilidad, rendimiento y autonomía de despliegue.

- **Rider (JetBrains):** Entorno de desarrollo principal para la construcción del Backend y el API RESTful utilizando C# y ASP.NET Core.

- **Visual Paradigm:** Empleado para la diagramación de la arquitectura de software bajo el modelo C4 (Context, Container, Component, Code), diagramas de clases, diagramas de base de datos y modelado de dominio (EventStorming).

### 5.1.2. Source Code Management

<p align="justify">
El equipo aplica el flujo de trabajo GitFlow para garantizar trazabilidad, integración continua y separación de entornos en todos los repositorios del proyecto:
</p>

- **Rama `main` (Principal):** Contiene el código en estado de producción. Cada confirmación en esta rama representa una versión estable y validada.

- **Rama `develop` (Desarrollo):** Rama de integración principal donde se consolida el trabajo de todos los desarrolladores del equipo.

- **Ramas `feature/*` (Características):** Ramas efímeras creadas a partir de `develop` para trabajar en Historias de Usuario específicas (ej. `feature/US05-b2b-catalog`).

- **Ramas `release/*` (Versiones):** Ramas de preparación de entrega creadas desde `develop` cuando el sprint alcanza los criterios de aceptación (ej. `release/v1.0.0`).

- **Ramas `hotfix/*` (Correcciones):** Ramas de contingencia utilizadas para solucionar errores críticos detectados en producción.

<p align="justify">
Todas las integraciones hacia las ramas principales se realizan mediante Pull Requests, requiriendo la revisión y aprobación de al menos un miembro distinto al autor.
</p>

### 5.1.3. Source Code Style Guide & Conventions

<p align="justify">
Para garantizar la mantenibilidad y legibilidad del código fuente, el equipo aplica convenciones de codificación estandarizadas por la industria:
</p>

**Convención de Confirmaciones (Conventional Commits):** Todos los mensajes de commit siguen un formato semántico que facilita la trazabilidad:

- **feat:** para nuevas características o Historias de Usuario.
- **fix:** para la corrección de errores funcionales.
- **docs:** para actualizaciones exclusivas en documentación.
- **refactor:** para cambios de estructura sin modificar comportamiento.
- **ci:** para configuración de integración continua.

**Convenciones REST API:** Los endpoints del API RESTful siguen el estándar de recursos en plural y sustantivos (sin verbos en la URL):

- `GET /orders` — listado de pedidos
- `GET /orders/{id}` — detalle de un pedido
- `POST /orders` — creación de pedido
- `GET /products` — catálogo de productos
- `GET /products/{id}` — detalle de producto
- `GET /inventory` — estado del inventario

**Convenciones Backend (C# / ASP.NET Core):** PascalCase para Clases, Interfaces y Métodos; camelCase para variables locales y parámetros.

**Convenciones Frontend (HTML/CSS/JS):** El sitio público sigue las guías de estilo de Google HTML/CSS y la convención W3C para JavaScript. Los archivos CSS se organizan por responsabilidad en módulos separados (`tokens.css`, `main.css`, `components.css`, `layout.css`, `typography.css`, `buttons.css`, `patterns.css`). Los archivos JavaScript se estructuran por función (`interactions.js`, `animations.js`, `i18n.js`). Los identificadores HTML siguen la convención `kebab-case` para clases e IDs. El soporte bilingüe EN/ES se implementa mediante un módulo de internacionalización propio (`i18n.js`) sin dependencia de frameworks externos.

### 5.1.4. Software Deployment Configuration

<p align="justify">
El despliegue de los artefactos de software se realiza en entornos separados para garantizar escalabilidad y trazabilidad por ambiente:
</p>

- **Landing Page (`nexa-website`):** Desplegada en GitHub Pages con CI/CD automatizado desde la rama `main`. El sitio se organiza en una estructura multipágina con `index.html` como punto de entrada y subdirectorios `pages/` para secciones secundarias (`company.html`, `platform.html`, `faq.html`) y rutas de soluciones (`pages/solutions/distributors.html`, `pages/solutions/importers.html`, `pages/solutions/cold-storage.html`, `pages/solutions/index.html`). Los recursos estáticos (CSS, JS, imágenes) residen en `assets/`.

- **Backend (API RESTful) y Base de Datos:** Alojados en plataformas cloud de grado empresarial, garantizando procesamiento seguro de transacciones B2B y persistencia relacional. Esta capa corresponde a una fase posterior del desarrollo; por el momento el despliegue activo es exclusivamente la Landing Page.

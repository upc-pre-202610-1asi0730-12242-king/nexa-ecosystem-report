# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

<p align="justify">
La gestión de la configuración del software en Nexa se documenta a partir de la evidencia verificable disponible en el corte AV1: el tablero de trabajo en Jira, los repositorios GitHub del informe y del sitio público, el despliegue de la landing page y los artefactos de diseño y arquitectura elaborados durante la iteración. Esta sección distingue entre <strong>configuración efectivamente observable</strong> y <strong>capacidad planificada</strong>, evitando atribuir como desplegado aquello que en este hito aún permanece en backlog o en diseño técnico.
</p>

### 5.1.1. Software Development Environment Configuration

<p align="justify">
Para estandarizar el trabajo colaborativo del equipo y asegurar trazabilidad entre investigación, diseño, implementación y documentación, se configuró un entorno de trabajo compuesto por herramientas efectivamente observables en los repositorios revisados y por plataformas de coordinación ya utilizadas durante el Sprint 1. La siguiente tabla resume el entorno base con el que se produjo el incremento AV1.
</p>

*Configuración observable del entorno de desarrollo utilizada en AV1*

| Componente del entorno | Herramienta o tecnología | Uso dentro del proyecto | Evidencia verificable en AV1 |
|---|---|---|---|
| Gestión ágil | **Jira Software** | Planificación Scrum, Product Backlog, Sprint Backlog y seguimiento de issues `NX-###` | Tablero y capturas Jira utilizadas en `5.2.1` |
| Control de versiones | **GitHub** | Versionado del informe y del sitio público en repositorios separados | Repositorios `nexa-report` y `nexa-website` |
| Redacción del informe | **Markdown bajo enfoque Docs-as-Code** | Estructura por capítulos, versionado fino y ensamblado posterior del informe | Archivos numerados dentro de `report/` |
| Editor de implementación y documentación | **Visual Studio Code** | Edición del sitio estático y del informe técnico | Compatible con la estructura HTML/CSS/JS y Markdown observada |
| Diseño y prototipado | **Figma** | Wireframes, mockups y prototipos de la landing page y la web application | Enlaces y capturas referenciados en el Capítulo IV |
| Investigación UX | **UXPressia** | Consolidación de personas, empathy maps y journey maps | Artefactos citados en el Capítulo II |
| Modelado y arquitectura | **Visual Paradigm** | Diagramas C4, diseño orientado a objetos y base de datos | Diagramas del Capítulo IV |
| Stack del MVP público | **HTML5 + CSS3 + JavaScript vanilla** | Implementación visible de la landing page pública multipágina | Estructura de `index.html`, `pages/`, `assets/css/` y `assets/js/` en `nexa-website` |
| Internacionalización | **Módulo propio `i18n.js`** | Soporte bilingüe EN/ES en textos y metadatos | Archivo `assets/js/i18n.js` en `nexa-website` |
| Despliegue | **GitHub Pages** | Publicación del MVP público | URL activa del sitio web |

<p align="justify">
Adicionalmente, el corte AV1 deja preparada una capacidad técnica futura que todavía no debe confundirse con software implementado. El backlog y los capítulos de diseño ya prevén repositorios y componentes para <strong>web application</strong> y <strong>backend en ASP.NET Core</strong>; sin embargo, al cierre de esta revisión esa capa permanece como alcance modelado y priorizado, no como incremento desplegado.
</p>

### 5.1.2. Source Code Management

<p align="justify">
El control de versiones se organiza bajo una convención GitFlow adaptada al alcance real de AV1. La revisión de los repositorios activos permite distinguir una estructura mínima pero consistente de ramas y responsabilidades.
</p>

*Repositorios activos y configuración de versionado utilizada en AV1*

| Repositorio | Propósito | Rama principal observable | Otras ramas observables | URL |
|---|---|---|---|---|
| `nexa-report` | Informe técnico, trazabilidad académica y narrativa del proyecto | `main` | `develop`, `release/v1.0.0`, ramas de respaldo locales | [nexa-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-report) |
| `nexa-website` | Implementación del MVP público desplegado | `main` | `develop`, `release/v1.0.0` | [nexa-website](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |
| `nexa-webapp` | Evolución futura de la web application autenticada | Pendiente de verificación detallada en esta revisión | Pendiente de verificación detallada en esta revisión | [nexa-webapp](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp) |
| `nexa-platform` | Evolución futura del backend y servicios REST | Pendiente de verificación detallada en esta revisión | Pendiente de verificación detallada en esta revisión | [nexa-platform](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform) |

**Convención de ramas declarada para el proyecto**

- **`main`:** rama estable para artefactos validados y listos para entrega o exposición pública.
- **`develop`:** rama de integración prevista para consolidar cambios antes de liberarlos.
- **`feature/*`:** ramas de trabajo para cambios específicos de contenido, frontend o documentación.
- **`release/*`:** ramas de preparación del entregable.
- **`hotfix/*`:** ramas reservadas para correcciones críticas posteriores a una liberación.

<p align="justify">
En la práctica, `nexa-report` y `nexa-website` funcionan como dos flujos sincronizados: el primero preserva la justificación ingenieril y el segundo concentra la ejecución visible del MVP. Esta separación reduce ruido entre documentación y código y facilita relacionar commits, capturas Jira, artefactos de diseño y despliegue público dentro de un mismo sprint.
</p>

### 5.1.3. Source Code Style Guide & Conventions

<p align="justify">
Para garantizar mantenibilidad y lectura homogénea del proyecto, el equipo adopta convenciones explícitas tanto para el código fuente como para los artefactos documentales:
</p>

**Convención de commits (Conventional Commits):** Los mensajes siguen el patrón `type(scope): description`, en minúsculas y sin punto final.

- **feat:** para nuevas características o Historias de Usuario.
- **fix:** para la corrección de errores funcionales.
- **docs:** para actualizaciones exclusivas en documentación.
- **refactor:** para cambios de estructura sin modificar comportamiento.
- **ci:** para configuración de integración continua.

**Convenciones de repositorio y documentación**

- Prefijos numéricos por capítulo para asegurar orden de ensamblado.
- Rutas relativas para activos visuales dentro de `report/assets/images/`.
- Uso de títulos, subtítulos y numeración académica alineados al template UPC.
- Historias de usuario redactadas con criterios Gherkin y vinculadas a claves Jira del tipo `NX-###`.

**Convenciones de implementación visible**

- El sitio público mantiene una organización multipágina con archivos HTML por sección y assets desacoplados por responsabilidad.
- Los nombres de clases e identificadores del frontend siguen `kebab-case`.
- La lógica de internacionalización se centraliza en un módulo propio de JavaScript.

**Convenciones REST API planificadas**

Aunque el API no forma parte del despliegue activo de AV1, el capítulo 4 y el backlog ya fijan la convención REST basada en recursos en plural y sustantivos:

- `GET /orders` — listado de pedidos
- `GET /orders/{id}` — detalle de un pedido
- `POST /orders` — creación de pedido
- `GET /products` — catálogo de productos
- `GET /products/{id}` — detalle de producto
- `GET /inventory` — estado del inventario

**Convenciones de backend previstas:** PascalCase para clases y métodos; camelCase para parámetros y variables locales en el contexto de C# / ASP.NET Core.

### 5.1.4. Software Deployment Configuration

<p align="justify">
La configuración de despliegue de AV1 debe leerse en dos niveles: <strong>despliegue activo</strong> para el MVP público y <strong>despliegue proyectado</strong> para la capa transaccional aún no publicada. Esta distinción evita sobredeclarar capacidades no demostradas.
</p>

*Configuración de despliegue observable en el corte AV1*

| Elemento | Configuración o mecanismo | Estado en AV1 | Evidencia |
|---|---|---|---|
| Sitio público `nexa-website` | Publicación en **GitHub Pages** desde el repositorio del proyecto | **Activo** | [https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Calidad mínima del repositorio web | Workflow de **GitHub Actions** para `markdownlint` y `commitlint` en `main` y `develop` | **Activo en repositorio** | Archivo `.github/workflows/lint.yml` en `nexa-website` |
| Informe técnico `nexa-report` | Gestión Docs-as-Code y compilación posterior a PDF | **Activo como repositorio fuente** | Estructura `report/` y control de versiones en GitHub |
| Gestión del sprint | Publicación de backlog y sprint en **Jira** | **Activa como evidencia de proceso** | Capturas y referencias del Sprint 1 |
| Web application autenticada | Despliegue futuro | **No verificable en esta revisión** | Repositorio existente, sin URL pública demostrada en el informe |
| Backend y servicios REST | Despliegue futuro | **No verificable en esta revisión** | Repositorio existente, sin Swagger ni endpoint público evidenciado |

<p align="justify">
En consecuencia, el procedimiento de despliegue defendible para AV1 se reduce a la capa que sí está operativa: versionar cambios en `nexa-website`, integrarlos en la rama estable, publicar el sitio en GitHub Pages y validar la navegación pública resultante. La capa transaccional del producto permanece correctamente identificada como siguiente fase de implementación.
</p>

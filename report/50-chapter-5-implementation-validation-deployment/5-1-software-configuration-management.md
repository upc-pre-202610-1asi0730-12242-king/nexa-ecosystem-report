# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

La gestión de la configuración del software en Nexa se documenta a partir de la evidencia disponible en los repositorios oficiales de la organización `upc-pre-202610-1asi0730-12242-king`. Esta sección integra el avance acumulado de AV1, TB1 y AV2, distinguiendo entre artefactos efectivamente implementados, versiones preparadas para revisión académica y capacidades todavía pendientes de evidencia verificable.


### 5.1.1. Software Development Environment Configuration

Para estandarizar el trabajo colaborativo del equipo y asegurar trazabilidad entre investigación, diseño, implementación, documentación y despliegue, se configuró un entorno de trabajo compuesto por herramientas de gestión, control de versiones, diseño, frontend, backend y documentación.

*Configuración del entorno de desarrollo utilizado en Nexa*

| Componente del entorno | Herramienta o tecnología                                                       | Uso dentro del proyecto | Ruta de referencia / evidencia asociada |
|---|--------------------------------------------------------------------------------|---|---|
| Gestión del proyecto | Jira Software                                                                  | Planificación de Product Backlog, Sprint Backlog, issues y seguimiento de estado por sprint. | Tablero Jira del proyecto Nexa y capturas en las subsecciones 5.2.1, 5.2.2 y 5.2.3. |
| Control de versiones | Git + GitHub                                                                   | Versionado por repositorio, trazabilidad de commits, ramas, tags y releases. | Organización GitHub `upc-pre-202610-1asi0730-12242-king`. |
| Documentación técnica | Markdown bajo enfoque Docs-as-Code                                             | Redacción modular del informe, control de cambios y ensamblado del reporte académico. | Repositorio `nexa-ecosystem-report`. |
| Diseño UX/UI | Figma / FigJam                                                                 | Wireframes, mockups, user flows, wireflows y evidencia visual del producto. | Artefactos documentados en Capítulo IV. |
| Modelado de arquitectura | Herramientas de diagramación UML/C4                                            | Diagramas C4, bounded contexts, diseño orientado a objetos y diseño de base de datos. | Artefactos del Capítulo IV. |
| Landing Page | HTML5, CSS3 y JavaScript                                                       | Sitio público multipágina, navegación, contenido bilingüe y entrada comercial al ecosistema Nexa. | Repositorio `nexa-website` y despliegue en GitHub Pages. |
| Web Application | Vue 3, Vite, PrimeVue, PrimeFlex, PrimeIcons, Vue Router, Vue I18n y Axios     | Aplicación frontend para flujos internos, navegación por roles, estado local/in-memory para recursos no dependientes de API real e integración progresiva con backend. | Repositorio `nexa-webapp`, tag `v2.0.0` y despliegue en Render: [https://nexa-webapp.onrender.com](https://nexa-webapp.onrender.com). |
| Fake API / datos simulados | JSON Server y archivos JSON                                                    | Soporte histórico de datos para revisión de flujos frontend durante TB1; en AV2 se conserva como antecedente documental, no como dependencia actual del release WebApp. | Configuración histórica documentada en `nexa-webapp`. |
| Web Services | ASP.NET Core Web API, C#, .NET 10, EF Core, PostgreSQL y Swagger/OpenAPI | Primera versión AV2 de Web Services organizada por bounded contexts, controllers, commands, queries e infrastructure. | Repositorio `nexa-platform`, tag `v1.0.0`, commits AV2 de PostgreSQL/Render y evidencia Swagger/OpenAPI incorporada. |
| Despliegue frontend | GitHub Pages y Render | Publicación de Landing Page en GitHub Pages y Web Application en Render para revisión académica. | Landing Page: [https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/). WebApp: [https://nexa-webapp.onrender.com](https://nexa-webapp.onrender.com). |
| Evidencia de servicios | Swagger/OpenAPI, README de ejecución y Render API | Validación de recursos REST, guía de revisión de la Web Services API y despliegue controlado de Platform API. | Platform API: [https://nexa-platform-api.onrender.com](https://nexa-platform-api.onrender.com). La documentación de servicios se respalda con capturas Swagger/OpenAPI incorporadas en Sprint 3. |

El entorno diferencia entre software visible, software simulado histórico y software backend en revisión académica. La Landing Page y la Web Application constituyen artefactos frontend revisables; `nexa-webapp v2.0.0` completa el cierre técnico de WebApp en AV2 y se alinea con el consumo progresivo de la Platform API y el despliegue Render; y `nexa-platform v1.0.0` representa la base Web Services AV2 con despliegue controlado en Render y configuración hacia PostgreSQL, sin declarar operación productiva ni reemplazo completo de todos los servicios simulados.

### 5.1.2. Source Code Management


*Repositorios oficiales del ecosistema Nexa*

| Repositorio | Producto asociado | Propósito | Rama principal | URL |
| Repositorio | Ramas revisadas | Commits no-merge revisados | Commits representativos TB1 | Evidencia principal |
|---|---|---|---|---|
| `nexa-ecosystem-report` | Project Report | Informe académico, documentación Docs-as-Code, evidencias, capítulos, anexos y trazabilidad de entregas. | `main` | [Repositorio `nexa-ecosystem-report`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report) |
| `nexa-website` | Landing Page | Landing Page pública, navegación institucional, contenido bilingüe, páginas informativas y entrada hacia la Web Application. | `main` | [Repositorio `nexa-website`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |
| `nexa-webapp` | Frontend Web Application | Web Application frontend con flujos operativos, navegación por roles, Fake API, integración progresiva con backend y releases frontend. | `main` | [Repositorio `nexa-webapp`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp) |
| `nexa-platform` | Web Services | Web Services backend con ASP.NET Core Web API, bounded contexts, Shared Kernel, persistencia inicial y Swagger/OpenAPI. | `main` | [Repositorio `nexa-platform`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform) |

**GitFlow del Proyecto**


*Tipos de rama utilizados en Nexa*

| Tipo de rama | Propósito | Convención de nombre |
|---|---|---|
| `main` | Rama estable y entregable de cada repositorio. | `main` |
| `develop` | Rama de integración previa al cierre de una entrega. | `develop` |
| `feature/*` | Desarrollo enfocado por funcionalidad, bounded context, capítulo o frente técnico. | `feature/<scope-or-capability>` |
| `release/*` | Preparación de versiones antes de consolidación final. | `release/vX.Y.Z` o `release/<milestone>` cuando se trate de un corte académico. |
| `hotfix/*` | Corrección urgente sobre una versión estable. | `hotfix/<short-fix-description>` |
| `backup/*` | Preservación temporal de un estado anterior del repositorio. | `backup/<reason>` |
| Tipo de rama | Evidencia real en repositorios | Propósito en Nexa | Uso en TB1 |

*Ramas por repositorio al corte AV2*

| Repositorio | Ramas principales | Feature branches | Release branches | Tags principales |
|---|---|---|---|---|
| `nexa-ecosystem-report` | `main`, `develop` | `feature/ch3`, `feature/ch4`, `feature/ch5` | No se registra release branch activa en el último corte auditado. | `v0.1.0`, `v1.0.0`, `v2.0.0` |
| `nexa-website` | `main`, `develop` | `feature/pre-v3-documentation` | No se registra release branch activa en el último corte auditado. | Tags principales hasta `v3.0.0`: `v0.1.0`, `v0.2.0`, `v1.0.0`, `v1.0.1`, `v1.1.0`, `v1.2.0`, `v2.0.0`, `v2.0.1`, `v2.1.0`, `v2.2.0`, `v2.3.0`, `v3.0.0` |
| `nexa-webapp` | `main`, `develop` | `feature/catalog`, `feature/docs`, `feature/docs-infrastructure`, `feature/general`, `feature/iam`, `feature/invoicing`, `feature/logistics`, `feature/sales`, `feature/shared`, `feature/warehouse` | `release/v1.4.0`, `release/v1.7.0`, `release/v1.8.0`, `release/v2.0.0` | Tags principales hasta `v2.0.0`: `v0.1.0`, `v0.2.0`, `v1.0.0`, `v1.0.1`, `v1.1.0`, `v1.1.1`, `v1.2.0`, `v1.3.0`, `v1.4.0`, `v1.5.0`, `v1.6.0`, `v1.7.0`, `v1.7.1`, `v1.8.0`, `v2.0.0` |

**Flujo de integración aplicado**

`feature/* → develop → release/* → main`

El flujo anterior se adapta según el repositorio y el hito. En algunos cortes, el equipo consolida cambios directamente en `main` después de integrar ramas de trabajo; en otros, utiliza una rama `release/*` para estabilización previa. Para AV2, `nexa-platform` registra `v1.0.0`, `nexa-webapp` registra `v2.0.0`, `nexa-website` registra `v3.0.0`; y `nexa-ecosystem-report` mantiene `v2.0.0` como último release documental relevante, con commits documentales AV2 posteriores.

**Versionado semántico**

Las versiones se nombran siguiendo Semantic Versioning mediante el patrón `vMAJOR.MINOR.PATCH`. En el corte revisado, los tags principales permiten diferenciar versiones documentales, versiones del sitio público, releases de Web Application y primera foundation backend de Web Services.

**Convenciones de commits**

Los commits siguen Conventional Commits mediante el patrón `type(scope): description`. El detalle de commits representativos se documenta en las subsecciones de Sprint Review dentro de `5.2`. Esta sección conserva únicamente la estrategia de configuración, ramas, tags, repositorios y convenciones generales de control de versiones.

### 5.1.3. Source Code Style Guide & Conventions

Para garantizar mantenibilidad y lectura homogénea del proyecto, el equipo adopta convenciones explícitas tanto para el código fuente como para los artefactos documentales. Estas convenciones permiten revisar el avance por repositorio, interpretar los commits, mantener consistencia entre frontend/backend y conservar trazabilidad académica del reporte.

**Convención de commits**

Los mensajes siguen el patrón de Conventional Commits: `type(scope): description`.

Ejemplos de tipos utilizados:

| Tipo | Uso |
|---|---|
| `feat` | Nuevas funcionalidades o capacidades de producto. |
| `fix` | Corrección de errores funcionales, visuales o de integración. |
| `docs` | Cambios en documentación, README, evidencias o reporte académico. |
| `refactor` | Reorganización de código sin cambiar comportamiento externo. |
| `chore` | Ajustes de configuración, mantenimiento, releases o tareas auxiliares. |
| `test` | Validación o documentación de payloads y pruebas técnicas. |
| `ci` | Configuración de integración continua o automatización. |
- Prefijos numéricos por capítulo para asegurar orden de ensamblado.

**Convenciones de documentación**

- Los archivos del reporte se organizan por capítulo y sección para facilitar ensamblado Docs-as-Code.
- Las imágenes se referencian mediante rutas relativas dentro de `assets/images`.
- Las tablas de evidencia de commits mantienen la estructura solicitada: `Repository`, `Branch`, `Commit Id`, `Commit Message`, `Commit Message Body` y `Commited on (Date)`.
- Las evidencias de sprint se documentan separando planificación, backlog, desarrollo, ejecución, servicios, despliegue y colaboración.
- Las secciones que dependen de evidencias no técnicas se mantienen como pendientes controlados hasta contar con entrevistas, videos o registros de coordinación.

**Convenciones frontend**

- `nexa-website` mantiene una organización de sitio público multipágina con HTML, CSS y JavaScript separados por responsabilidad.
- `nexa-webapp` organiza el frontend por dominios o bounded contexts, rutas, servicios, stores, componentes y modelos.
- La navegación se gestiona con Vue Router y la internacionalización con Vue I18n.
- El consumo de datos se realiza mediante Axios y capas de servicios/adapters para facilitar la transición desde Fake API hacia backend real.
- Los estilos y componentes se apoyan en Material Design, PrimeVue, PrimeFlex y PrimeIcons para mantener consistencia visual.
- Los nombres de archivos, rutas, componentes, variables y funciones se mantienen en inglés para conservar consistencia técnica entre repositorios.

**Convenciones backend**

- `nexa-platform` se estructura como backend modular con ASP.NET Core Web API.
- Los recursos REST se organizan por bounded context y controller.
- Las clases, interfaces, métodos, propiedades, controladores, DTOs, comandos, queries y servicios se nombran en inglés.
- La documentación de servicios se valida mediante Swagger/OpenAPI.
- La persistencia se prepara con EF Core y PostgreSQL para el despliegue controlado AV2 en Render, dejando MySQL como antecedente/local previo cuando aparezca en evidencias anteriores.

### 5.1.4. Software Deployment Configuration

La configuración de despliegue de Nexa se documenta por artefacto, distinguiendo entre publicación frontend, simulación de servicios, documentación académica y primera versión backend para AV2. Esta separación evita declarar como productivo un componente que todavía se encuentra en validación local o revisión académica.

*Configuración de despliegue y release por artefacto*

| Artefacto | Configuración o mecanismo | Estado defendible | Evidencia |
|---|---|---|---|
| Landing Page `nexa-website` | GitHub Pages desde el repositorio del sitio público. | Publicada como capa pública del producto. | [Repositorio `nexa-website`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) / [GitHub Pages](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Web Application `nexa-webapp` | Render con navegación frontend, configuración de rutas y tag `v2.0.0`. | Publicada para revisión académica con flujos frontend, estado local/in-memory para recursos no dependientes de API real e integración progresiva. | [Repositorio `nexa-webapp`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp) / [Render WebApp](https://nexa-webapp.onrender.com) |
| Fake API | JSON Server y recursos simulados. | Soporte de datos para revisión frontend; no representa API interna productiva. | Configuración documentada en `nexa-webapp`. Si se mantiene activo, registrar URL pública de Render. |
| Project Report `nexa-ecosystem-report` | Docs-as-Code en Markdown y versionado en GitHub. | Fuente oficial del informe académico. | [Repositorio `nexa-ecosystem-report`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report) |
| Web Services `nexa-platform` | ASP.NET Core Web API, Swagger/OpenAPI, README de ejecución, tag `v1.0.0`, PostgreSQL y configuración Render. | Release de cierre AV2 de Web Services con despliegue controlado en Render y evidencia Swagger/OpenAPI incorporada, sin declarar operación productiva. | [Repositorio `nexa-platform`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform) / [Render API](https://nexa-platform-api.onrender.com) |

El procedimiento de despliegue defendible para el corte actual se resume en cuatro líneas: publicar la Landing Page como entrada pública, mantener la Web Application como frontend revisable en Render, documentar la Platform API desplegada en Render y registrar la migración/configuración hacia PostgreSQL para el despliegue controlado AV2. La evidencia de Jira, Swagger, releases, ejecución y capturas de servicios debe revisarse nuevamente para evitar sobredeclarar capacidades no verificadas.
En consecuencia, el procedimiento de despliegue defendible para AV1 se reduce a la capa que sí está operativa: versionar cambios en `nexa-website`, integrarlos en la rama estable, publicar el sitio en GitHub Pages y validar la navegación pública resultante. La capa transaccional del producto permanece identificada como siguiente fase de implementación y no debe leerse como evidencia de esta entrega.
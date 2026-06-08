# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

La gestión de la configuración del software en Nexa se documenta a partir de la evidencia disponible en los repositorios oficiales de la organización `upc-pre-202610-1asi0730-12242-king`. Esta sección integra el avance acumulado de AV1, TB1 y AV2, distinguiendo entre artefactos efectivamente implementados, versiones preparadas para revisión académica y capacidades todavía pendientes de evidencia verificable.

### 5.1.1. Software Development Environment Configuration

Para estandarizar el trabajo colaborativo del equipo y asegurar trazabilidad entre investigación, diseño, implementación y documentación, se configuró un entorno de trabajo compuesto por herramientas efectivamente observables en los repositorios revisados y por plataformas de coordinación ya utilizadas durante el Sprint 1. La siguiente tabla resume el entorno base con el que se produjo el incremento AV1.

*Configuración del entorno de desarrollo utilizado en Nexa*

| Componente del entorno | Herramienta o tecnología                                                       | Uso dentro del proyecto | Ruta de referencia / evidencia asociada |
|---|--------------------------------------------------------------------------------|---|---|
| Gestión del proyecto | Jira Software                                                                  | Planificación de Product Backlog, Sprint Backlog, issues y seguimiento de estado por sprint. | Tablero Jira del proyecto Nexa y capturas en las subsecciones 5.2.1, 5.2.2 y 5.2.3. |
| Control de versiones | Git + GitHub                                                                   | Versionado por repositorio, trazabilidad de commits, ramas, tags y releases. | Organización GitHub `upc-pre-202610-1asi0730-12242-king`. |
| Documentación técnica | Markdown bajo enfoque Docs-as-Code                                             | Redacción modular del informe, control de cambios y ensamblado del reporte académico. | Repositorio `nexa-ecosystem-report`. |
| Componente del entorno | Herramienta o tecnología | Uso dentro del proyecto | Evidencia verificable en AV1 |
|---|---|---|---|
| Gestión ágil | **Jira Software** | Planificación Scrum, Product Backlog, Sprint Backlog y seguimiento de issues `NX-###` | Tablero y capturas Jira utilizadas en `5.2.1` |
| Control de versiones | **GitHub** | Versionado del informe y del sitio público en repositorios separados | Repositorios `nexa-report` y `nexa-website` |
| Redacción del informe | **Markdown bajo enfoque Docs-as-Code** | Estructura por capítulos, versionado fino y ensamblado posterior del informe | Archivos numerados dentro de `report/` |
| Editor de implementación y documentación | **Visual Studio Code** | Edición del sitio estático y del informe técnico | Compatible con la estructura HTML/CSS/JS y Markdown observada |
| Diseño y prototipado | **Figma** | Wireframes, mockups y prototipos de la landing page y la web application | Enlaces y capturas referenciados en el Capítulo IV |

El entorno diferencia entre software visible, software simulado histórico y software backend en revisión académica. La Landing Page y la Web Application constituyen artefactos frontend revisables; `nexa-webapp v2.0.0` completa el cierre técnico de WebApp en AV2 y se alinea con el consumo progresivo de la Platform API y el despliegue Render; y `nexa-platform v1.0.0` representa la base Web Services AV2 con despliegue controlado en Render y configuración hacia PostgreSQL, sin declarar operación productiva ni reemplazo completo de todos los servicios simulados.
Adicionalmente, el corte AV1 deja preparada una capacidad técnica futura que todavía no debe confundirse con software implementado. El backlog y los capítulos de diseño ya prevén una **web application autenticada** y una **capa de servicios**; sin embargo, al cierre de esta entrega esa capa permanece como alcance modelado y priorizado, no como incremento desarrollado dentro del sprint visible.

### 5.1.2. Source Code Management


*Tabla. Resumen de repositorios auditados al cierre de TB1*

| Repositorio | Producto asociado | Propósito | Rama principal | URL |
| Repositorio | Ramas revisadas | Commits no-merge revisados | Commits representativos TB1 | Evidencia principal |
|---|---:|---:|---:|---|
| `nexa-report` | `main`, `develop`, `release/tb1-final` | 558 | 100 | Historial GitHub, rama `main` |
| `nexa-webapp` | `main`, `develop`, 12 ramas `feature/*`, 7 ramas `release/*` | 152 | 51 | Historial GitHub, rama `main` |
| `nexa-website` | `main`, `develop`, `release/tb1-final` | 91 | 14 | Historial GitHub, rama `main` |
| `nexa-platform` | `main`, `backup/platform-before-tb1-reset` | 15 | 13 | Historial GitHub, rama `main` |
|---|---|---|---|---|
| `nexa-ecosystem-report` | Project Report | Informe académico, documentación Docs-as-Code, evidencias, capítulos, anexos y trazabilidad de entregas. | `main` | [Repositorio `nexa-ecosystem-report`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report) |
| `nexa-website` | Landing Page | Landing Page pública, navegación institucional, contenido bilingüe, páginas informativas y entrada hacia la Web Application. | `main` | [Repositorio `nexa-website`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |
| `nexa-report` | Informe técnico, trazabilidad académica y documentación del proyecto | `main` | `develop`, `release/tb1-report-language-commit-evidence`, `release/tb1-sprint-commit-evidence`, `release/tb1-final` | [nexa-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-report) |
| `nexa-website` | Implementación del sitio público desplegado | `main` | `develop`, `release/tb1-final` | [nexa-website](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |

**GitFlow del Proyecto**



| Tipo de rama | Propósito | Convención de nombre |
|---|---|---|
| `main` | Rama estable y entregable de cada repositorio. | `main` |
| Tipo de rama | Evidencia real en repositorios | Propósito en Nexa | Uso en TB1 |
|---|---|---|---|
| `main` | `nexa-report`, `nexa-webapp`, `nexa-website`, `nexa-platform` | Versión estable y entregable; rama de entrega oficial del hito | Concentra el incremento final de cada entrega: AV1 y TB1 |
| `develop` | `nexa-report`, `nexa-webapp`, `nexa-website` | Integración continua de feature branches antes de cada release | Punto de convergencia del trabajo de Sprint 2 antes del merge a `main` |
| `feature/*` | `nexa-webapp` (12 ramas activas), `nexa-report` (múltiples ramas) | Desarrollo enfocado por frente de trabajo o bounded context | Sprint 2: estructuración DDD, integración de Fake API en la nube, semántica de bounded contexts, alineación de capa DDD, router modular, infraestructura compartida |

*Ramas por repositorio al corte AV2*
*Tabla. Ramas observables por repositorio al cierre de TB1*

|---|---|---|---|---|
| `nexa-ecosystem-report` | `main`, `develop` | `feature/ch3`, `feature/ch4`, `feature/ch5` | No se registra release branch activa en el último corte auditado. | `v0.1.0`, `v1.0.0`, `v2.0.0` |
| `nexa-website` | `main`, `develop` | `feature/pre-v3-documentation` | No se registra release branch activa en el último corte auditado. | Tags principales hasta `v3.0.0`: `v0.1.0`, `v0.2.0`, `v1.0.0`, `v1.0.1`, `v1.1.0`, `v1.2.0`, `v2.0.0`, `v2.0.1`, `v2.1.0`, `v2.2.0`, `v2.3.0`, `v3.0.0` |
| `nexa-report` | `main`, `develop` | `feature/report-ubiquitous-language-commit-evidence`, `feature/relocate-sprint-commit-evidence` | `release/tb1-report-language-commit-evidence`, `release/tb1-sprint-commit-evidence`, `release/tb1-final` | GitFlow aplicado en el informe técnico desde TB1 |
| `nexa-webapp` | `main`, `develop` | `feature/bounded-context-structure-polish`, `feature/cloud-fake-api-integration`, `feature/ddd-render-firebase-readiness`, `feature/final-ddd-layer-alignment`, `feature/final-firebase-static-api-deploy`, `feature/final-webapp-structure-semantics-responsive`, `feature/modular-router-alignment`, `feature/remove-hardcoded-business-data`, `feature/semantic-bounded-context-names`, `feature/server-fake-api-migration`, `feature/shared-infrastructure-api` | `release/tb1-cloud-api-cleanup`, `release/tb1-ddd-render-firebase-readiness`, `release/tb1-final-ddd-alignment`, `release/tb1-final-webapp-polish`, `release/tb1-firebase-static-api-deploy`, `release/tb1-semantic-contexts`, `release/tb1-structure-alignment` | Repositorio con mayor densidad de GitFlow en TB1; flujo completo `feature → develop → release → main` verificable |
| `nexa-website` | `main`, `develop` | — | `release/tb1-final` | GitFlow básico aplicado; sin ramas feature individuales por el alcance de mantenimiento de la landing |

**Flujo de integración aplicado**

```

El flujo anterior se adapta según el repositorio y el hito. En algunos cortes, el equipo consolida cambios directamente en `main` después de integrar ramas de trabajo; en otros, utiliza una rama `release/*` para estabilización previa. Para AV2, `nexa-platform` registra `v1.0.0`, `nexa-webapp` registra `v2.0.0`, `nexa-website` registra `v3.0.0`; y `nexa-ecosystem-report` mantiene `v2.0.0` como último release documental relevante, con commits documentales AV2 posteriores.

**Versionado semántico**

> El detalle de commits representativos y la contribución por repositorio se documenta en la sección 5.2 como evidencia de implementación del Sprint 2 / TB1. En esta sección se conserva únicamente la estrategia de configuración, ramas y convenciones de control de versiones.

### 5.1.3. Source Code Style Guide & Conventions

Para garantizar mantenibilidad y lectura homogénea del proyecto, el equipo adopta convenciones explícitas tanto para el código fuente como para los artefactos documentales. Estas convenciones permiten revisar el avance por repositorio, interpretar los commits, mantener consistencia entre frontend/backend y conservar trazabilidad académica del reporte.

**Convención de commits (Conventional Commits):** Los mensajes siguen el patrón `type(scope): description`, en minúsculas y sin punto final.

- **feat:** para nuevas características o Historias de Usuario.
- **fix:** para la corrección de errores funcionales.
- **docs:** para actualizaciones exclusivas en documentación.

Ejemplos de tipos utilizados:

| Tipo | Uso |
|---|---|
| `feat` | Nuevas funcionalidades o capacidades de producto. |
| `fix` | Corrección de errores funcionales, visuales o de integración. |
- Prefijos numéricos por capítulo para asegurar orden de ensamblado.
- Rutas relativas para activos visuales dentro de `report/assets/images/`.
- Uso de títulos, subtítulos y numeración académica alineados al template UPC.

**Convenciones de documentación**

- Los archivos del reporte se organizan por capítulo y sección para facilitar ensamblado Docs-as-Code.
- Las imágenes se referencian mediante rutas relativas dentro de `assets/images`.
- El sitio público mantiene una organización multipágina con archivos HTML por sección y assets desacoplados por responsabilidad.
- Los nombres de clases e identificadores del frontend siguen `kebab-case`.

**Convenciones de servicios previstas**

- `nexa-website` mantiene una organización de sitio público multipágina con HTML, CSS y JavaScript separados por responsabilidad.
- `nexa-webapp` organiza el frontend por dominios o bounded contexts, rutas, servicios, stores, componentes y modelos.
- La navegación se gestiona con Vue Router y la internacionalización con Vue I18n.
- El consumo de datos se realiza mediante Axios y capas de servicios/adapters para facilitar la transición desde Fake API hacia backend real.
- Los estilos y componentes se apoyan en Material Design, PrimeVue, PrimeFlex y PrimeIcons para mantener consistencia visual.
- Los nombres de archivos, rutas, componentes, variables y funciones se mantienen en inglés para conservar consistencia técnica entre repositorios.

### 5.1.4. Software Deployment Configuration

La configuración de despliegue de Nexa se documenta por artefacto, distinguiendo entre publicación frontend, simulación de servicios, documentación académica y primera versión backend para AV2. Esta separación evita declarar como productivo un componente que todavía se encuentra en validación local o revisión académica.
La configuración de despliegue de AV1 debe leerse en dos niveles: **despliegue activo** para el MVP público y **preparación futura** para la capa transaccional aún no desarrollada dentro de esta entrega. Esta distinción evita sobredeclarar capacidades no demostradas.


| Artefacto | Configuración o mecanismo | Estado defendible | Evidencia |
| Elemento | Configuración o mecanismo | Estado en AV1 | Evidencia |
|---|---|---|---|
| Landing Page `nexa-website` | GitHub Pages desde el repositorio del sitio público. | Publicada como capa pública del producto. | [Repositorio `nexa-website`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) / [GitHub Pages](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Web Application `nexa-webapp` | Render con navegación frontend, configuración de rutas y tag `v2.0.0`. | Publicada para revisión académica con flujos frontend, estado local/in-memory para recursos no dependientes de API real e integración progresiva. | [Repositorio `nexa-webapp`](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp) / [Render WebApp](https://nexa-webapp.onrender.com) |
| Sitio público `nexa-website` | Publicación en **GitHub Pages** desde el repositorio del proyecto | **Activo** | [https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Calidad mínima del repositorio web | Workflow de **GitHub Actions** para `markdownlint` y `commitlint` en `main` y `develop` | **Activo en repositorio** | Archivo `.github/workflows/lint.yml` en `nexa-website` |
| Informe técnico `nexa-report` | Gestión Docs-as-Code y compilación posterior a PDF | **Activo como repositorio fuente** | Estructura `report/` y control de versiones en GitHub |
| Gestión del sprint | Publicación de backlog y sprint en **Jira** | **Activa como evidencia de proceso** | Capturas y referencias del Sprint 1 |

En consecuencia, el procedimiento de despliegue defendible para AV1 se reduce a la capa que sí está operativa: versionar cambios en `nexa-website`, integrarlos en la rama estable, publicar el sitio en GitHub Pages y validar la navegación pública resultante. La capa transaccional del producto permanece identificada como siguiente fase de implementación y no debe leerse como evidencia de esta entrega.
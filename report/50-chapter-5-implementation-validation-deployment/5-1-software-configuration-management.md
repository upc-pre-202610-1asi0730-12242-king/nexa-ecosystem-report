# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

La gestión de la configuración del software en Nexa se documenta a partir de la evidencia verificable disponible en el corte AV1: el tablero de trabajo en Jira, los repositorios GitHub del informe y del sitio público, el despliegue de la landing page y los artefactos de diseño y arquitectura elaborados durante la iteración. Esta sección distingue entre **configuración efectivamente observable** y **capacidad planificada**, evitando atribuir como desplegado aquello que en este hito aún permanece en backlog o en diseño técnico.

### 5.1.1. Software Development Environment Configuration

Para estandarizar el trabajo colaborativo del equipo y asegurar trazabilidad entre investigación, diseño, implementación y documentación, se configuró un entorno de trabajo compuesto por herramientas efectivamente observables en los repositorios revisados y por plataformas de coordinación ya utilizadas durante el Sprint 1. La siguiente tabla resume el entorno base con el que se produjo el incremento AV1.

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

Adicionalmente, el corte AV1 deja preparada una capacidad técnica futura que todavía no debe confundirse con software implementado. El backlog y los capítulos de diseño ya prevén una **web application autenticada** y una **capa de servicios**; sin embargo, al cierre de esta entrega esa capa permanece como alcance modelado y priorizado, no como incremento desarrollado dentro del sprint visible.

### 5.1.2. Source Code Management

El control de versiones se organiza bajo GitFlow adaptado al alcance real del proyecto. Los cuatro repositorios activos reflejan estrategias de ramas acordes con el trabajo ejecutado hasta TB1.

*Tabla. Resumen de repositorios auditados al cierre de TB1*

| Repositorio | Ramas revisadas | Commits no-merge revisados | Commits representativos TB1 | Evidencia principal |
|---|---:|---:|---:|---|
| `nexa-report` | `main`, `develop`, `release/tb1-final` | 558 | 100 | Historial GitHub, rama `main` |
| `nexa-webapp` | `main`, `develop`, 12 ramas `feature/*`, 7 ramas `release/*` | 152 | 51 | Historial GitHub, rama `main` |
| `nexa-website` | `main`, `develop`, `release/tb1-final` | 91 | 14 | Historial GitHub, rama `main` |
| `nexa-platform` | `main`, `backup/platform-before-tb1-reset` | 15 | 13 | Historial GitHub, rama `main` |

*Repositorios activos y configuración de versionado utilizada hasta TB1*

| Repositorio | Propósito | Rama principal observable | Otras ramas observables | URL |
|---|---|---|---|---|
| `nexa-report` | Informe técnico, trazabilidad académica y documentación del proyecto | `main` | `develop`, `release/tb1-report-language-commit-evidence`, `release/tb1-sprint-commit-evidence`, `release/tb1-final` | [nexa-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-report) |
| `nexa-website` | Implementación del sitio público desplegado | `main` | `develop`, `release/tb1-final` | [nexa-website](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |
| `nexa-webapp` | Web application TB1 con frontend operativo y datos simulados | `main` | `develop`, `feature/*` (11 ramas), `release/*` (7 ramas) | [nexa-webapp](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp) |
| `nexa-platform` | Alcance backend planificado para siguiente hito | `main` | `backup/platform-before-tb1-reset` | [nexa-platform](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform) |

**GitFlow del Proyecto**

La organización del control de versiones sigue un modelo GitFlow adaptado al alcance real del proyecto. La rama `main` concentra la versión entregable; `develop` integra trabajo previo a cada entrega; las ramas `feature/*` delimitan funcionalidades por frente de trabajo; las ramas `release/*` formalizan el cierre de cada hito. No se registró rama `hotfix` en este corte, dado que no fue necesaria una corrección urgente sobre una versión estable de producción en TB1.

*Tabla. Tipos de rama, evidencia real en repositorios y propósito en el proyecto Nexa*

| Tipo de rama | Evidencia real en repositorios | Propósito en Nexa | Uso en TB1 |
|---|---|---|---|
| `main` | `nexa-report`, `nexa-webapp`, `nexa-website`, `nexa-platform` | Versión estable y entregable; rama de entrega oficial del hito | Concentra el incremento final de cada entrega: AV1 y TB1 |
| `develop` | `nexa-report`, `nexa-webapp`, `nexa-website` | Integración continua de feature branches antes de cada release | Punto de convergencia del trabajo de Sprint 2 antes del merge a `main` |
| `feature/*` | `nexa-webapp` (12 ramas activas), `nexa-report` (múltiples ramas) | Desarrollo enfocado por frente de trabajo o bounded context | Sprint 2: estructuración DDD, integración de Fake API en la nube, semántica de bounded contexts, alineación de capa DDD, router modular, infraestructura compartida |
| `release/*` | `nexa-webapp` (7 ramas), `nexa-report`, `nexa-website` | Estabilización y validación previas al merge en `main` | Cierre TB1 por frente: `release/tb1-ddd-render-firebase-readiness`, `release/tb1-firebase-static-api-deploy`, `release/tb1-final-ddd-alignment`, `release/tb1-sprint-commit-evidence`, entre otras |
| `hotfix/*` | No registrada en ningún repositorio en TB1 | Corrección urgente sobre versión estable de producción | No aplicable: no se requirió corrección urgente sobre producción en este hito |
| `backup/*` | `nexa-platform` (`backup/platform-before-tb1-reset`) | Preservación del estado del repositorio previo a una reestructuración de alcance | Salvaguarda el estado de `nexa-platform` antes del ajuste al alcance real de TB1 |

*Tabla. Ramas observables por repositorio al cierre de TB1*

| Repositorio | Ramas principales | Ramas feature observadas | Ramas release observadas | Notas |
|---|---|---|---|---|
| `nexa-report` | `main`, `develop` | `feature/report-ubiquitous-language-commit-evidence`, `feature/relocate-sprint-commit-evidence` | `release/tb1-report-language-commit-evidence`, `release/tb1-sprint-commit-evidence`, `release/tb1-final` | GitFlow aplicado en el informe técnico desde TB1 |
| `nexa-webapp` | `main`, `develop` | `feature/bounded-context-structure-polish`, `feature/cloud-fake-api-integration`, `feature/ddd-render-firebase-readiness`, `feature/final-ddd-layer-alignment`, `feature/final-firebase-static-api-deploy`, `feature/final-webapp-structure-semantics-responsive`, `feature/modular-router-alignment`, `feature/remove-hardcoded-business-data`, `feature/semantic-bounded-context-names`, `feature/server-fake-api-migration`, `feature/shared-infrastructure-api` | `release/tb1-cloud-api-cleanup`, `release/tb1-ddd-render-firebase-readiness`, `release/tb1-final-ddd-alignment`, `release/tb1-final-webapp-polish`, `release/tb1-firebase-static-api-deploy`, `release/tb1-semantic-contexts`, `release/tb1-structure-alignment` | Repositorio con mayor densidad de GitFlow en TB1; flujo completo `feature → develop → release → main` verificable |
| `nexa-website` | `main`, `develop` | — | `release/tb1-final` | GitFlow básico aplicado; sin ramas feature individuales por el alcance de mantenimiento de la landing |
| `nexa-platform` | `main` | — | — | `backup/platform-before-tb1-reset` preserva el estado previo al ajuste de alcance; sin GitFlow activo en TB1 |

**Flujo de integración aplicado**

```
feature/* → develop → release/* → main
```

> El detalle de commits representativos y la contribución por repositorio se documenta en la sección 5.2 como evidencia de implementación del Sprint 2 / TB1. En esta sección se conserva únicamente la estrategia de configuración, ramas y convenciones de control de versiones.

### 5.1.3. Source Code Style Guide & Conventions

Para garantizar mantenibilidad y lectura homogénea del proyecto, el equipo adopta convenciones explícitas tanto para el código fuente como para los artefactos documentales:

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

**Convenciones de servicios previstas**

Aunque la capa de servicios no forma parte del incremento activo de AV1, el backlog y la arquitectura ya fijan una orientación REST basada en recursos y responsabilidades separadas. Esa definición funciona aquí como preparación técnica del dominio, no como software implementado dentro de esta entrega.

### 5.1.4. Software Deployment Configuration

La configuración de despliegue de AV1 debe leerse en dos niveles: **despliegue activo** para el MVP público y **preparación futura** para la capa transaccional aún no desarrollada dentro de esta entrega. Esta distinción evita sobredeclarar capacidades no demostradas.

*Configuración de despliegue observable en el corte AV1*

| Elemento | Configuración o mecanismo | Estado en AV1 | Evidencia |
|---|---|---|---|
| Sitio público `nexa-website` | Publicación en **GitHub Pages** desde el repositorio del proyecto | **Activo** | [https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Calidad mínima del repositorio web | Workflow de **GitHub Actions** para `markdownlint` y `commitlint` en `main` y `develop` | **Activo en repositorio** | Archivo `.github/workflows/lint.yml` en `nexa-website` |
| Informe técnico `nexa-report` | Gestión Docs-as-Code y compilación posterior a PDF | **Activo como repositorio fuente** | Estructura `report/` y control de versiones en GitHub |
| Gestión del sprint | Publicación de backlog y sprint en **Jira** | **Activa como evidencia de proceso** | Capturas y referencias del Sprint 1 |
| Web application autenticada | Alcance futuro nombrado en diseño y backlog | **No forma parte de AV1** | Referida en capítulos 3 y 4 como evolución posterior |
| Web application autenticada `nexa-webapp` | Publicación en **GitHub Pages** desde rama `main` vía GitHub Actions | **Activo en TB2** | [nexa-webapp](https://nexa-2f1bb.web.app) |
| Backend y servicios REST | Alcance futuro nombrado en arquitectura y backlog | **No forma parte de AV1** | Referido en capítulos 3 y 4 como preparación técnica |

En consecuencia, el procedimiento de despliegue defendible para AV1 se reduce a la capa que sí está operativa: versionar cambios en `nexa-website`, integrarlos en la rama estable, publicar el sitio en GitHub Pages y validar la navegación pública resultante. La capa transaccional del producto permanece identificada como siguiente fase de implementación y no debe leerse como evidencia de esta entrega.


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

El control de versiones se organiza bajo una convención GitFlow adaptada al alcance real de AV1. La revisión de los repositorios activos permite distinguir una estructura mínima pero consistente de ramas y responsabilidades.

*Repositorios activos y configuración de versionado utilizada en AV1*

| Repositorio | Propósito | Rama principal observable | Otras ramas observables | URL |
|---|---|---|---|---|
| `nexa-report` | Informe técnico, trazabilidad académica y narrativa del proyecto | `main` | `develop`, `release/tb1-final` | [nexa-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-report) |
| `nexa-website` | Implementación del MVP público desplegado | `main` | `develop`, `release/tb1-final` | [nexa-website](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |

**GitFlow del Proyecto**

La organización del control de versiones puede representarse mediante un GitFlow adaptado al alcance real del proyecto: un informe técnico en Docs-as-Code, una landing page pública y una web application. Se propone un flujo deliberadamente ligero que prioriza trazabilidad sobre complejidad procedimental, y que resulta manejable para un equipo de cinco personas trabajando en tres frentes simultáneos.

*Tabla. Convención de ramas y ejemplos aplicados en Nexa*

| Rama | Uso correcto | Ejemplo aplicado en Nexa |
|---|---|---|
| `main` | Versión estable entregable | Lo presentado como versión final para revisión académica |
| `develop` | Integración previa a entrega | Unión de cambios del informe, landing page y webapp antes del corte |
| `feature/*` | Desarrollo por funcionalidad o sección del informe | `feature/user-stories-rewrite`, `feature/landing-page-av1` |
| `release/*` | Congelamiento de entrega para revisión final | `release/tb1-final` |
| `hotfix/*` | Corrección urgente sobre versión estable | `hotfix/report-critical-wording` |

**Flujo de integración propuesto**

```text
feature/* → develop → release/tb1-final → main → tag/release
```

Para efectos de trazabilidad, se establece como flujo de trabajo el ciclo en que cada unidad de trabajo parte de una rama `feature/*`, se integra en `develop` una vez revisada, avanza a `release/tb1-final` cuando el equipo congela el contenido para revisión, y finalmente se incorpora a `main` con un tag de versión semántica que identifica el hito entregado. Este flujo soporta cuatro funciones prácticas para el proyecto:

- **Trazabilidad:** permite relacionar cada cambio con su autor, su alcance y el contexto de sprint en que se produjo.
- **Control de integración:** evita que cambios parciales o no revisados alcancen la versión pública antes de pasar por `develop`.
- **Estabilización de entrega:** la rama `release/*` actúa como zona de congelamiento donde solo se permiten ajustes menores antes del corte académico.
- **Corrección urgente:** `hotfix/*` permite atender errores críticos detectados sobre `main` sin interrumpir el trabajo en curso en `develop`.

Este esquema es adecuado para el proyecto porque separa los cambios del informe de los del sitio web, mantiene una versión pública limpia en `main`, y otorga estructura a los commits ya realizados sin exigir una adopción retroactiva perfecta.

*Tabla. Correspondencia entre frentes de trabajo y ramas sugeridas*

| Frente de trabajo | Rama sugerida |
|---|---|
| Reestructuración de segmentos objetivo | `feature/target-segments-rework` |
| Actualización de needfinding | `feature/needfinding-update` |
| Reescritura de User Stories | `feature/user-stories-rewrite` |
| Priorización del Product Backlog | `feature/product-backlog-prioritization` |
| Implementación de Landing Page AV1 | `feature/landing-page-av1` |
| Implementación base de Web Application TB1 | `feature/webapp-tb1-core` |
| Configuración de Fake API / JSON Server | `feature/json-fake-api` |
| Evidencia de Sprint 2 | `feature/sprint-2-evidence` |
| Limpieza final de entrega | `release/tb1-final` |
| Corrección crítica de redacción o nombres | `hotfix/report-critical-wording` |

En la práctica, `nexa-report` y `nexa-website` funcionan como dos flujos sincronizados: el primero preserva la justificación ingenieril y el segundo concentra la ejecución visible del MVP. Esta separación reduce ruido entre documentación y código y facilita relacionar commits, capturas Jira, artefactos de diseño y despliegue público dentro de un mismo sprint.

La web application autenticada y la futura capa de servicios ya están nombradas en backlog, arquitectura y diseño, pero no forman parte del control de versiones activo que este capítulo necesita defender como evidencia de AV1. Por ello, aquí solo se documentan los repositorios que sí sostienen la entrega visible del sprint.

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
| Web application autenticada `nexa-webapp` | Publicación en **GitHub Pages** desde rama `main` vía GitHub Actions | **Activo en TB2** | [nexa-webapp](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-webapp/) |
| Backend y servicios REST | Alcance futuro nombrado en arquitectura y backlog | **No forma parte de AV1** | Referido en capítulos 3 y 4 como preparación técnica |

En consecuencia, el procedimiento de despliegue defendible para AV1 se reduce a la capa que sí está operativa: versionar cambios en `nexa-website`, integrarlos en la rama estable, publicar el sitio en GitHub Pages y validar la navegación pública resultante. La capa transaccional del producto permanece identificada como siguiente fase de implementación y no debe leerse como evidencia de esta entrega.


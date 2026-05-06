# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

La gestión de la configuración del software en Nexa se documenta a partir de la evidencia verificable disponible desde AV1 hasta TB1: repositorios GitHub, documentación Docs-as-Code, despliegue de la landing page, web application TB1 con datos simulados y artefactos de diseño/arquitectura consolidados. Esta sección distingue entre **configuración efectivamente observable** y **capacidad planificada**, evitando atribuir como desplegado aquello que en este hito aún permanece en backlog o en diseño técnico.

### 5.1.1. Software Development Environment Configuration

Para estandarizar el trabajo colaborativo del equipo y asegurar trazabilidad entre investigación, diseño, implementación y documentación, se configuró un entorno de trabajo compuesto por herramientas efectivamente observables en los repositorios revisados y por plataformas de coordinación ya utilizadas durante el Sprint 1. La siguiente tabla resume el entorno base con el que se produjo el incremento AV1 y se consolidó Sprint 2/TB1.

*Configuración observable del entorno de desarrollo utilizada hasta TB1*

| Componente del entorno | Herramienta o tecnología | Uso dentro del proyecto | Evidencia verificable hasta TB1 |
|---|---|---|---|
| Gestión ágil | **Jira Software** | Planificación Scrum, Product Backlog, Sprint Backlog y seguimiento de issues `NX-###` | Tablero y capturas Jira utilizadas en `5.2.1` |
| Control de versiones | **GitHub** | Versionado del informe, sitio público, webapp y plataforma planificada en repositorios separados | Repositorios `nexa-report`, `nexa-website`, `nexa-webapp` y `nexa-platform` |
| Redacción del informe | **Markdown bajo enfoque Docs-as-Code** | Estructura por capítulos, versionado fino y ensamblado posterior del informe | Archivos numerados dentro de `report/` |
| Editor de implementación y documentación | **Visual Studio Code** | Edición del sitio estático y del informe técnico | Compatible con la estructura HTML/CSS/JS y Markdown observada |
| Diseño y prototipado | **Figma** | Wireframes, mockups y prototipos de la landing page y la web application | Enlaces y capturas referenciados en el Capítulo IV |
| Investigación UX | **UXPressia** | Consolidación de personas, empathy maps y journey maps | Artefactos citados en el Capítulo II |
| Modelado y arquitectura | **Visual Paradigm** | Diagramas C4, diseño orientado a objetos y base de datos | Diagramas del Capítulo IV |
| Stack del sitio público | **HTML5 + CSS3 + JavaScript vanilla** | Implementación visible de la landing page pública multipágina | Estructura de `index.html`, `pages/`, `assets/css/` y `assets/js/` en `nexa-website` |
| Stack webapp TB1 | **Vue 3 + Vite + PrimeVue + Pinia + Axios** | Web application con flujos operativos, portal comprador y datos simulados | Repositorio `nexa-webapp` |
| Fake API TB1 | **JSON Server / mock data** | Soporte simulado para validar flujos sin backend productivo | `mock-api/db.json` y documentación del webapp |
| Internacionalización | **Módulo propio `i18n.js`** | Soporte bilingüe EN/ES en textos y metadatos | Archivo `assets/js/i18n.js` en `nexa-website` |
| Despliegue | **GitHub Pages** | Publicación del sitio público y webapp frontend | URLs activas de `nexa-website` y `nexa-webapp` |

Adicionalmente, TB1 deja una separación explícita entre software demostrado y arquitectura objetivo. La web application se valida con frontend y Fake API; servicios productivos, autenticación productiva y base de datos real permanecen como evolución posterior.

### 5.1.2. Source Code Management

El control de versiones se organiza bajo una convención GitFlow adaptada al alcance real de AV1. La revisión de los repositorios activos permite distinguir una estructura mínima pero consistente de ramas y responsabilidades.

*Repositorios activos y configuración de versionado utilizada hasta TB1*

| Repositorio | Propósito | Rama principal observable | Otras ramas observables | URL |
|---|---|---|---|---|
| `nexa-report` | Informe técnico, trazabilidad académica y narrativa del proyecto | `main` | `develop`, `release/tb1-final` | [nexa-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-report) |
| `nexa-website` | Implementación del sitio público desplegado | `main` | `develop`, `release/tb1-final` | [nexa-website](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |
| `nexa-webapp` | Web application TB1 con frontend operativo y datos simulados | `main` | ramas de integración según feature | [nexa-webapp](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp) |
| `nexa-platform` | Alcance backend/plataforma planificado | `main` | no aplica para incremento TB1 activo | [nexa-platform](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform) |

**GitFlow del Proyecto**

La organización del control de versiones se representa mediante un GitFlow adaptado al alcance real del proyecto: un informe técnico en Docs-as-Code, una landing page pública y una web application. Establecimos un flujo deliberadamente ligero que prioriza trazabilidad sobre complejidad procedimental, y que resulta manejable para un equipo de cinco personas trabajando en tres frentes simultáneos.

*Tabla. Convención de ramas y ejemplos aplicados en Nexa*

| Rama | Uso correcto | Ejemplo aplicado en Nexa |
|---|---|---|
| `main` | Versión estable entregable | Lo presentado como versión final para revisión académica |
| `develop` | Integración previa a entrega | Unión de cambios del informe, landing page y webapp antes del corte |
| `feature/*` | Desarrollo por funcionalidad o sección del informe | `feature/user-stories-rewrite`, `feature/landing-page-av1` |
| `release/*` | Congelamiento de entrega para revisión final | `release/tb1-final` |
| `hotfix/*` | Corrección urgente sobre versión estable | `hotfix/report-critical-wording` |

**Flujo de integración establecido**

```text
feature/* → develop → release/tb1-final → main → tag/release
```

Para efectos de trazabilidad, adoptamos como flujo de trabajo el ciclo en que cada unidad de trabajo parte de una rama `feature/*`, se integra en `develop` una vez revisada, avanza a `release/tb1-final` cuando congelamos el contenido para revisión, y finalmente se incorpora a `main` con un tag de versión semántica que identifica el hito entregado. Este flujo soporta cuatro funciones prácticas para el proyecto:

- **Trazabilidad:** permite relacionar cada cambio con su autor, su alcance y el contexto de sprint en que se produjo.
- **Control de integración:** evita que cambios parciales o no revisados alcancen la versión pública antes de pasar por `develop`.
- **Estabilización de entrega:** la rama `release/*` actúa como zona de congelamiento donde solo se permiten ajustes menores antes del corte académico.
- **Corrección urgente:** `hotfix/*` permite atender errores críticos detectados sobre `main` sin interrumpir el trabajo en curso en `develop`.

Este esquema es adecuado para el proyecto porque separa los cambios del informe de los del sitio web, mantiene una versión pública limpia en `main`, y otorga estructura a los commits ya realizados. La adopción fue gradual y no se afirma una implementación retroactiva perfecta desde el inicio del proyecto.

*Tabla. Correspondencia entre frentes de trabajo y ramas establecidas*

| Frente de trabajo | Rama establecida |
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

En la práctica, `nexa-report`, `nexa-website` y `nexa-webapp` funcionan como flujos sincronizados: el primero preserva justificación ingenieril, el segundo sostiene la capa pública y el tercero concentra la experiencia operativa TB1. Esta separación reduce ruido entre documentación y código y facilita relacionar commits, artefactos de diseño y despliegue público dentro de un mismo sprint.

La futura capa backend sigue nombrada en backlog, arquitectura y diseño, pero no se presenta como implementada. Por ello, el capítulo distingue webapp TB1 con Fake API de servicios productivos futuros.

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

En TB1, la webapp utiliza Fake API y servicios cliente para validar consumo por contexto. La orientación REST del backend objetivo funciona como preparación técnica del dominio, no como backend productivo implementado.

### 5.1.4. Software Deployment Configuration

La configuración de despliegue hasta TB1 debe leerse en dos niveles: **despliegue activo** para landing/webapp y **preparación futura** para servicios productivos, base de datos real e integraciones externas. Esta distinción evita sobredeclarar capacidades no demostradas.

*Configuración de despliegue observable hasta TB1*

| Elemento | Configuración o mecanismo | Estado hasta TB1 | Evidencia |
|---|---|---|---|
| Sitio público `nexa-website` | Publicación en **GitHub Pages** desde el repositorio del proyecto | **Activo** | [https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Calidad mínima del repositorio web | Workflow de **GitHub Actions** para `markdownlint` y `commitlint` en `main` y `develop` | **Activo en repositorio** | Archivo `.github/workflows/lint.yml` en `nexa-website` |
| Informe técnico `nexa-report` | Gestión Docs-as-Code y compilación posterior a PDF | **Activo como repositorio fuente** | Estructura `report/` y control de versiones en GitHub |
| Gestión del sprint | Publicación de backlog y sprint en **Jira** | **Activa como evidencia de proceso** | Capturas y referencias del Sprint 1 |
| Web application `nexa-webapp` | Publicación en **GitHub Pages** desde rama `main` vía GitHub Actions | **Activo en TB1 como frontend con datos simulados** | [nexa-webapp](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-webapp/) |
| Backend y servicios REST | Alcance futuro nombrado en arquitectura y backlog | **No forma parte de TB1 como backend productivo** | Referido en capítulos 3 y 4 como preparación técnica |

En consecuencia, el procedimiento de despliegue defendible para TB1 incluye versionar cambios en `nexa-website` y `nexa-webapp`, publicarlos en GitHub Pages y validar navegación pública con hash routing. La capa backend productiva permanece como siguiente fase y no debe leerse como evidencia de esta entrega.

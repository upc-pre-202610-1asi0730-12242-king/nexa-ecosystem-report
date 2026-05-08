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

Para TB1, la evidencia observable de trabajo se concentra en la rama `main` y en commits convencionales. El equipo documenta GitFlow como convención de trabajo para ordenar la evolución del proyecto; las ramas `develop` y `release/tb1-final` existen como evidencia de transición, no como prueba de que todo el trabajo previo se haya realizado bajo GitFlow completo.

*Repositorios activos y configuración de versionado utilizada hasta TB1*

| Repositorio | Propósito | Rama principal observable | Convención de ramas | URL |
|---|---|---|---|---|
| `nexa-report` | Informe técnico, trazabilidad académica y documentación del proyecto | `main` | GitFlow en transición | [nexa-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-report) |
| `nexa-website` | Implementación del sitio público desplegado | `main` | no documentadas como evidencia de TB1 en este informe | [nexa-website](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |
| `nexa-webapp` | Web application TB1 con frontend operativo y datos simulados | `main` | no documentadas como evidencia de TB1 en este informe | [nexa-webapp](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp) |
| `nexa-platform` | Alcance backend/plataforma planificado | `main` | no aplica para incremento TB1 activo | [nexa-platform](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform) |

**GitFlow del Proyecto**

La organización del control de versiones se representa mediante un GitFlow adaptado al alcance real del proyecto. En TB1, `main` funciona como rama observable de entrega y los commits convencionales son la principal evidencia verificable. El modelo completo de ramas se mantiene como convención de trabajo y será formalizado con mayor rigor operativo en el siguiente hito.

*Tabla. Convención de ramas y estado observable en TB1*

| Rama | Estado TB1 | Uso |
|---|---|---|
| `main` | Observable | Versión entregable |
| `develop` | Observable como rama de transición | Integración previa |
| `feature/*` | Convención definida | Trabajo por funcionalidad |
| `release/tb1-final` | Observable como rama de transición | Cierre de entrega TB1 |
| `hotfix/*` | Convención definida | Correcciones urgentes |

Este esquema permite explicar la estrategia de versionado solicitada por el statement sin presentar ramas de transición como si fueran evidencia histórica completa. Para esta entrega, la trazabilidad se sostiene principalmente en commits convencionales sobre `main`, historial de GitHub y separación por repositorio.

*Tabla. Correspondencia entre frentes de trabajo y trazabilidad usada en TB1*

| Frente de trabajo | Evidencia de trazabilidad |
|---|---|
| Reestructuración de segmentos objetivo | Commits documentales en el historial del informe |
| Actualización de needfinding | Commits documentales y referencias en Capítulo II |
| Reescritura de User Stories | Commits documentales y tabla de User Stories |
| Priorización del Product Backlog | Commits documentales y evidencia Jira en Capítulo III |
| Implementación de Landing Page AV1 | Historial del repositorio del sitio público y evidencia Sprint 1 |
| Implementación base de Web Application TB1 | Historial del repositorio webapp y evidencia Sprint 2 |
| Configuración de Fake API / JSON Server | Documentación del alcance simulado TB1 |
| Evidencia de Sprint 2 | Commits del informe y capturas Jira integradas |
| Limpieza final de entrega | Commits convencionales y consolidación en `main` |
| Corrección crítica de redacción o nombres | Commits convencionales sobre el informe |

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

*Tabla. Convenciones de código por lenguaje*

| Lenguaje | Convención adoptada | Aplicación en Nexa |
|---|---|---|
| HTML | Estructura semántica, atributos descriptivos, nombres de archivo en `kebab-case` y rutas relativas para assets | Landing Page y markup base de interfaces web documentadas |
| CSS | Clases en `kebab-case`, tokens reutilizables, separación por responsabilidades visuales y reglas responsive por breakpoint | Consistencia visual entre sitio público, webapp y componentes de interfaz |
| JavaScript | Módulos por responsabilidad, nombres de variables y funciones en `camelCase`, separación entre lógica de interfaz, datos e internacionalización | Comportamiento frontend, i18n, navegación y consumo de datos simulados |
| C# | Convenciones objetivo de ASP.NET Core: tipos en `PascalCase`, miembros públicos en `PascalCase`, variables locales en `camelCase` y separación por capas | Alcance futuro para la RESTful API interna; no se declara backend productivo implementado en TB1 |

**Convenciones de servicios previstas**

En TB1, la webapp utiliza Fake API y servicios cliente para validar consumo por contexto. La orientación REST del backend objetivo funciona como preparación técnica del dominio, no como backend productivo implementado.

### 5.1.4. Software Deployment Configuration

La configuración de despliegue hasta TB1 debe leerse en dos niveles: **despliegue activo** para landing/webapp y **preparación futura** para servicios productivos, base de datos real e integraciones externas. Esta distinción evita sobredeclarar capacidades no demostradas.

*Configuración de despliegue observable hasta TB1*

| Elemento | Configuración o mecanismo | Estado hasta TB1 | Evidencia |
|---|---|---|---|
| Sitio público `nexa-website` | Publicación en **GitHub Pages** desde el repositorio del proyecto | **Activo** | [https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Calidad mínima del repositorio web | Workflow de **GitHub Actions** para `markdownlint` y `commitlint` en `main` | **Activo en repositorio** | Archivo `.github/workflows/lint.yml` en `nexa-website` |
| Informe técnico `nexa-report` | Gestión Docs-as-Code y compilación posterior a PDF | **Activo como repositorio fuente** | Estructura `report/` y control de versiones en GitHub |
| Gestión del sprint | Publicación de backlog y sprint en **Jira** | **Activa como evidencia de proceso** | Capturas y referencias del Sprint 1 |
| Web application `nexa-webapp` | Publicación en **GitHub Pages** desde rama `main` vía GitHub Actions | **Activo en TB1 como frontend con datos simulados** | [nexa-webapp](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-webapp/#/auth/login) |
| Backend y servicios REST | Alcance futuro nombrado en arquitectura y backlog | **No forma parte de TB1 como backend productivo** | [nexa-platform](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform) |

En consecuencia, el procedimiento de despliegue defendible para TB1 incluye versionar cambios en `nexa-website` y `nexa-webapp`, publicarlos en GitHub Pages y validar navegación pública con hash routing. La capa backend productiva permanece como siguiente fase y no debe leerse como evidencia de esta entrega.

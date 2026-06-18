## Project Report Collaboration Insights

Esta sección documenta la colaboración del equipo **KING** en la elaboración y evolución del informe académico de **Nexa**. De acuerdo con el enfoque Docs-as-Code solicitado para el curso, el reporte se mantiene en GitHub y evoluciona mediante commits, revisión cruzada, integración de capítulos y actualización progresiva de evidencias.

La colaboración se describe de forma acumulativa por entrega: Sprint 1 / AV1, Sprint 2 / TB1 y Sprint 3 / AV2. Las evidencias disponibles se organizan por entrega.
### Organización en GitHub

El trabajo del equipo se organizó en una organización pública de GitHub, separando el repositorio del informe académico de los repositorios de implementación. Esta separación permite distinguir la evolución documental del Project Report frente a la evolución técnica de la Landing Page, la Web Application y los Web Services.

| Recurso | URL | Propósito |
|---|---|---|
| Organización GitHub del equipo KING |  [https://github.com/upc-pre-202610-1asi0730-12242-king](https://github.com/upc-pre-202610-1asi0730-12242-king) | Agrupar los repositorios oficiales del proyecto Nexa. |
| Repositorio del Project Report |[https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report) | Mantener el informe académico en formato Markdown bajo enfoque Docs-as-Code. |
| Repositorio de la Landing Page |  [https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) | Contener el sitio público de Nexa y sus evidencias asociadas. |
| Repositorio de la Web Application |[https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp) | Contener la aplicación web frontend desarrollada para los flujos principales del producto. |
| Repositorio de Web Services |  [https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform) | Contener la primera versión de servicios backend de Nexa Platform documentada para AV2. |
| Landing Page | [https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) | Evidencia pública del sitio de presentación del producto. |
| Web Application |  [https://nexa-webapp.onrender.com](https://nexa-webapp.onrender.com) | Evidencia pública de la Web Application desplegada en Render para revisión académica. |
| Platform API | [https://nexa-platform-api.onrender.com](https://nexa-platform-api.onrender.com) | Evidencia pública del despliegue controlado de la API en Render para AV2. |

### Releases auditados para AV2

| Repositorio | Release / estado documental | Evidencia auditada |
|---|---|---|
| `nexa-website` | `v3.0.0` | Tag `v3.0.0` del 15/06/2026; registra el release de cierre AV2 disponible para revisión de Landing Page. |
| `nexa-webapp` | `v2.0.0` | Tag `v2.0.0` del 16/06/2026; documenta el release de cierre AV2 disponible para revisión de Web Application. |
| `nexa-platform` | `v1.0.0` | Tag `v1.0.0` del 16/06/2026; registra el release de cierre AV2 disponible para revisión de Web Services. |
| `nexa-ecosystem-report` | `v3.0.0` | Release documental final AV2 del informe académico, consolidando evidencias, anexos, version history, colaboración, implementación y preparación de entrega. |

> *Nota:* La evidencia de releases se interpreta como una evolución incremental. En el Project Report, `nexa-ecosystem-report v3.0.0` consolida el cierre documental AV2. En Landing Page, `nexa-website` conserva releases previos de AV2 como `v2.2.0` y `v2.3.0`, hasta llegar al release de cierre `v3.0.0`. En Web Services, `nexa-platform` conserva evidencia de `v0.6.1` como parche de validación AV2 y `v1.0.0` como release de cierre backend. En Web Application, `nexa-webapp` conserva `v1.7.1` como patch AV2 previo, `v1.8.0` como cleanup/layout polish y `v2.0.0` como release de cierre WebApp para el corte AV2.

### Evidencia principal del Project Report

El repositorio principal del informe es [https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report). Para el cierre AV2, `nexa-ecosystem-report v3.0.0` consolida la versión documental del reporte académico. Los commits recientes evidencian la preparación del informe, ajustes de formato académico, version history, anexos, validación documental, evidencias de Sprint 3 y preparación del PDF. Las branches `main` y `develop` evidencian el flujo GitFlow documental, mientras que los insights muestran actividad colaborativa del equipo en el repositorio del informe.

![GitHub Release nexa-ecosystem-report v3.0.0](../assets/images/front-matter/collaboration/report-releases/nexa-ecosystem-report-v3-0-0-release.png)

Figura. Release documental `nexa-ecosystem-report v3.0.0` utilizado como evidencia principal del cierre AV2 del informe académico. Elaboración propia.

![Commits recientes nexa-ecosystem-report AV2](../assets/images/front-matter/collaboration/report-commits/nexa-ecosystem-report-commits-av2-recent.png)

Figura. Commits recientes del repositorio `nexa-ecosystem-report` asociados a la consolidación documental AV2. Elaboración propia.

![Branches nexa-ecosystem-report AV2](../assets/images/front-matter/collaboration/report-branches/nexa-ecosystem-report-branches.png)

Figura. Ramas `main` y `develop` del repositorio `nexa-ecosystem-report` como evidencia del flujo GitFlow documental. Elaboración propia.

![GitHub Insights nexa-ecosystem-report AV2](../assets/images/front-matter/collaboration/github-insights/nexa-ecosystem-report-insights-av2.png)

Figura. GitHub Insights del repositorio `nexa-ecosystem-report` como evidencia principal de colaboración documental AV2. Elaboración propia.

| Commit | Mensaje | Rol en la trazabilidad documental AV2 |
|---|---|---|
| `11960db` | `chore(release): merge report v2.6.0 to main` | Consolidación de cambios documentales recientes hacia `main`. |
| `1fd2007` | `chore(gitflow): merge hotfix/final-formatting-pass into develop for v2.6.0` | Integración de correcciones finales de formato académico en `develop`. |
| `8f7bbd9` | `style(formatting): apply final academic formatting and script corrections part 5` | Ajustes finales de formato académico y soporte de scripts. |
| `8f24ccd` | `style(docs-as-code): apply final academic formatting and script corrections part 4` | Continuidad de formato Docs-as-Code para el reporte. |
| `a26457c` | `fix(formatting): apply final academic formatting and script corrections part 3` | Correcciones de formato y ensamblado documental. |
| `644dc06` | `fix(docs-as-code): apply final academic formatting and script corrections part 2` | Correcciones de consistencia Docs-as-Code. |
| `85c6b65` | `fix(formatting): apply final academic formatting and script corrections part 1` | Inicio del bloque final de formato académico. |
| `25bff73` | `chore(release): merge report v2.5.0 to main` | Consolidación documental previa al cierre `v3.0.0`. |
| `0446260` | `chore(gitflow): merge release-notes-v2-series into develop for v2.5.0` | Integración de notas de release y version history. |
| `a3b2101` | `chore(gitflow): merge annexes-evidence-update into develop for v2.5.0` | Integración de anexos y evidencias AV2. |
| `2296f43` | `chore(gitflow): merge ch5-validation-evidence into develop for v2.5.0` | Integración de evidencias de validación y Sprint 3 en Capítulo 5. |

Los repositorios `nexa-website`, `nexa-platform` y `nexa-webapp` se mantienen como evidencias complementarias del ecosistema implementado.

### Despliegues AV2

Para AV2, `nexa-webapp` se registra como Web Application desplegada en Render mediante  [https://nexa-webapp.onrender.com](https://nexa-webapp.onrender.com). Asimismo, `nexa-platform` registra una Platform API desplegada en Render mediante  [https://nexa-platform-api.onrender.com](https://nexa-platform-api.onrender.com). En el backend, la auditoría final evidencia una evolución de la configuración de persistencia hacia PostgreSQL con el objetivo de soportar el despliegue controlado en Render.

Esta migración se documenta como parte del corte académico AV2 y no implica declarar operación productiva ni validación cerrada con usuarios. La evidencia visual específica de Render, Swagger y releases ya se encuentra incorporada en Sprint 3 y anexos.

### Distribución de actividades del equipo

| Integrante | Frente principal | Tareas documentadas | Evidencia asociada |
|---|---|---|---|
| Marín Cueva, César Fernando | Revisión documental, consistencia académica y soporte de Sprint 3. | Actualización de Capítulo 3, Landing Page mockups, Capítulo 5, Sprint 3 y notas de despliegue/PostgreSQL donde aplica. | Commits AV2 del reporte, evidencia de Capítulo 5 y commits de `nexa-platform` relacionados con documentación de Render/PostgreSQL. |
| Rojas Mancilla, Gerard Gianpier | Arquitectura técnica, Invoicing, consultas/comandos y consistencia backend. | Colaboración en bounded contexts, documentación técnica, Shared Kernel, persistencia e Invoicing. | Capítulo 4, Capítulo 5, repositorios `nexa-webapp` y `nexa-platform`. |
| Torrejón De Los Santos, Gino Rodrigo | Catalog Management, coherencia funcional y evidencias de producto. | Colaboración en Catalog Management, relación entre investigación, diseño, backlog, UX y alcance funcional AV2. | Capítulo 3, Capítulo 4, Student Outcome y commits técnicos asociados a catálogo. |
| Verde Bueno, Joaquín Francisco | Warehouse, mockups, UX/UI y continuidad visual. | Reemplazo/adición de mockups por segmento, trazabilidad de Warehouse y continuidad entre flujos UX y backend. | Capítulo 4, assets del informe y commits AV2 de mockups. |
| Yucra Sandoval, Diego Sebastian | Coordinación general, releases, integración documental y despliegues. | Coordinación de releases auditados, WebApp/API en Render, PostgreSQL, SCM, Sprint 3 y alineación final del reporte. | Commits de release, README, auditorías técnicas y actualización documental del informe. |

### Evidencias de GitHub Insights

#### Sprint 1 / AV1

![GitHub Insights del equipo KING](../assets/images/front-matter/collaboration/github-insights.png)

Figura. GitHub Insights histórico del equipo KING utilizado como evidencia inicial de colaboración durante AV1/TB1. Elaboración propia.

#### Sprint 2 / TB1

![GitHub Insights Sprint 2 / TB1](../assets/images/front-matter/collaboration/github-insights/sprint-2-github-insights.png)

Figura. GitHub Insights utilizado como evidencia de actividad y colaboración durante Sprint 2 / TB1. Elaboración propia.

#### Sprint 3 / AV2

![GitHub Insights de nexa-platform durante Sprint 3 / AV2](../assets/images/front-matter/collaboration/github-insights/sprint-3-github-insights.png)

Figura. GitHub Insights del repositorio `nexa-platform` durante Sprint 3 / AV2, asociado a la actividad del backend y al release de Web Services. Elaboración propia.

### Evidencias complementarias del ecosistema AV2

Durante el cierre AV2, el equipo distribuyó trabajo entre Landing Page, WebApp, Web Services y reporte. Según la coordinación del equipo, Gino y Joaquín trabajaron en la Landing Page; Diego y César apoyaron el cierre de WebApp; Gerard concentró trabajo backend; y el repositorio `nexa-ecosystem-report` se mantuvo como repositorio documental integrador. El intervalo principal de trabajo coordinado ocurrió aproximadamente entre las 3:00 p. m. y las 2:00 a. m.

![GitHub Insights nexa-website AV2](../assets/images/front-matter/collaboration/github-insights/nexa-website-insights-av2.png)

Figura. GitHub Insights complementario de `nexa-website` para AV2: 4 autores, 16 commits y release `v3.0.0`. Elaboración propia.

![GitHub Insights nexa-platform AV2](../assets/images/front-matter/collaboration/github-insights/nexa-platform-insights-av2.png)

Figura. GitHub Insights complementario de `nexa-platform` para AV2: 5 autores, 180 commits y release `v1.0.0`. Elaboración propia.

![GitHub Insights nexa-webapp AV2](../assets/images/front-matter/collaboration/github-insights/nexa-webapp-insights-av2.png)

Figura. GitHub Insights complementario de `nexa-webapp` para AV2: 5 autores, 177 commits, 15 releases y release `v2.0.0`. Elaboración propia.

> *Nota:* Estas evidencias complementan los commits e insights del repositorio `nexa-ecosystem-report`.

### Evidencias de commits por repositorio

#### nexa-ecosystem-report

![Primeros commits nexa-ecosystem-report](../assets/images/front-matter/collaboration/report-commits/first-commits.png)

Figura. Primeros commits del repositorio `nexa-ecosystem-report`. Elaboración propia.

![Commits intermedios nexa-ecosystem-report](../assets/images/front-matter/collaboration/report-commits/commits.png)

Figura. Bloque intermedio de commits del repositorio `nexa-ecosystem-report`. Elaboración propia.

![Últimos commits nexa-ecosystem-report](../assets/images/front-matter/collaboration/report-commits/last-commits.png)

Figura. Últimos commits del repositorio `nexa-ecosystem-report` registrados como evidencia documental del informe. Para AV2 se consideran como referencia los commits `b3ed14b`, `7fec7ca`, `1fac304`, `e83deb7`, `6aa80f5`, `0537d19` y `6035681`. Elaboración propia.

#### nexa-website

![Primeros commits nexa-website](../assets/images/front-matter/collaboration/website-commits/first-commits.png)

Figura. Primeros commits del repositorio `nexa-website`. Elaboración propia.

![Commits intermedios nexa-website](../assets/images/front-matter/collaboration/website-commits/commits.png)

Figura. Bloque intermedio de commits del repositorio `nexa-website`. Elaboración propia.

![Últimos commits nexa-website](../assets/images/front-matter/collaboration/website-commits/last-commits.png)

Figura. Últimos commits históricos del repositorio `nexa-website`. Para el corte AV2 complementario se registra además el release `v3.0.0` y sus capturas reales en esta sección. Elaboración propia.

#### nexa-platform

![Commits nexa-platform v0.6.0 parte 1](../assets/images/front-matter/collaboration/platform-commits/nexa-platform-commits-v0-6-0-pt1.png)

Figura. Commits del repositorio `nexa-platform` asociados al desarrollo de Web Services para Sprint 3 / AV2, parte 1. Elaboración propia.

![Commits nexa-platform v0.6.0 parte 2](../assets/images/front-matter/collaboration/platform-commits/nexa-platform-commits-v0-6-0-pt2.png)

Figura. Commits del repositorio `nexa-platform` asociados al desarrollo de Web Services para Sprint 3 / AV2, parte 2. Elaboración propia.

![Commits nexa-platform v0.6.0 parte 3](../assets/images/front-matter/collaboration/platform-commits/nexa-platform-commits-v0-6-0-pt3.png)

Figura. Commits del repositorio `nexa-platform` asociados al desarrollo de Web Services para Sprint 3 / AV2, parte 3. Elaboración propia.

![Commits nexa-platform v0.6.0 parte 4](../assets/images/front-matter/collaboration/platform-commits/nexa-platform-commits-v0-6-0-pt4.png)

Figura. Commits del repositorio `nexa-platform` asociados al desarrollo de Web Services para Sprint 3 / AV2, parte 4. Elaboración propia.

![Commits nexa-platform v0.6.0 parte 5](../assets/images/front-matter/collaboration/platform-commits/nexa-platform-commits-v0-6-0-pt5.png)

Figura. Commits del repositorio `nexa-platform` asociados al desarrollo de Web Services para Sprint 3 / AV2, parte 5. Elaboración propia.

![Commits nexa-platform v0.6.0 parte 6](../assets/images/front-matter/collaboration/platform-commits/nexa-platform-commits-v0-6-0-pt6.png)

Figura. Commits del repositorio `nexa-platform` asociados al desarrollo de Web Services para Sprint 3 / AV2, parte 6. Elaboración propia.

![Commits nexa-platform v0.6.0 parte 7](../assets/images/front-matter/collaboration/platform-commits/nexa-platform-commits-v0-6-0-pt7.png)

Figura. Commits del repositorio `nexa-platform` asociados al desarrollo de Web Services para Sprint 3 / AV2, parte 7. Elaboración propia.

![Commits nexa-platform v0.6.0 parte 8](../assets/images/front-matter/collaboration/platform-commits/nexa-platform-commits-v0-6-0-pt8.png)

Figura. Commits del repositorio `nexa-platform` asociados al desarrollo de Web Services para Sprint 3 / AV2, parte 8. Elaboración propia.

![Commits nexa-platform v0.6.0 parte 9](../assets/images/front-matter/collaboration/platform-commits/nexa-platform-commits-v0-6-0-pt9.png)

Figura. Commits representativos del repositorio `nexa-platform` para la primera versión AV2 de Web Services. Para el corte AV2 complementario se registra además el release `v1.0.0` y sus capturas reales en esta sección. Elaboración propia.

### Sprint collaboration en Jira

#### Sprint 1 / AV1

![Jira: Vista general Sprint 0 y Sprint 1](../assets/images/front-matter/collaboration/jira/sprint-0-sprint-1.png)

Figura. Vista general Sprint 0 y Sprint 1 en Jira. Elaboración propia.

![Jira Sprint 1: parte 2](../assets/images/front-matter/collaboration/jira/sprint-1-p2.png)

Figura. Sprint 1 en Jira, parte 2. Elaboración propia.

![Jira Sprint 1: parte 3](../assets/images/front-matter/collaboration/jira/sprint-1-p3.png)

Figura. Sprint 1 en Jira, parte 3. Elaboración propia.

#### Sprint 2 / TB1

![Jira Product Backlog](../assets/images/front-matter/collaboration/jira/backlog.png)

Figura. Product Backlog en Jira utilizado como evidencia de planificación y seguimiento para TB1. Elaboración propia.

#### Sprint 3 / AV2

![Tablero Jira Sprint 3 / AV2](../assets/images/front-matter/collaboration/jira/sprint-3-board-jira.png)

Figura. Tablero Jira del Sprint 3 / AV2 utilizado como evidencia de planificación, seguimiento y distribución del trabajo durante el cierre AV2. Elaboración propia.

**URL del board/backlog:** **Jira Backlog — Proyecto Nexa:** [https://team-nexa.atlassian.net/jira/software/projects/NX/boards/1/backlog](https://team-nexa.atlassian.net/jira/software/projects/NX/boards/1/backlog)

### Colaboración acumulada por entrega

| Entrega | Enfoque de colaboración | Resultado documentado |
|---|---|---|
| Sprint 1 / AV1 | Construcción inicial del informe, definición del problema, segmentos, Lean UX, requisitos, diseño inicial y Landing Page. | Reporte base estructurado, Landing Page documentada, evidencias iniciales de commits y coordinación. |
| Sprint 2 / TB1 | Consolidación de la Web Application frontend, actualización de UX/UI, mejora del Product Backlog, evidencias de repositorios y revisión integral del reporte. | Reporte ampliado, Web Application documentada, evidencias de commits, Jira y coordinación del equipo. |
| Sprint 3 / AV2 | Consolidación de Web Services, actualización de Web Application, despliegues Render, migración/configuración hacia PostgreSQL y revisión documental del corte AV2. | Reporte actualizado para AV2, despliegues controlados documentados, pendientes no técnicos delimitados y trazabilidad entre colaboración, implementación y validación. |

### Evidencias de coordinación y trabajo en equipo

#### Sprint 1 / AV1

![Reunión de coordinación del equipo KING](../assets/images/front-matter/collaboration/team-collaboration-meeting.jpg)

Figura. Reunión de coordinación del equipo KING durante el Sprint 1. Elaboración propia.

![Colaboración del equipo durante Sprint 1](../assets/images/front-matter/collaboration/sprint-collaboration-evidence.jpg)

Figura. Trabajo colaborativo del equipo KING durante el Sprint 1. Elaboración propia.

![Práctica de exposición AV1](../assets/images/front-matter/collaboration/presentation-practice-evidence.png)

Figura. Práctica de exposición y preparación de la sustentación AV1 del equipo KING. Elaboración propia.

#### Sprint 2 / TB1

![Evidencia de coordinación grupal Sprint 2](../assets/images/front-matter/collaboration/team-collaboration-metting-2.png)

Figura. Reunión de coordinación del equipo KING durante el Sprint 2. Elaboración propia.

![Práctica de exposición TB1](../assets/images/front-matter/collaboration/tb1-presentation-evidence.jpeg)

Figura. Práctica de exposición del equipo KING para la sustentación TB1. Elaboración propia.

#### Sprint 3 / AV2

![Evidencia de coordinación grupal Sprint 3](../assets/images/front-matter/collaboration/sprint-3-collaboration-meeting.jpeg)

Figura. Trabajo colaborativo del equipo KING durante el Sprint 3. Elaboración propia.

![Colaboración del equipo durante Sprint 3](../assets/images/front-matter/collaboration/team-collaboration-meeting-3.jpeg)

Figura. Trabajo colaborativo del equipo KING durante el Sprint 3. Elaboración propia.

![Práctica de exposición AV2](../assets/images/front-matter/collaboration/sprint-3-expo-av2.png)

Figura. Práctica de exposición y preparación de la sustentación AV2 del equipo KING. Elaboración propia.

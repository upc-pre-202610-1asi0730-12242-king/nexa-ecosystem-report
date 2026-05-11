## 5.2. Landing Page, Services & Applications Implementation

Para TB1, esta sección debe leerse como una secuencia de incrementos. **Sprint 1** corresponde a la línea base histórica de AV1: landing page pública, estructura documental, investigación inicial, diseño y preparación del producto. **Sprint 2** corresponde al incremento actual de TB1: consolidación de la Web Application, evidencia frontend, flujos por rol y soporte simulado para revisar el circuito comercial-logístico.

La entrega TB1 se concentra en la Web Application como evidencia central. Los recorridos priorizados pertenecen a S1 (coordinación comercial / ventas internas) y S2 (jefatura logística / coordinación operativa), porque Sprint 2 enfoca el circuito interno de captura, revisión, disponibilidad, despacho y seguimiento. S3 (comprador B2B / cliente comercial) se mantiene como segmento objetivo válido, con cobertura parcial a nivel visual y continuidad documentada a nivel de requisitos y flujos.

Sprint 1 no se elimina ni se reinterpreta como entrega actual. Se conserva como antecedente AV1 porque explica la base pública, el trabajo de planificación y la evolución del informe. La lectura principal de TB1 se ubica en Sprint 2, donde se documentan los commits, mockups, rutas, capturas ya existentes y límites del alcance actual sin declarar servicios productivos que todavía no corresponden a la entrega.

*Alcance TB1 frente a evolución prevista*

| Artefacto | Estado en TB1 | Evidencia en el reporte | Evolución esperada |
|---|---|---|---|
| Landing Page | Línea base AV1 conservada y conectada al avance TB1 | Sprint 1, evidencias de despliegue del sitio público y continuidad en Sprint 2 | Mantenerla como entrada pública y punto de enlace hacia la Web Application |
| Web Application | Incremento central de TB1 | Sprint 2, mockups actuales, screenshots existentes, rutas y commits representativos | Ampliar cobertura funcional y validación con usuarios |
| Fake API / servicios simulados | Soporte simulado para revisar flujos frontend | Sprint 2 y Services Documentation Evidence for Sprint Review | Evolucionar hacia servicios internos formales cuando el backend esté implementado |
| RESTful API interna | Evolución prevista; no se declara implementación productiva en TB1 | Arquitectura objetivo y planificación de servicios | Implementar contratos reales para Web Services |
| OpenAPI / Swagger | Evolución prevista; no se declara documentación formal en TB1 | Referencia como documentación futura de la API interna | Documentar endpoints cuando exista la API interna |
| Backend C# / ASP.NET Core | Alcance futuro / diseño objetivo | `nexa-platform` como repositorio planificado y arquitectura del Capítulo IV | Implementar la capa backend en un hito posterior |
| Database | Modelo objetivo; no se declara base de datos productiva en TB1 | Database Design del Capítulo IV | Llevar el modelo a persistencia real cuando maduren servicios y backend |
| Validation Interviews | No desarrollado en TB1 | Encabezado 5.3 sin desarrollo | Ejecutar y documentar entrevistas de validación en el siguiente hito |
| Video About-the-Product | No desarrollado en TB1 | Encabezado 5.4 sin desarrollo | Producir el video cuando el alcance de validación corresponda |
| S3 UI coverage | Parcial en TB1 | Requisitos, user flow Mermaid y nota de alcance en UX/UI | Ampliar mockups y evidencia visual del comprador B2B en el siguiente hito |

### 5.2.1. Sprint 1

El Sprint 1 concentra la entrega AV1 y constituye la base del incremento visible del proyecto. La salida funcional verificable es la landing page pública en GitHub Pages; sin embargo, la lectura ingenieril del sprint exige considerar también la coherencia entre backlog, diseño, arquitectura, trazabilidad documental y coordinación del equipo. Bajo esta lógica, la revisión del sprint no se limita a “qué página se publicó”, sino a **qué sistema de trabajo permitió llegar a esa publicación sin perder consistencia con el problema, los segmentos y la preparación técnica del producto**.

#### 5.2.1.1. Sprint Planning 1.

La planificación del Sprint 1 se orientó a producir un incremento AV1 que pudiera exponerse de forma pública sin sacrificar profundidad técnica. El objetivo no fue desplegar todavía el portal transaccional completo, sino articular una primera capa visible del producto respaldada por investigación, diseño y arquitectura. La captura de Jira muestra un sprint cargado con trabajo concurrente en varios frentes, lo cual confirma una planificación por capas y no por tareas aisladas.

*Resumen formal del Sprint Planning 1*

| Campo | Registro |
| :--- | :--- |
| **Sprint** | Sprint 1 |
| **Objetivo del sprint (SMART)** | Desplegar la primera versión pública de la Landing Page de Nexa y su arquitectura base (Outcome) para validar la propuesta de valor y atraer prospectos (Impact) enfocados en los segmentos S1 y S2 (Customer) al cierre de la entrega AV1 el 23 de abril de 2026 (Event). |
| **Fecha del sprint** | 01 de abril de 2026 - 23 de abril de 2026 |
| **Modalidad / canal** | Sesiones remotas grabadas vía Microsoft Stream / Microsoft Teams |
| **Enlace de la sesión** | [Grabación del Sprint 1 (Stream)](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202323040_upc_edu_pe/IQB8-qbGfc2ITIq6rlp5kvTuAWFIKesw8RDNiVv6OZDrAHE?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=3i1BUi) |
| **Preparado por** | Yucra Sandoval, Diego Sebastian |
| **Asistentes** | Diego Yucra, Joaquín Verde, César Marín, Gino Torrejón, Gerard Rojas |
| **Herramienta principal** | Jira Software |
| **Carga visible** | 51 issues principales en Sprint 1: 23 historias + 28 tareas; 16 subtareas reales asociadas por parent |

La carga anterior corresponde al corte normalizado de Jira verificado el 24 de abril de 2026. Las subtareas no aparecen como issues directas del sprint en la consulta principal porque Jira las administra bajo sus historias padre; por eso se documentan en una tabla separada, preservando la trazabilidad entre historia, tarea técnica y evidencia del incremento.

#### 5.2.1.2. Aspect Leaders and Collaborators.

La ejecución del sprint evidencia una distribución funcional del liderazgo. En lugar de concentrar toda la iteración en un único perfil, el equipo repartió la responsabilidad entre dominio, diseño, arquitectura, documentación y construcción visible del sitio. Esta organización es consistente con el Student Outcome ABET 5 y explica por qué el incremento AV1 combina trabajo público demostrable con profundidad ingenieril.

*Distribución de liderazgos y roles funcionales en el Sprint 1*

| Team Member | GitHub Username | Project Management | UX/UI Design | Software Architecture | Frontend Development | Documentation |
| :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| Yucra Sandoval, Diego Sebastian | DiegoS284 | L | C | C | C | C |
| Verde Bueno, Joaquín Francisco | JoaquinVerde115 | C | L | C | C | C |
| Marín Cueva, César Fernando | Cmarin2802 | C | C | C | C | L |
| Torrejón De Los Santos, Gino Rodrigo | R0obxdnt-bit | C | C | C | C | L |
| Rojas Mancilla, Gerard Gianpier | GerardRojasMancilla | C | C | L | L | C |

#### 5.2.1.3. Sprint Backlog 1.

El Sprint Backlog 1 concentra el trabajo realizado entre el **2026-04-01 y 2026-04-23**. El objetivo principal del sprint fue construir la base documental del proyecto, organizar el trabajo bajo Docs-as-Code y consolidar el primer entregable visible mediante el Landing Page, junto con los artefactos iniciales de investigación, diseño y backlog.

![Sprint Backlog 1 en Jira](../assets/images/jira/sprint-1-board-jira.png)

**URL del board/backlog:** [Jira Backlog — Proyecto Nexa](https://team-nexa.atlassian.net/jira/software/projects/NX/boards/1/backlog)

La siguiente tabla presenta los User Stories asignados al Sprint 1 y los Work-items utilizados para descomponer el trabajo. Las tareas adicionales sin User Story directa corresponden a actividades de configuración, documentación y soporte necesarias para cumplir el objetivo del sprint.

| Sprint # | User Story Id | User Story Title | Work-Item / Task Id | Task Title | Description | Estimation (Hours) | Assigned To | Status |
|---|---|---|---|---|---|---:|---|---|
| Sprint 1 | - | Setup inicial del entorno Docs-as-Code | NX-56 | Preparar estructura base del reporte | Organizar la base documental en Markdown para registrar el avance del proyecto desde el primer sprint. | 3.5 | Diego Yucra Sandoval | Done |
| Sprint 1 | - | Redactar reporte de avance del Sprint 0 con métricas del equipo | NX-252 | Documentar avance inicial del proyecto | Registrar el avance documental inicial y las primeras decisiones del equipo para sostener la trazabilidad del informe. | 7.0 | Diego Yucra Sandoval | Done |
| Sprint 1 | - | Crear y configurar repositorio en GitHub con estructura inicial | NX-253 | Configurar repositorio del proyecto | Crear la base del repositorio y organizar la estructura inicial del trabajo colaborativo. | 7.5 | Gerard Rojas Mancilla | Done |
| Sprint 1 | - | Implementar estructura base de landing page pública | NX-389 | Construir base del Landing Page | Implementar la estructura inicial del sitio público para presentar la propuesta de valor del producto. | 5.0 | Diego Yucra Sandoval | Done |
| Sprint 1 | - | Documentar wireframes y mockups de landing page | NX-390 | Registrar diseño visual del Landing Page | Documentar los wireframes y mockups del sitio público como evidencia de diseño UX/UI. | 3.0 | Diego Yucra Sandoval | Done |
| Sprint 1 | - | Consolidar entrevistas y artefactos de needfinding | NX-391 | Organizar evidencia de investigación | Consolidar entrevistas, hallazgos y artefactos iniciales de análisis de usuarios. | 7.5 | Diego Yucra Sandoval | Done |
| Sprint 1 | - | Modelar dominio inicial con EventStorming y C4 | NX-392 | Documentar modelado inicial de dominio | Elaborar y registrar artefactos iniciales de dominio y arquitectura de alto nivel. | 5.5 | Gerard Rojas Mancilla | Done |
| Sprint 1 | - | Configurar estructura Docs-as-Code del reporte | NX-393 | Ordenar estructura documental del informe | Ajustar la organización del reporte para que siga la estructura solicitada en el statement. | 3.5 | Diego Yucra Sandoval | Done |
| Sprint 1 | - | Documentar Lean UX Canvas y Assumptions | NX-534 | Completar artefactos Lean UX | Registrar assumptions, problem statements y canvas como soporte de discovery del proyecto. | 3.5 | Gino Torrejón | Done |
| Sprint 1 | - | Estructurar Product Backlog y User Stories | NX-536 | Organizar backlog inicial | Redactar y ordenar las User Stories y el Product Backlog inicial del producto. | 4.0 | César Marín | Done |
| Sprint 1 | - | Realizar análisis de competidores | NX-540 | Documentar benchmarking competitivo | Analizar competidores y registrar hallazgos para sustentar la diferenciación de Nexa. | 3.5 | Gerard Rojas Mancilla | Done |
| Sprint 1 | US01 | Identificar el problema que atiende Nexa | NX-224 | Redactar contenido de problema principal | Presentar en el Landing Page el problema central que busca resolver Nexa. | 2.0 | Joaquín Verde | Done |
| Sprint 1 | US02 | Reconocer el impacto de la información dispersa | NX-225 | Documentar impacto del problema | Explicar el impacto operativo de trabajar con información dispersa en pedidos y coordinación. | 2.0 | Gino Torrejón | Done |
| Sprint 1 | US03 | Recorrer información pública con continuidad | NX-226 | Organizar recorrido del sitio público | Definir la continuidad de navegación del Landing Page para visitantes. | 2.5 | Diego Yucra Sandoval | Done |
| Sprint 1 | US04 | Consultar la propuesta en el idioma preferido | NX-227 | Registrar soporte de idioma | Documentar la intención de consulta multilenguaje en la propuesta pública. | 2.0 | Joaquín Verde | Done |
| Sprint 1 | US05 | Distinguir alcance inicial y evolución futura | NX-228 | Explicar alcance inicial del producto | Diferenciar el alcance inicial del producto y su evolución esperada. | 2.0 | Joaquín Verde | Done |
| Sprint 1 | US06 | Encontrar información complementaria de confianza | NX-229 | Organizar información de confianza | Presentar información complementaria que refuerce la credibilidad del Landing Page. | 1.5 | César Marín | Done |
| Sprint 1 | US07 | Identificar valor para distribuidoras refrigeradas | NX-230 | Redactar propuesta para distribuidoras | Explicar el valor de Nexa para distribuidoras de productos refrigerados. | 2.5 | Gino Torrejón | Done |
| Sprint 1 | US08 | Identificar valor para importadoras y mayoristas | NX-231 | Redactar propuesta para importadoras y mayoristas | Presentar el valor de Nexa para importadoras y mayoristas con operación B2B. | 2.0 | Diego Yucra Sandoval | Done |
| Sprint 1 | US09 | Identificar valor para operadores de almacenamiento frío | NX-232 | Redactar propuesta para almacenamiento frío | Explicar el valor del producto para operadores vinculados a almacenamiento refrigerado. | 2.0 | Diego Yucra Sandoval | Done |
| Sprint 1 | US10 | Reconocer capacidades centrales antes del acceso | NX-233 | Documentar capacidades principales | Mostrar capacidades centrales del producto antes de ingresar a la aplicación operativa. | 2.0 | Diego Yucra Sandoval | Done |
| Sprint 1 | US11 | Resolver dudas frecuentes antes del contacto | NX-234 | Estructurar preguntas frecuentes | Organizar dudas frecuentes para reducir fricción antes del contacto comercial. | 2.0 | Gerard Rojas Mancilla | Done |
| Sprint 1 | US12 | Solicitar contacto comercial | NX-235 | Implementar contacto comercial | Habilitar una ruta de contacto para visitantes interesados en la propuesta. | 3.0 | César Marín | Done |
| Sprint 1 | US13 | Indicar contexto de empresa interesada | NX-236 | Capturar contexto de empresa | Permitir que el visitante indique información básica sobre su empresa. | 2.0 | César Marín | Done |
| Sprint 1 | US14 | Compartir necesidad operativa principal | NX-237 | Registrar necesidad operativa | Permitir que el visitante comunique la principal necesidad operativa que desea resolver. | 2.0 | César Marín | Done |
| Sprint 1 | US15 | Evaluar acompañamiento para adopción inicial | NX-238 | Explicar acompañamiento inicial | Mostrar el soporte de adopción inicial considerado para empresas interesadas. | 2.5 | César Marín | Done |
| Sprint 1 | US16 | Revisar tratamiento de datos de contacto | NX-239 | Documentar tratamiento de datos | Presentar el tratamiento básico de datos de contacto del visitante. | 2.0 | Diego Yucra Sandoval | Done |
| Sprint 1 | US17 | Consultar condiciones generales de uso | NX-240 | Documentar condiciones generales | Presentar condiciones generales asociadas al uso de la experiencia pública. | 2.0 | Diego Yucra Sandoval | Done |
| Sprint 1 | US18 | Diferenciar sitio público y aplicación operativa | NX-241 | Explicar relación Landing Page y Web Application | Diferenciar el sitio público informativo de la aplicación operativa interna. | 2.5 | Joaquín Verde | Done |
| Sprint 1 | - | Desplegar Landing Page en hosting estático | NX-544 | Publicar Landing Page | Desplegar el Landing Page para disponer de una evidencia pública del primer incremento. | 7.0 | Diego Yucra Sandoval | Done |


Nota. Las estimaciones se registran en horas para el control del Sprint Backlog, mientras que la priorización general del Product Backlog se mantiene en Story Points. Elaboración propia.

#### 5.2.1.4. Development Evidence for Sprint Review.

La evidencia de desarrollo del Sprint 1 abarca cuatro repositorios activos dentro de la organización [upc-pre-202610-1asi0730-12242-king](https://github.com/upc-pre-202610-1asi0730-12242-king). El repositorio **nexa-report** concentra toda la documentación académica del proyecto, construida de forma incremental desde el 01/04/2026. El repositorio **nexa-website** contiene la implementación real del Landing Page desplegado en GitHub Pages. Los repositorios **[nexa-platform](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform)** y **[nexa-webapp](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp)** fueron inicializados durante el sprint como base para la siguiente iteración. A continuación se presenta la tabla de commits relacionados con el incremento del Sprint 1, organizados por repositorio.

*Commits del repositorio `nexa-report`*

Documentación académica del proyecto, construida de forma incremental.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `e1826fd` | `chore(repo): initialize repository structure and base readme` | | 01/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `4761937` | `docs(front-matter): add cover page` | | 02/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `994c001` | `docs(front-matter): add version history table` | | 02/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `9e85ce7` | `docs(front-matter): add table of contents` | | 02/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `2cddd62` | `docs(ch1): add startup profile with team background and mission` | | 03/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `263b6ec` | `docs(ch1): add solution profile and lean ux hypothesis` | | 04/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `961015e` | `docs(ch1): add target segments S1, S2 and S3` | | 04/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `8b34ceb` | `docs(ch2): add competitive analysis of Riqra, Drivin and OnTracking` | | 05/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `26c59b0` | `docs(ch2): add interview guide and candidate registry` | | 05/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `e7ea6a4` | `docs(ch2): add needfinding with user personas and journey maps` | | 06/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `fb70e01` | `docs(ch2): add big picture event storming session notes` | | 06/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `5474b8d` | `docs(ch2): add ubiquitous language glossary` | | 06/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `7d19a13` | `docs(ch3): add user stories for S1, S2 and S3 with acceptance criteria` | | 07/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `9012b5c` | `docs(ch3): add impact mapping for distributor and buyer goals` | | 07/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `4e3d7b7` | `docs(ch3): add product backlog with epics and story points` | | 07/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `17a9ab7` | `docs(ch4): add style guidelines with colors, typography and spacing tokens` | | 08/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `c001482` | `docs(ch4): add information architecture and navigation systems` | | 09/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `d38d6f1` | `docs(ch4): add landing page wireframes and mockups` | | 09/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `55e7aa6` | `docs(ch4): add web application ux/ui design` | | 09/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `bdb4291` | `docs(ch4): add web application prototyping flows` | | 10/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `d05960d` | `docs(ch4): add domain-driven architecture with C4 context and container diagrams` | | 11/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `c4712fd` | `docs(ch4): add object-oriented design and class diagrams` | | 11/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `eb33a14` | `docs(ch4): add database design and entity-relationship model` | | 11/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `9e01367` | `docs(ch5): add software configuration management and tooling` | | 11/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `72e31c8` | `refactor(report): restructure repository to UPC docs-as-code standard` | | 16/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `ae3a389` | `docs(ch2): complete interviews registry and expand event storming with policies` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `28b2252` | `docs(ch3): rewrite user stories with 14 epics and 64 stories and structured backlog` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `0baff96` | `docs(ch4): develop software architecture section with full C4 model` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `43a1178` | `docs(report): polish AV1 with re-indexed illustrations and synced TOC` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `d660ca8` | `docs(report): restructure AV1 evidence, clean assets and enforce rubric formats` | | 23/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `9ab7067` | `fix(lint): resolve markdownlint heading increment and hard tab errors` | | 23/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `bdd0ddc` | `docs(ch5): expand development evidence table with real commits from all four repositories` | | 23/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `2996ede` | `docs(ch5): update sprint review evidence blocks and replace jira screenshots` | | 23/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `910087f` | `docs(ch2): add interview percentage breakdown and as-is scenario map` | | 23/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `21858a8` | `docs(ch2-ch4): complete DDD table and add user goal paths to wireflows` | | 23/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `1ffed9c` | `docs(jira): document sprint 1 backlog evidence` | | 24/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `9e7e0a3` | `assets(project-collaboration): add sprint evidence, github insights and commit screenshots` | | 24/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `1133e54` | `docs(front-matter): add collaboration insights, update cover and complete annexes A.4` | | 24/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `65cf019` | `assets(jira): update sprint and backlog screenshots` | | 24/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `12a30a3` | `docs(front-matter): update jira image references in collaboration insights` | | 24/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `880b191` | `docs(ch5): sync website commit table and fix heading lint in cover` | | 24/04/2026 |

*Commits del repositorio `nexa-website`*

Implementación real del Landing Page desplegado en GitHub Pages.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `3b97299` | `Initial commit` | | 14/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `a175f4c` | `chore: set up initial repository structure and project documentation` | | 17/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `53ef7e3` | `docs: add initial README with project overview and structure` | | 17/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `215b125` | `style(tokens): define Nexa brand design tokens v1.1.0` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `05e01ce` | `docs: add project notes and planning decisions` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `1332ae2` | `feat(landing): scaffold semantic index.html for 4-band Flecto layout` | Bands 1–3 with [data-band] scopes: dark hero, white tabs, cream segments, dark trust+contact. | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `c0877ea` | `feat(landing): add styles/main.css + mirror tokens.css` | Layout grid system bound to tokens.css band scopes ([data-band]). Components and utility classes. | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `d37c0a3` | `feat(landing): add i18n toggle for es_419/en_US lang pairs` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `8efd41c` | `feat(landing): add ARIA tablist with manual activation + indicator animation` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `0327cdc` | `feat(landing): add GSAP band entrance + Band 1 flow-diagram timeline` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `da230eb` | `feat(landing): add 4 SVG product mocks for Band 2 tab panels` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `1d91315` | `feat(design): implement premium visual redesign with new assets` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `2d87251` | `feat: restore landing page to stable baseline` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `427f52b` | `feat: translate DOM content to Spanish and update copy for local context` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `525feac` | `fix(landing): fix i18n bindings, token references and layout inconsistencies` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `e89e497` | `chore: archive legacy docs to nexa-archive` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `f8d12a6` | `chore: clean up code comments` | | 19/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `5601bd3` | `fix(landing): viewport height fixes for laptop screens` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `78fd683` | `docs: update README with live link, repo references and clean structure` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `4a7b43e` | `chore: add .gitignore for OS and system files` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `5cc9089` | `Update team member ID in README.md` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `5255e41` | `ci(lint): add markdownlint and commitlint workflow` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `57e0f9c` | `chore(repo): update local workspace ignore rules` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `f30b3f5` | `fix(docs): correct filename typos in requirements folder` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `94d4735` | `feat(a11y): add skip-to-content link to all pages for WCAG compliance` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `505f4f6` | `docs(report): data update` | | 23/04/2026 |

*Commits del repositorio `nexa-platform`*

Inicialización del repositorio base para el portal transaccional.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `520138d` | `Initial commit` | | 15/04/2026 |

*Commits del repositorio `nexa-webapp`*

Inicialización del repositorio base para la Web Application.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `f374393` | `Initial commit` | | 15/04/2026 |

#### 5.2.1.5. Execution Evidence for Sprint Review.

La ejecución visible del sprint ya se materializa en una landing page pública operativa con navegación multipágina, selector bilingüe, CTA de demostración, páginas por segmento y un relato claro sobre inventario, pedidos, temperatura y entrega. Esta salida confirma que el equipo sí llevó una parte del producto hasta una instancia de exposición real, lo que permite validación comercial y revisión técnica de consistencia entre lo prometido y lo implementado.

*Ejecución observable del incremento Sprint 1*

| Elemento ejecutado | Evidencia observable | Estado |
|---|---|---|
| Home pública | `index.html` desplegado en GitHub Pages | Implementado |
| Página Platform | `pages/platform.html` | Implementado |
| Página Solutions y subpáginas por segmento | `pages/solutions/index.html`, `importers.html`, `distributors.html`, `cold-storage.html` | Implementado |
| Página Company | `pages/company.html` | Implementado |
| Página FAQ | `pages/faq.html` | Implementado |
| Sistema bilingüe | `assets/js/i18n.js` y selector EN/ES | Implementado |
| Interacciones del sitio | `assets/js/interactions.js` y `assets/js/animations.js` | Implementado |
| Portal B2B autenticado | Solo modelado en backlog y diseño | No forma parte de AV1 |
| API y servicios REST | Solo modelados en backlog y arquitectura | No forma parte de AV1 |

Al mismo tiempo, la ejecución debe leerse con honestidad de alcance: el portal B2B autenticado, la captura transaccional de pedidos, el catálogo privado, la autenticación y el seguimiento operativo aún no forman parte del incremento entregado. Su presencia en backlog y en arquitectura demuestra preparación, pero no debe confundirse con ejecución completada dentro de AV1.

#### 5.2.1.6. Services Documentation Evidence for Sprint Review.

La documentación de servicios en AV1 existe principalmente como **evidencia de diseño y preparación técnica**. El backlog ya incorpora historias de API y documentación (`NX-138`, además de las historias técnicas del bloque US58-US64), mientras que el capítulo 4 conserva la arquitectura DDD/C4, el diseño orientado a objetos y la base de datos que servirán de soporte a una fase posterior. Esta base es válida como sustento de ingeniería, porque muestra contratos previstos, separación de capas y reglas de negocio modeladas antes de implementar controladores productivos.

*Evidencia disponible de documentación de servicios en AV1*

| Tipo de evidencia | Fuente | Alcance defendible |
|---|---|---|
| Historias técnicas de API | Capítulo 3 y backlog priorizado | Define necesidades y operaciones previstas |
| Diseño DDD y bounded contexts | Sección 4.6 | Delimita responsabilidades del dominio |
| Diseño orientado a objetos | Sección 4.7 | Anticipa entidades y relaciones del backend |
| Diseño de base de datos | Sección 4.8 | Prepara persistencia para futuros servicios |
| Implementación ejecutable de servicios | **No corresponde en esta entrega** | Queda fuera del alcance observable de AV1 |

Por tanto, esta subsección debe defenderse como **documentación técnica preparada**, no como servicio implementado ni desplegado en producción. En AV1 basta con demostrar que el producto ya tiene una base de arquitectura y de contratos pensada para la siguiente fase, sin sobredeclarar software que todavía no corresponde a esta entrega.

#### 5.2.1.7. Software Deployment Evidence for Sprint Review.

La evidencia de despliegue de AV1 sí existe, pero está concentrada en el frente público. La siguiente tabla separa lo que ya es demostrable de lo que todavía permanece en fase preparatoria.

*Estado de despliegue y evidencia verificable de artefactos en AV1*

| Artefacto | Estado observable en AV1 | Evidencia |
|---|---|---|
| Landing page pública | **Desplegada y navegable** | [GitHub Pages](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Repositorio documental | **Versionado y colaborativo** | [nexa-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-report) |
| Repositorio del sitio público | **Implementación visible del frontend público** | [nexa-website](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |
| Web application autenticada | **Fase posterior del producto** | [nexa-webapp](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp). Nombrada en diseño y backlog, no como evidencia de despliegue AV1 |
| Backend / servicios | **Fase posterior del producto** | [nexa-platform](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform). Nombrado en arquitectura y backlog, no como evidencia de despliegue AV1 |

Esta lectura permite defender el despliegue con precisión: Nexa ya tiene una capa pública activa y demostrable, pero la capa transaccional aún debe presentarse como roadmap técnico respaldado por backlog y arquitectura, no como despliegue concluido ni como parte del alcance observable de esta entrega.

#### 5.2.1.8. Team Collaboration Insights during Sprint.

El Sprint 1 revela un patrón de colaboración técnicamente sano: investigación y dominio por un lado, UX/UI e información por otro, implementación pública y despliegue por otro, y una capa transversal de arquitectura y documentación sosteniendo el conjunto. Esta organización permitió que el equipo avanzara en paralelo sin perder coherencia narrativa ni técnica, lo cual es especialmente valioso en AV1 porque el entregable combina secciones académicas, artefactos visuales y software visible.

La principal conclusión colaborativa del sprint es que Nexa no se construyó como un esfuerzo fragmentado entre “los que escriben” y “los que programan”. El incremento visible solo fue posible porque Jira, el reporte, el diseño y la landing page evolucionaron de manera sincronizada. Aun cuando persista backlog remanente para portal B2B, autenticación, inventario transaccional y servicios, el equipo deja en AV1 una base metodológica sólida, trazable y escalable para la siguiente iteración.

*Evidencias de colaboración y métricas del equipo*

El análisis de la colaboración durante el Sprint 1 se evidencia en tres canales principales:
1. **GitHub Insights & Commits:** La contribución al repositorio `nexa-website` muestra actividad distribuida entre la maquetación HTML, estilos CSS y la lógica de internacionalización. El equipo adoptó la convención Docs-as-Code para asegurar que los commits en `nexa-report` reflejaran incrementos documentales paralelos al desarrollo web, facilitando la revisión asíncrona.
2. **Jira Software:** El tablero refleja un *burndown* consistente donde las historias de usuario de la Landing Page pasaron ordenadamente por los estados de especificación, diseño en Figma y despliegue final.
3. **Coordinación Síncrona:** El equipo mantuvo sesiones semanales registradas, cuya evidencia principal es la grabación en Microsoft Stream enlazada al inicio del sprint. Las discusiones críticas (como la priorización del menú *Platform* vs *Solutions*) se resolvieron en estas llamadas antes de pasar a código.

Adicionalmente, el proceso de integración continua hacia GitHub Pages operó como el principal punto de validación. Cada *pull request* o actualización en la rama principal desencadenaba un despliegue que permitía a todo el equipo revisar la apariencia y funcionalidad del sitio público desde cualquier dispositivo, garantizando que el diseño *mobile-first* propuesto en los mockups se cumpliera en la implementación real.

  ![GitHub Insights & Commits](../assets/images/project-collaboration/github-insights.png)
  

  *Evidencia 1: Actividad y contribuciones en los repositorios durante el Sprint 1. Elaboración propia.*

  ![Jira — Vista general Sprint 0 y Sprint 1](../assets/images/jira/sprint-0-sprint-1.png)
  

  *Evidencia 2: Vista general Sprint 0 + Sprint 1 en el tablero Jira del equipo KING. Elaboración propia.*

  ![Jira Sprint 1 — parte 2](../assets/images/jira/sprint-1-p2.png)
  

  *Evidencia 3: Sprint 1 en Jira — parte 2. Elaboración propia.*

  ![Jira Sprint 1 — parte 3](../assets/images/jira/sprint-1-p3.png)
  

  *Evidencia 4: Sprint 1 en Jira — parte 3. Elaboración propia.*

  ![Jira Product Backlog completo](../assets/images/jira/backlog.png)
  

  *Evidencia 5: Product Backlog completo en Jira. Elaboración propia.*

*Evidencia gráfica — Historial de commits en `nexa-report`*

  ![Primeros commits nexa-report](../assets/images/project-collaboration/report-commits/first-commits.png)
  
*Figura: Primeros commits del repositorio `nexa-report`. Elaboración propia.*

  ![Commits intermedios nexa-report](../assets/images/project-collaboration/report-commits/commits.png)
  
*Figura: Bloque intermedio de commits del repositorio `nexa-report`. Elaboración propia.*

  ![Últimos commits nexa-report](../assets/images/project-collaboration/report-commits/last-commits.png)
  
*Figura: Últimos commits del repositorio `nexa-report` al cierre de AV1. Elaboración propia.*

*Evidencia gráfica — Historial de commits en `nexa-website`*

  ![Primeros commits nexa-website](../assets/images/project-collaboration/website-commits/first-commits.png)
  
*Figura: Primeros commits del repositorio `nexa-website`. Elaboración propia.*

  ![Commits intermedios nexa-website](../assets/images/project-collaboration/website-commits/commits.png)
  
*Figura: Bloque intermedio de commits del repositorio `nexa-website`. Elaboración propia.*

  ![Últimos commits nexa-website](../assets/images/project-collaboration/website-commits/last-commits.png)
  
*Figura: Últimos commits del repositorio `nexa-website` al cierre de AV1. Elaboración propia.*

  ![Reunión de coordinación del equipo KING](../assets/images/project-collaboration/team-collaboration-meeting.jpg)
  

  *Evidencia 6: Reunión de coordinación síncrona del equipo KING (Microsoft Teams). Elaboración propia.*

  ![Colaboración durante sprint](../assets/images/project-collaboration/sprint-collaboration-evidence.jpg)
  

  *Evidencia 7: Trabajo colaborativo del equipo durante el Sprint 1. Elaboración propia.*

  ![Práctica de exposición](../assets/images/project-collaboration/presentation-practice-evidence.png)
  

  *Evidencia 8: Sesión de práctica de exposición y preparación de la sustentación AV1. Elaboración propia.*

### 5.2.2. Sprint 2 — Web Application Consolidation and Role-Aware Operations

El Sprint 2 corresponde al incremento TB1 donde Nexa pasa de una base pública inicial a una web application demostrable. Sprint 1 queda como antecedente de landing page, estructura del reporte, discovery, diseño inicial y setup de proyecto; no se presenta como la entrega principal de webapp.

La evidencia de Sprint 2 se documenta mediante commits reales, estructura de repositorios, mockups, rutas implementadas y coherencia con los flujos S1/S2/S3. No se declara Jira cerrado ni se inventan capturas de tablero. Servicios productivos, base de datos productiva, autenticación productiva, evidencia de entrega productiva y seguimiento en vivo quedan fuera del alcance TB1.

#### 5.2.2.1. Sprint Planning 2

| Campo | Registro TB1 |
|---|---|
| Sprint | Sprint 2 / TB1 |
| Rango de evidencia Git | 25 de abril de 2026 al 5 de mayo de 2026 |
| Objetivo | Consolidar una web application TB1 con flujos por segmento, datos simulados, navegación protegida por superficie/rol, dashboard, clientes, pedidos asistidos, inventario, despacho, POD mock y reportes. |
| Repositorios usados como evidencia | `nexa-report`, `nexa-website`, `nexa-webapp`, `nexa-platform` |
| Criterio de alcance | Frontend funcional y documentación consistente; servicios productivos y base de datos real no implementados en TB1. |
| Evidencia principal | Commits reales, rutas, mockups actuales, Mermaid userflows/wireflows, Fake API y documentación actualizada. |

#### 5.2.2.2. Aspect Leaders and Collaborators

| Team Member | GitHub Username | Project Management | UX/UI Design | Software Architecture | Frontend Development | Documentation |
|---|---|:---:|:---:|:---:|:---:|:---:|
| Yucra Sandoval, Diego Sebastian | DiegoS284 | L | C | C | L | L |
| Verde Bueno, Joaquín Francisco | JoaquinVerde115 | C | C | C | C | C |
| Marín Cueva, César Fernando | Cmarin2802 | C | C | C | C | C |
| Torrejón De Los Santos, Gino Rodrigo | R0obxdnt-bit | C | L | C | C | C |
| Rojas Mancilla, Gerard Gianpier | GerardRojasMancilla | C | C | L | C | C |

#### 5.2.2.3. Sprint Backlog 2

El Sprint Backlog 2 concentra el trabajo realizado entre el **2026-04-24 y 2026-05-15**. El objetivo principal del sprint fue consolidar la Web Application TB1, documentar los flujos internos de S1 y S2, actualizar la evidencia UX/UI y registrar el avance de implementación correspondiente al incremento de la entrega.

![Sprint Backlog 2 en Jira](../assets/images/jira/sprint-2-board-jira.png)

**URL del board/backlog:** [Jira Backlog — Proyecto Nexa](https://team-nexa.atlassian.net/jira/software/projects/NX/boards/1/backlog)

La siguiente tabla presenta los User Stories asignados al Sprint 2 y los Work-items utilizados para descomponer el trabajo. Las tareas sin User Story directa corresponden a actividades de implementación, documentación o soporte necesarias para cerrar el incremento TB1.

| Sprint # | User Story Id | User Story Title | Work-Item / Task Id | Task Title | Description | Estimation (Hours) | Assigned To | Status |
|---|---|---|---|---|---|---:|---|---|
| Sprint 2 | - | Maquetar Login | NX-100 | Implementar pantalla de acceso | Construir la pantalla de login utilizada para seleccionar perfiles y acceder a los flujos internos de la Web Application. | 5.5 | César Marín | Done |
| Sprint 2 | - | Implementar flujo de pedido asistido para coordinación comercial | NX-26 | Construir flujo de pedido asistido | Implementar el recorrido comercial para registrar pedidos internos desde el perfil de coordinación comercial. | 8.5 | Diego Yucra Sandoval | Done |
| Sprint 2 | - | Implementar vista de inventario y lotes para jefatura logística | NX-28 | Construir vista de inventario y lotes | Implementar la vista de inventario, disponibilidad y lotes como soporte del flujo logístico. | 9.0 | Gerard Rojas Mancilla | Done |
| Sprint 2 | - | Implementar tablero de despacho con cierre POD simulado | NX-29 | Construir tablero de despacho | Implementar el tablero de despacho y el cierre simulado con evidencia POD para la operación logística. | 8.0 | César Marín | Done |
| Sprint 2 | - | Actualizar Capítulo 4 con UX/UI y arquitectura TB1 | NX-33 | Actualizar diseño UX/UI y arquitectura | Actualizar la documentación de UX/UI, flujos, mockups y arquitectura correspondiente al avance TB1. | 6.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | - | Maquetar layout Dashboard B2B | NX-4 | Construir layout principal de dashboard | Preparar la estructura visual base para dashboards y navegación de la Web Application. | 8.0 | Gerard Rojas Mancilla | Done |
| Sprint 2 | US19 | Iniciar sesión como usuario interno autorizado | NX-242 | Implementar acceso de usuario interno | Permitir el ingreso de usuarios internos mediante perfiles usados en la simulación de la Web Application. | 3.0 | Joaquín Verde | Done |
| Sprint 2 | US22 | Acceder según responsabilidad asignada | NX-245 | Configurar acceso por responsabilidad | Diferenciar el acceso de usuarios internos según el perfil operativo seleccionado. | 3.5 | Diego Yucra Sandoval | Done |
| Sprint 2 | US23 | Recibir explicación ante acceso restringido | NX-248 | Documentar restricción de acceso | Mostrar una explicación cuando un perfil intenta ingresar a una ruta que no corresponde a su responsabilidad. | 3.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | US24 | Entender estado de cuenta no disponible | NX-334 | Definir estado de cuenta no disponible | Representar el estado de cuenta no disponible dentro del flujo de acceso y operación. | 2.5 | César Marín | Done |
| Sprint 2 | - | Documentar user goal, task flow, wireflow y user flow S1 | NX-27 | Documentar flujo comercial S1 | Registrar la relación entre user goal, task flow, wireflow y user flow para coordinación comercial. | 5.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | US39 | Registrar pedido recibido por canal externo | NX-349 | Registrar pedido interno | Permitir que coordinación comercial registre un pedido recibido por canales externos. | 5.5 | Diego Yucra Sandoval | Done |
| Sprint 2 | US40 | Seleccionar cliente durante la captura del pedido | NX-350 | Seleccionar cliente en pedido | Asociar el pedido interno con el cliente correspondiente durante la captura comercial. | 3.5 | Diego Yucra Sandoval | Done |
| Sprint 2 | US41 | Completar productos y cantidades solicitadas | NX-351 | Completar productos y cantidades | Registrar productos y cantidades solicitadas dentro del pedido asistido. | 5.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | US42 | Registrar observaciones comerciales del pedido | NX-352 | Registrar observaciones comerciales | Incluir observaciones comerciales relevantes durante la captura del pedido. | 4.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | US43 | Revisar pedido capturado antes de enviarlo | NX-353 | Revisar pedido antes de enviar | Permitir una revisión previa del pedido para reducir errores antes de enviarlo a revisión. | 4.5 | Diego Yucra Sandoval | Done |
| Sprint 2 | US44 | Diferenciar pedido capturado por comercial y pedido enviado por cliente | NX-354 | Diferenciar origen del pedido | Identificar si el pedido fue capturado internamente o enviado por el comprador. | 5.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | US50 | Consultar historial de cambios del pedido | NX-360 | Consultar historial del pedido | Mostrar cambios relevantes asociados a un pedido para apoyar trazabilidad comercial. | 8.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | US56 | Revisar condiciones comerciales del cliente | NX-366 | Revisar condiciones del cliente | Permitir la consulta de condiciones comerciales antes de confirmar acciones del pedido. | 3.5 | Joaquín Verde | Done |
| Sprint 2 | US57 | Consultar perfil comercial del cliente | NX-367 | Consultar perfil comercial | Mostrar información comercial del cliente para apoyar la captura y seguimiento del pedido. | 3.5 | Diego Yucra Sandoval | Done |
| Sprint 2 | US59 | Registrar nuevo cliente comercial | NX-369 | Registrar cliente comercial | Registrar información básica de un nuevo cliente comercial en la Web Application. | 5.5 | Gino Torrejón | Done |
| Sprint 2 | US60 | Actualizar datos de contacto del cliente | NX-370 | Actualizar datos de contacto | Actualizar información de contacto del cliente comercial. | 5.0 | César Marín | Done |
| Sprint 2 | US61 | Diferenciar clientes por tipo de negocio | NX-371 | Clasificar clientes por tipo | Diferenciar clientes según tipo de negocio para facilitar la lectura comercial. | 4.5 | Gerard Rojas Mancilla | Done |
| Sprint 2 | US69 | Revisar pedidos por estado | NX-79 | Revisar pedidos por estado | Consultar pedidos agrupados por estado para facilitar seguimiento comercial y operativo. | 5.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | US71 | Consultar productos con mayor movimiento | NX-81 | Consultar productos de mayor movimiento | Revisar productos con mayor movimiento como apoyo a reportes comerciales. | 3.5 | Diego Yucra Sandoval | Done |
| Sprint 2 | - | Implementar reportes diferenciados por roles comercial y logístico | NX-31 | Construir reportes por rol | Implementar reportes separados para lectura comercial y logística según perfil de usuario. | 5.5 | Diego Yucra Sandoval | Done |
| Sprint 2 | - | Documentar user goal, task flow, wireflow y user flow S2 | NX-40 | Documentar flujo logístico S2 | Registrar la relación entre user goal, task flow, wireflow y user flow para jefatura logística. | 5.0 | Gerard Rojas Mancilla | Done |
| Sprint 2 | US45 | Consultar pedidos por revisar | NX-355 | Consultar pedidos por revisar | Mostrar pedidos pendientes de revisión operativa para jefatura logística. | 5.0 | Gerard Rojas Mancilla | Done |
| Sprint 2 | US46 | Revisar detalle operativo de un pedido | NX-356 | Revisar detalle operativo | Permitir la lectura del detalle operativo de un pedido antes de cambiar su estado. | 5.0 | Gerard Rojas Mancilla | Done |
| Sprint 2 | US47 | Cambiar estado de revisión del pedido | NX-357 | Cambiar estado de revisión | Actualizar el estado de revisión de un pedido durante el flujo logístico. | 5.5 | Gerard Rojas Mancilla | Done |
| Sprint 2 | US48 | Registrar motivo de observación o rechazo | NX-358 | Registrar observación o rechazo | Registrar el motivo cuando un pedido queda observado o rechazado. | 5.0 | Gerard Rojas Mancilla | Done |
| Sprint 2 | US49 | Priorizar pedidos por urgencia operativa | NX-359 | Priorizar pedidos urgentes | Ordenar pedidos según urgencia operativa para orientar la revisión logística. | 5.0 | Gerard Rojas Mancilla | Done |
| Sprint 2 | US51 | Consultar disponibilidad de productos | NX-361 | Consultar disponibilidad | Consultar disponibilidad de productos para apoyar decisiones de pedido y preparación. | 5.0 | César Marín | Done |
| Sprint 2 | US52 | Identificar lotes próximos a vencer | NX-362 | Identificar lotes próximos a vencer | Visualizar lotes con riesgo de vencimiento para aplicar criterio operativo. | 5.0 | Joaquín Verde | Done |
| Sprint 2 | US53 | Aplicar criterio FEFO en preparación | NX-363 | Aplicar criterio FEFO | Priorizar productos según vencimiento para reducir merma y mejorar rotación. | 5.0 | César Marín | Done |
| Sprint 2 | US54 | Revisar condición de conservación del producto | NX-364 | Revisar condición de conservación | Consultar información de conservación asociada al producto o lote. | 5.0 | Joaquín Verde | Done |
| Sprint 2 | US55 | Registrar ajuste de disponibilidad | NX-365 | Registrar ajuste de disponibilidad | Actualizar disponibilidad cuando se detecten diferencias operativas. | 8.0 | Gerard Rojas Mancilla | Done |
| Sprint 2 | US68 | Consultar resumen operativo del día | NX-78 | Consultar resumen operativo | Revisar una síntesis operativa diaria para apoyar seguimiento de pedidos e inventario. | 5.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | US70 | Identificar incidencias recurrentes | NX-80 | Identificar incidencias recurrentes | Registrar lectura de incidencias recurrentes como parte de reportes operativos. | 5.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | - | Documentar flujo S3 de portal B2B como alcance parcial TB1 | NX-43 | Documentar flujo comprador B2B | Registrar el flujo comprador como planificación de alcance, sin afirmar implementación completa de mockups S3. | 5.0 | Diego Yucra Sandoval | Done |
| Sprint 2 | - | Actualizar Capítulo 5 con evidencia de Sprint 2 | NX-34 | Actualizar evidencias de implementación TB1 | Consolidar en el reporte las evidencias del Sprint 2, incluyendo alcance, implementación y documentación del incremento. | 5.5 | Diego Yucra Sandoval | Done |


Nota. Las horas estimadas se usan para control operativo del Sprint Backlog. Los Story Points se conservan como estimación relativa dentro del Product Backlog y Jira. Elaboración propia.

#### 5.2.2.4. Development Evidence for Sprint Review

La siguiente tabla resume una selección canónica de commits representativos del trabajo realizado durante TB1. La evidencia completa se mantiene en los historiales de GitHub de cada repositorio; el reporte incluye una selección para mantener legibilidad y trazabilidad con los productos de Sprint 2.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|---|---|---|---|---|---|
| upc-pre-202610-1asi0730-12242-king/nexa-report | main | `f6de96c` | docs(ch4): rebuild webapp ux section structure and wireframe tables | - | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-report | main | `e8e7afa` | docs(ch4): align webapp flows with user goals | - | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-report | main | `f3e6296` | docs(ch4): update webapp wireflow documentation with three-persona flow | - | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-report | main | `ec6c63c` | docs(ch4): replace webapp user flows with proper flowcharts per persona | - | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-report | main | `22efcb2` | docs(ch4): add current webapp mockup selections | - | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-report | main | `b7c7ac9` | docs(ch5): document sprint two tb1 evidence | - | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-report | main | `1193a5f` | docs(ch4): clarify buyer portal scope in ux flows | Update 4.4 intro paragraph to explicitly distinguish webapp Ops S1/S2 from portal B2B S3. | 2026-05-06 |
| upc-pre-202610-1asi0730-12242-king/nexa-report | main | `7677b49` | docs(ch5): clarify fake api and service documentation scope | Add explicit note to 5.2.2.6: TB1 functional integration validated via Fake API with mock data. | 2026-05-06 |
| upc-pre-202610-1asi0730-12242-king/nexa-website | main | `22a715c` | feat: connect login button to nexa-webapp GitHub Pages | Commit body documents replacement of the previous toast state with navigation to the webapp GitHub Pages URL. | 2026-04-28 |
| upc-pre-202610-1asi0730-12242-king/nexa-website | main | `c301fc2` | style: align landing visual tokens with webapp design system | Typography and tokens aligned with webapp visual system. | 2026-04-28 |
| upc-pre-202610-1asi0730-12242-king/nexa-website | main | `13ea635` | fix(landing): align ctas with webapp routes | - | 2026-05-02 |
| upc-pre-202610-1asi0730-12242-king/nexa-website | main | `4951d66` | fix(landing): add favicon and tighten tb1 copy | - | 2026-05-02 |
| upc-pre-202610-1asi0730-12242-king/nexa-website | main | `a6b9e3b` | fix(readme): restore website presentation style | - | 2026-05-03 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `ca38d05` | feat(auth): add internal demo roles for S1 and S2 segments | Add role-aware users to Fake API and fix auth store to reject invalid credentials. | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `ad68f8c` | feat(login): add demo profile selector for quick role access | Show Valeria and Roberto as quick-access cards on the login view. | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `d6696c8` | feat(ops): adapt navigation and dashboard by role | Filter sidebar and mobile nav items by roleKey; reports vary by role. | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `0f1c08b` | feat(clients): replace toast stub with full client profile drawer | Clicking a client row opens a right drawer with contact info, conditions and recent orders. | 2026-04-29 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `dc80775` | feat(inventory): add lot detail drawer with movement history | Lot rows open detail with metadata, stock movements and FEFO context. | 2026-04-29 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `a076e6a` | fix(dispatch): sync order status on route/delivery events; fix dead order detail button | markInRoute sets order.status to dispatched; submitPod sets delivered. | 2026-04-29 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `d692ed6` | feat(reports): add operational reports screen with KPIs, status breakdown, and FEFO alerts | New ReportsView with KPI row, status table, category bars and expiring lots. | 2026-04-29 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `4aa2812` | chore(mock-api): add json-server fake api | - | 2026-05-04 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `7b9bf07` | refactor(api): add axios services by bounded context | - | 2026-05-04 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `dbee8ed` | refactor(stores): connect stores to application layer | - | 2026-05-04 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `b008b68` | fix(dispatch): persist mock dispatch and order status updates | Mark-in-route and POD closure PATCH the Fake API via application layer. | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-webapp | main | `91caab8` | refactor(webapp): align context structure with course architecture | - | 2026-05-05 |
| upc-pre-202610-1asi0730-12242-king/nexa-platform | main | `53a8069` | chore(platform): reset repository to tb1 planned scope | - | 2026-05-03 |

Las siguientes capturas son evidencia visual complementaria. La tabla anterior conserva el formato solicitado por el statement; las capturas no sustituyen la tabla ni representan screenshots por cada commit.

![TB1 GitHub report commit evidence](../assets/images/tb1-commit-evidence/report-commits-tb1.png)

Figura. Evidencia visual complementaria de commits registrados en `nexa-report` durante TB1.

![TB1 GitHub website commit evidence](../assets/images/tb1-commit-evidence/website-commits-tb1.png)

Figura. Evidencia visual complementaria de commits registrados en `nexa-website` durante TB1.

![TB1 GitHub webapp commit evidence](../assets/images/tb1-commit-evidence/webapp-commits-tb1.png)

Figura. Evidencia visual complementaria de commits registrados en `nexa-webapp` durante TB1.

![TB1 GitHub pulse evidence](../assets/images/tb1-commit-evidence/github-insights-tb1.png)

Figura. Evidencia visual complementaria de actividad y contribución en GitHub durante TB1.


#### 5.2.2.5. Execution Evidence for Sprint Review

| Área ejecutada | Estado TB1 defendible | Evidencia de repositorio | Límite explícito |
|---|---|---|---|
| Landing → Webapp | CTAs y links alineados hacia GitHub Pages webapp | `nexa-website`: `22a715c`, `13ea635`, `4951d66` | No implica servicios productivos |
| Login demo | Selector de perfiles y acceso rápido para revisión académica | `nexa-webapp`: `ca38d05`, `ad68f8c` | No es autenticación productiva |
| Ops S1/S2 | Dashboard, navegación adaptada, clientes, pedidos, inventario, despacho y reportes | `nexa-webapp`: commits de dashboard/orders/inventory/dispatch/reports | Role-aware frontend, no IAM corporativo |
| Portal comprador | Catálogo, carrito, checkout simulado y órdenes del comprador | `nexa-webapp`: `6053d18`, `5b53e6e`, `6db2e58` | Portal parcial con datos simulados |
| Fake API | JSON Server y servicios por bounded context | `nexa-webapp`: `4aa2812`, `7b9bf07`, `dbee8ed`, `6bffa73` | No es API final |
| UX/UI reportada | Mermaid flows, mockups actuales y evidencia por user goal | `nexa-report`: commits Ch4 del 5 de mayo | No sustituye un export completo de FigJam |

#### 5.2.2.6. Services Documentation Evidence for Sprint Review

Para TB1, la evidencia de servicios se aborda como soporte simulado para la Web Application, sin afirmar todavía una implementación productiva de backend. Esta simulación permite validar los flujos frontend de la entrega mientras la RESTful API interna y su documentación formal se mantienen como evolución prevista.

| Capa | Estado TB1 | Evidencia | Nota de alcance |
|---|---|---|---|
| Fake API | Soporte simulado para la Web Application | `mock-api/db.json`, JSON Server, commits de 04/05/2026 | Sirve para revisión académica y pruebas frontend |
| Servicios cliente | Organización interna de consumo de datos simulados | commits `7b9bf07` y `dbee8ed` | Preparan transición hacia API interna |
| Backend ASP.NET Core | Planificado | `nexa-platform` y arquitectura objetivo | No implementado productivamente en TB1 |
| Base de datos relacional | Modelo objetivo | Capítulo 4.8 | No implementada productivamente en TB1 |
| POD | Mock confirmation | flujo de despacho TB1 | No hay evidencia de entrega productiva en TB1 |

#### 5.2.2.7. Software Deployment Evidence for Sprint Review

| Artefacto | Estado TB1 | URL / evidencia | Observación |
|---|---|---|---|
| Landing page `nexa-website` | Publicada como capa pública | [GitHub Pages – nexa-website](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) | Punto de entrada comercial |
| Web application `nexa-webapp` | Publicada para revisión TB1 con hash routing | [GitHub Pages – nexa-webapp](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-webapp/) | Frontend con datos simulados |
| Reporte `nexa-report` | Fuente Docs-as-Code | repositorio GitHub + PDF generado localmente | Evidencia documental |
| Backend / plataforma | Planificado | `nexa-platform` | No se declara desplegado |

#### 5.2.2.8. Team Collaboration Insights during Sprint

La colaboración de Sprint 2 se sostiene en commits distribuidos, revisión documental y separación clara de responsabilidades. No se afirma que todos aportaron igual; se documenta el aporte según evidencia y alcance.

| Dimensión colaborativa | Evidencia TB1 | Resultado |
|---|---|---|
| Liderazgo | Diego coordinó integración de reporte, webapp scope, QA y cierre Docs-as-Code | Dirección clara para la entrega TB1 |
| Apoyo documental | César, Joaquín y Gino sostuvieron limpieza, estructura, UX/UI y revisión de secciones | Reporte más consistente con Capítulos 1–4 |
| Arquitectura | Gerard aportó principalmente DDD/C4 y piezas técnicas puntuales | Arquitectura presente sin sobredimensionar contribución |
| Coordinación por repositorio | Commits en report, website, webapp y platform | Evidencia verificable sin inventar Jira |
| Manejo de feedback | Correcciones de nombres, segmentos, style guidelines, assets, mockups y alcance Fake API | Reducción de contradicciones antes de entrega |

La lectura final de Sprint 2 es que TB1 consolida una web application frontend y una documentación técnica defendible, manteniendo límites explícitos sobre servicios productivos, autenticación productiva, base de datos real, evidencia de entrega productiva y seguimiento en vivo.

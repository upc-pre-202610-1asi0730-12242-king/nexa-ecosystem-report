## 5.2.3. Sprint 3

El Sprint 3 corresponde al incremento **Backend Foundation Sprint** y al corte AV2 frontend/backend de Nexa. La evidencia de cierre técnico disponible registra `nexa-platform v1.0.0` como release de cierre AV2 de Web Services, `nexa-website v3.0.0` como release de cierre AV2 de Landing Page y `nexa-webapp v2.0.0` como release de cierre AV2 de Web Application. Este alcance marca una transición controlada desde servicios simulados hacia backend real, despliegue en Render y configuración/migración de persistencia hacia PostgreSQL, sin declarar todavía el cierre completo de evidencias no técnicas.

La versión de referencia disponible del backend para esta evidencia parcial es `v1.0.0`, construida con ASP.NET Core Web API, C#, .NET 10, Domain-Driven Design, modular monolith, bounded contexts, Shared Kernel, EF Core, PostgreSQL, controladores REST, commands, queries, infrastructure y ajustes de autenticación IAM alineados con la Web Application. Este incremento prioriza los flujos core de Catalog Management, Warehouse y Sales como base para revisión académica y validación controlada, sin declarar todavía operación productiva, integración total con toda la Web Application, reemplazo completo de todos los mocks ni cobertura total del roadmap backend.

### 5.2.3.1. Sprint Planning 3

La planificación del Sprint 3 organizó el avance técnico del backend de Nexa Platform. El sprint priorizó la creación de una foundation backend defendible, organizada por bounded contexts y preparada para documentar recursos REST internos sin declarar todavía operación productiva.

| Campo | Registro |
|---|---|
| Sprint # | Sprint 3 |
| Sprint Planning Background | Tercer incremento del proyecto orientado a consolidar la foundation backend de Nexa Platform con ASP.NET Core Web API, arquitectura modular por bounded contexts y recursos REST iniciales para Catalog Management, Sales y Warehouse. |
| Date | 2026-05-20 |
| Time | 08:00 PM |
| Location | Reunión virtual del equipo |
| Prepared By | Yucra Sandoval, Diego Sebastian |
| Attendees (to planning meeting) | Yucra Sandoval, Diego Sebastian / Verde Bueno, Joaquín / Marín Cueva, César / Rojas Mancilla, Gerard / Torrejón, Gino |
| Sprint 2 Review Summary | Sprint 2 dejó como base la Web Application TB1, los flujos internos S1/S2, el alcance parcial de S3 y el soporte de servicios simulados para validar recorridos frontend. |
| Sprint 2 Retrospective Summary | El equipo identificó la necesidad de separar con mayor claridad la simulación frontend de la API interna objetivo, reforzando la foundation backend y la trazabilidad técnica del repositorio `nexa-platform`. |
| Sprint Goal & User Stories | Primer incremento AV2 frontend/backend, actualización de la Landing Page y Web Application, primera versión de Web Services, integración inicial con WebApp, despliegue académico en Render, PostgreSQL, Swagger/OpenAPI y evidencia para Sprint Review de los flujos principales de S1 Commercial Coordination, S2 Operations / Account Owner y S3 B2B Buyer Portal. |
| Sprint 3 Goal | Nuestro foco está en entregar la primera versión de Web Services de Nexa e integrarla inicialmente con la WebApp, dejando el incremento AV2 desplegado académicamente en Render con PostgreSQL y documentación Swagger/OpenAPI para revisión. Creemos que esto aporta trazabilidad técnica y demostración funcional del corte AV2 para S1 Commercial Coordination, S2 Operations / Account Owner y S3 B2B Buyer Portal. Esto se confirmará cuando los endpoints documentados, el despliegue académico y los flujos principales puedan demostrarse con evidencias durante el Sprint Review. |
| Sprint 3 Velocity | 213 completed Story Points |
| Sum of Story Points | 213 Story Points |

> *Nota.* El dato se obtiene del Sprint Backlog 3 en Jira, donde la estimación visible del sprint registra `213 de 213` Story Points.

Para evitar ambigüedad de alcance, se distingue entre endpoint HTTP, REST resource y core endpoint group o core flow. Un endpoint HTTP corresponde a una operación concreta expuesta por la API, por ejemplo una ruta con un método específico. Un REST resource agrupa operaciones asociadas a una entidad o aggregate, como `/api/v1/orders`. Un core endpoint group representa una capacidad funcional priorizada para validar conexión frontend/backend. Por ello, Catalog, Inventory/Warehouse y Orders/Sales se documentan como tres flujos core agrupados, mientras que el backend actual registra 25 operaciones HTTP estructuradas.

### 5.2.3.2. Aspect Leaders and Collaborators

La ejecución del Sprint 3 se organiza por responsabilidades backend. La distribución prioriza ownership por bounded context y distingue liderazgo técnico transversal cuando la evidencia corresponde a arquitectura, API bootstrapping, documentación backend o higiene de ramas y releases.

*Distribución de liderazgos y roles funcionales en el Sprint 3*

| Team Member | GitHub Username | Project Management | Backend Architecture | Domain Modeling | REST API Development | Persistence | Documentation |
|---|---|:---:|:---:|:---:|:---:|:---:|:---:|
| Yucra Sandoval, Diego Sebastian | DiegoS284 | L | L | L | L | C | L |
| Verde Bueno, Joaquín Francisco | JoaquinVerde115 | C | C | L | L | L | C |
| Marín Cueva, César Fernando | Cmarin2802 | - | - | C | C | - | C |
| Torrejón De Los Santos, Gino Rodrigo | R0obxdnt-bit | C | C | L | L | C | C |
| Rojas Mancilla, Gerard Gianpier | GerardRojasMancilla | - | C | C | - | C | C |

DiegoS284 queda representado como líder del bounded context Sales y como responsable transversal de API bootstrapping, documentación backend y release hygiene. R0obxdnt-bit queda registrado como líder de Catalog Management, mientras que JoaquinVerde115 queda registrado como líder de Warehouse. Cmarin2802 participa en Logistics y documentación de dominio. GerardRojasMancilla participa en Shared Kernel, Persistence e Invoicing.

### 5.2.3.3. Sprint Backlog 3

El Sprint Backlog 3 concentra el trabajo asociado al primer corte AV2 frontend/backend y a la consolidación de la base backend de Nexa Platform. Su objetivo principal fue establecer una base técnica coherente para la primera Web Services API, organizada por bounded contexts, con controladores iniciales, Shared Kernel, patrones de repositorio, Unit of Work, persistencia mediante EF Core/PostgreSQL para el despliegue controlado y trazabilidad de release para revisar la transición desde mocks hacia backend real.

![Sprint Backlog 3 en Jira](../../assets/images/chapter-5/sprint-evidence/jira/sprint-3-backlog-jira.png)

> *Nota.* La captura evidencia la planificación actualizada del Sprint 3, con 41 actividades visibles, estimación total del sprint, responsables, estados y work-items orientados al cierre AV2 de WebApp, Web Services, Swagger/OpenAPI, PostgreSQL y release. Elaboración propia.

**URL del board/backlog:** [Jira Backlog — Proyecto Nexa](https://team-nexa.atlassian.net/jira/software/projects/NX/boards/1/backlog)

La siguiente tabla presenta los Work-items utilizados para descomponer el Sprint 3. Los identificadores se mantienen como trazabilidad documental del cierre AV2 registrado en Jira.

| Sprint # | User Story Id | User Story Title | Work-Item / Task Id | Task Title | Description                                                                                                                                                                                                                                                                                                                          | Estimation (Hours) | Assigned To | Status |
|---|---|---|---|---|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---:|---|---|
| Sprint 3 | N/A | Backend foundation de Nexa Platform | TS-NX-003-001 | Configurar ASP.NET Core Web API foundation | Preparar la estructura inicial del backend con C#, .NET 10, `Program.cs`, controladores REST, Swagger/OpenAPI y configuración base para ejecución local. | Ver Sprint Backlog 3 en Jira | Diego Yucra Sandoval | To Validate |
| Sprint 3 | N/A | Arquitectura modular backend | TS-NX-003-002 | Organizar bounded contexts y modular monolith | Estructurar el proyecto como modular monolith, separando Catalog Management, Sales, Warehouse y Shared Kernel como módulos iniciales del backend. | Ver Sprint Backlog 3 en Jira | Diego Yucra Sandoval | To Validate |
| Sprint 3 | N/A | Catalog Management REST resource | TS-NX-003-003 | Implementar recurso `/api/v1/catalog-items` | Implementar la base del aggregate `CatalogItem`, su controller REST y contratos iniciales para la gestión de productos refrigerados. | Ver Sprint Backlog 3 en Jira | Gino Torrejón | To Validate |
| Sprint 3 | N/A | Sales REST resource | TS-NX-003-004 | Implementar recurso `/api/v1/orders` | Implementar la base del aggregate `Order`, su controller REST y contratos iniciales para la gestión de órdenes comerciales B2B. | Ver Sprint Backlog 3 en Jira | Diego Yucra Sandoval | To Validate |
| Sprint 3 | N/A | Warehouse REST resource | TS-NX-003-005 | Implementar recurso `/api/v1/inventory-items` | Implementar la base del aggregate `InventoryItem`, su controller REST y contratos iniciales para disponibilidad e inventario. | Ver Sprint Backlog 3 en Jira | Joaquín Verde | To Validate |
| Sprint 3 | N/A | Shared Kernel y patrones de persistencia | TS-NX-003-006 | Configurar Shared Kernel, repositories y Unit of Work | Registrar contratos compartidos, interfaces de repositorio y Unit of Work como base de infraestructura para los bounded contexts iniciales. | Ver Sprint Backlog 3 en Jira | Diego Yucra Sandoval | To Validate |
| Sprint 3 | N/A | EF Core/PostgreSQL | TS-NX-003-007 | Preparar persistencia relacional para AV2 | Configurar la base técnica de EF Core y PostgreSQL para sostener el despliegue controlado en Render, sin declarar operación productiva ni validación completa de datos. | Ver Sprint Backlog 3 en Jira | Joaquín Verde | To Validate |
| Sprint 3 | N/A | Documentación Swagger/OpenAPI | TS-NX-003-008 | Registrar evidencia de OpenAPI local | Documentar la exposición local de Swagger/OpenAPI para los recursos REST priorizados del Sprint 3. | Ver Sprint Backlog 3 en Jira | Diego Yucra Sandoval | In Review |
| Sprint 3 | N/A | Release backend `v1.0.0` | TS-NX-003-009 | Documentar release técnico backend | Registrar el alcance de la versión `v1.0.0`, sus límites técnicos y la trazabilidad del incremento backend. | Ver Sprint Backlog 3 en Jira | Diego Yucra Sandoval | In Review |
| Sprint 3 | N/A | GitFlow y colaboración backend | TS-NX-003-010 | Registrar ramas feature/release | Documentar evidencia de colaboración mediante ramas por bounded context y capa, incluyendo `main`, `develop`, releases disponibles para revisión y commits de persistencia/PostgreSQL asociados al corte AV2. | Ver Sprint Backlog 3 en Jira | Diego Yucra Sandoval | To Validate |
| Sprint 3 | N/A | AV2 frontend/backend release | TS-NX-003-011 | Prepare frontend/backend release version for AV2 | Preparar una versión guiada por release para la Web Application y la Web Services API, manteniendo trazabilidad de alcance sin declarar despliegue productivo. | Ver Sprint Backlog 3 en Jira | Ver Sprint Backlog 3 en Jira | In Review |
| Sprint 3 | N/A | Backend build and local execution | TS-NX-003-012 | Validate backend build and local execution | Validar build y ejecución local del backend antes de reportar la foundation como evidencia cerrada. | Ver Sprint Backlog 3 en Jira | Ver Sprint Backlog 3 en Jira | To Validate |
| Sprint 3 | N/A | README/release execution guide | TS-NX-003-013 | Document README/release execution guide | Documentar instrucciones de ejecución, alcance de release y límites técnicos para revisar el corte AV2 frontend/backend. | Ver Sprint Backlog 3 en Jira | Ver Sprint Backlog 3 en Jira | In Review |
| Sprint 3 | N/A | Swagger endpoint validation | TS-NX-003-014 | Validate 25 structured backend endpoints in Swagger | Validar en Swagger/OpenAPI los 25 endpoints HTTP estructurados en backend C# antes de declararlos como alcance cerrado. | Ver Sprint Backlog 3 en Jira | Ver Sprint Backlog 3 en Jira | To Validate |
| Sprint 3 | N/A | Core frontend-backend flows | TS-NX-003-017 | Preserve core frontend-backend flows for Catalog, Inventory and Orders | Mantener la trazabilidad de los flujos core Catalog, Inventory/Warehouse y Orders/Sales como prioridad de conexión frontend/backend. | Ver Sprint Backlog 3 en Jira | Ver Sprint Backlog 3 en Jira | To Validate |

Nota. El detalle individual de estimación y asignación se respalda en las capturas de Jira incorporadas para Sprint 3. La métrica consolidada del sprint se registra como 213/213 Story Points según el Sprint Backlog 3. Elaboración propia.

### 5.2.3.4. Development Evidence for Sprint Review

La evidencia de desarrollo del Sprint 3 se organiza de acuerdo con el alcance AV2: primera versión de Web Services, nueva versión de Web Application, nueva versión de Landing Page y actualización del Project Report. Aunque el foco técnico principal del sprint fue la backend foundation de `nexa-platform`, también se registran commits puntuales de `nexa-webapp` y `nexa-website` cuando estos corresponden al corte AV2 y no a entregas anteriores.

Los commits incluidos son una selección representativa del incremento Sprint 3. No reemplazan el historial completo de GitHub; su propósito es evidenciar trazabilidad entre implementación, integración frontend/backend, documentación de release y actualización del informe académico.

*Commits del repositorio `nexa-platform`*

Release de cierre AV2 disponible para revisión. Este repositorio concentra la base backend con ASP.NET Core Web API, bounded contexts, Shared Kernel, EF Core/PostgreSQL, IAM, commands, queries, infrastructure, documentación técnica y release `v1.0.0` con título visible `Nexa Platform - Production Release v1.0.0`. Historial de commits: [https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform/commits/main/](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform/commits/main/).

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
|---|---|---|---|---|---|
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `ec26b31` | `merge: release version v1.0.0` | Release merge for the AV2 review cut. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `12d4be9` | `chore(release): prepare release v1.0.0` | Release metadata and version preparation for `v1.0.0`. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `c6f1c47` | `docs(readme): improve README.md structure and repository mapping` | Repository documentation and mapping alignment. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `1d03f18` | `feat(community): add CODE_OF_CONDUCT.md and CONTRIBUTING.md` | Community and contribution guidelines for repository governance. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `eaa6f4c` | `feat(security): add SECURITY.md and isolate production connection strings` | Security policy and connection string isolation for the deployment evidence. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `7ebe523` | `merge: release version v0.7.0` | Intermediate release merge before the `v1.0.0` closeout. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `ea9bbc0` | `docs(cleanup): remove obsolete guide files and local database configs` | Cleanup of obsolete local guides and database configuration files. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `63af8e7` | `merge: integrate feature/mejoras-pre-release into develop` | Integration of pre-release improvements into the development branch. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `02e423a` | `fix(persistence): resolve startup DB migration concurrency and verifications` | Startup migration concurrency and verification fix. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `4c117c9` | `refactor(code): clean up old unused persistence files and bounded contexts` | Cleanup of unused persistence files and bounded context structure. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `d6b123f` | `feat(persistence): generate InitialCreate EF Core migrations for PostgreSQL` | Initial persistence migration for PostgreSQL. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `fb3eeb7` | `fix(persistence): make SeedDataService support idempotent Postgres executions` | Idempotent seed execution support. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `274e1d8` | `feat(persistence): add local postgresql database seed seed-local.sql` | Local PostgreSQL seed script for review support. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `5cb5962` | `feat(persistence): add local appsettings template appsettings.Local.example.json` | Local application settings template. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `5ac6f2d` | `refactor(shared): configure snake_case naming conventions for PostgreSQL tables` | Naming convention alignment for PostgreSQL tables. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `461ccba` | `refactor(persistence): update DbContext to use PostgreSQL UseNpgsql` | DbContext provider update for PostgreSQL. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `develop` | `3216150` | `feat(persistence): add Npgsql.EntityFrameworkCore.PostgreSQL dependency` | PostgreSQL provider dependency for EF Core. | 2026-06-15 |

*Commits del repositorio `nexa-webapp`*

Release de cierre AV2 disponible para revisión de la Web Application. Estos commits se incluyen porque corresponden al corte `nexa-webapp v2.0.0`: eliminación de dependencia de Mock API / JSON-server, consolidación de estado local/in-memory para flujos no dependientes de API real, documentación de patrones DDD/frontend architecture, ajustes de layout/responsividad y preparación del release `v2.0.0`.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
|---|---|---|---|---|---|
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `4f1701c` | `Merge branch 'release/v2.0.0' into main` | Consolidation of the WebApp release branch for the AV2 review cut. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `release/v2.0.0` | `88b4172` | `chore(release): bump package version to 2.0.0 and add release notes` | Version metadata and release notes for `v2.0.0`. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `c1305dc` | `Merge branch 'feature/cleanup' into develop` | Integration of cleanup changes before the release branch. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `4f5b959` | `config(git): minimize gitignore and remove history items` | Repository hygiene for the WebApp release trail. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `afff8e7` | `build(cleanup): delete obsolete local verification logs` | Cleanup of obsolete local verification artifacts. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `5f1f4ee` | `build(cleanup): delete deprecated firebase routing configuration` | Removal of deprecated routing configuration. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `bae804c` | `Merge branch 'feature/documentation-compliance' into develop` | Integration of documentation compliance work. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `daafae5` | `docs(architecture): document clean architecture and frontend DDD patterns` | Documentation of frontend architecture and DDD alignment. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `ef22c5a` | `docs(wiki): create engineering wiki pages and navigation index` | Engineering wiki pages and navigation index. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `8b7fa35` | `docs(contrib): enforce structured multiline commit messages` | Contribution documentation for structured commit messages. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `2db3c82` | `docs(security): update security policy and reporting channels` | Security policy and reporting channel update. | 2026-06-16 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `143e5c2` | `docs(readme): rewrite main readme with premium layout` | README structure and execution guidance alignment. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `8299be1` | `Merge branch 'release/v1.8.0' into main` | Intermediate cleanup/layout release before `v2.0.0`. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `release/v1.8.0` | `08f8170` | `chore(release): bump package version to 1.8.0 and add release notes` | Release metadata for the cleanup/layout polish cut. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `75fb950` | `style(ops): apply fluid auto-fit columns to quick-actions grid` | Responsive quick-actions layout adjustment. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `f8a1b8a` | `style(sales): improve create order catalog grid responsiveness` | Responsive catalog grid adjustment for order creation. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `2f1eb35` | `build(cleanup): delete server directory` | Removal of the obsolete local mock server directory. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `48914dc` | `refactor(api): remove useMockApi from context APIs` | Removal of mock API switching from context APIs. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `8cb8ab7` | `feat(store): configure in-memory data store for local resources` | In-memory store for local resource flows not dependent on a live API. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `3282b57` | `feat(shared): configure base API http clients for production` | Base API HTTP clients aligned with the deployed API endpoint strategy. | 2026-06-15 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `develop` | `7568f26` | `build(deps): remove json-server dependency and mock scripts` | Removal of JSON-server dependency and mock scripts. | 2026-06-15 |

*Commits del repositorio `nexa-website`*

Release de cierre AV2 disponible para revisión. `nexa-website v3.0.0` se registra con el título visible `v3.0.0 - Nexa Landing Website Production Release` e incorpora el cierre de Landing Page, navegación, páginas de detalle, correcciones visuales y documentación de repositorio. Historial de commits: [https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website/commits/main/](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website/commits/main/).

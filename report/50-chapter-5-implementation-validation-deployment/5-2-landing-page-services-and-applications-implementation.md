## 5.2. Landing Page, Services & Applications Implementation

<p align="justify">
Para AV1, la evidencia de implementación de Nexa debe concentrarse en el incremento que sí alcanzó un estado demostrable y defendible ante la rúbrica: <strong>Sprint 1</strong>. En esta iteración convergen la planificación en Jira, la consolidación del backlog, la producción de artefactos de diseño, la documentación arquitectónica y la construcción de la landing page pública desplegada. El tablero vivo de Jira registra <strong>51 issues principales</strong> dentro del sprint, distribuidos en <strong>23 historias de usuario</strong> y <strong>28 tareas</strong>, además de <strong>16 subtareas reales</strong> asociadas por parent. Por ello, este sprint no puede leerse como un simple esfuerzo de maquetación, sino como el primer incremento formal y visible del proyecto.
</p>

### 5.2.1. Sprint 1

<p align="justify">
El Sprint 1 concentra la entrega AV1 y constituye la base del incremento visible del proyecto. La salida funcional verificable es la landing page pública en GitHub Pages; sin embargo, la lectura ingenieril del sprint exige considerar también la coherencia entre backlog, diseño, arquitectura, trazabilidad documental y coordinación del equipo. Bajo esta lógica, la revisión del sprint no se limita a “qué página se publicó”, sino a <strong>qué sistema de trabajo permitió llegar a esa publicación sin perder consistencia con el problema, los segmentos y la preparación técnica del producto</strong>.
</p>

#### 5.2.1.1. Sprint Planning 1.

<p align="justify">
La planificación del Sprint 1 se orientó a producir un incremento AV1 que pudiera exponerse de forma pública sin sacrificar profundidad técnica. El objetivo no fue desplegar todavía el portal transaccional completo, sino articular una primera capa visible del producto respaldada por investigación, diseño y arquitectura. La captura de Jira muestra un sprint cargado con trabajo concurrente en varios frentes, lo cual confirma una planificación por capas y no por tareas aisladas.
</p>

*Resumen formal del Sprint Planning 1*

| Campo | Registro |
| :--- | :--- |
| **Sprint** | Sprint 1 |
| **Objetivo del sprint (SMART)** | Desplegar la primera versión pública de la Landing Page de Nexa y su arquitectura base (Outcome) para validar la propuesta de valor y atraer prospectos (Impact) enfocados en los segmentos S1 y S2 (Customer) al cierre de la entrega AV1 el 23 de abril de 2026 (Event). |
| **Fecha del sprint** | 01 de abril de 2026 - 23 de abril de 2026 |
| **Modalidad / Ubicación** | Sesiones remotas grabadas vía Microsoft Stream / Microsoft Teams |
| **Enlace de la sesión** | [Grabación del Sprint 1 (Stream)](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202323040_upc_edu_pe/IQB8-qbGfc2ITIq6rlp5kvTuAWFIKesw8RDNiVv6OZDrAHE?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=3i1BUi) |
| **Preparado por** | Yucra Sandoval, Diego Sebastian |
| **Asistentes** | Diego Yucra, Joaquín Verde, César Marín, Gino Torrejón, Gerard Rojas |
| **Herramienta principal** | Jira Software |
| **Carga visible** | 51 issues principales en Sprint 1: 23 historias + 28 tareas; 16 subtareas reales asociadas por parent |

<p align="justify">
La carga anterior corresponde al corte normalizado de Jira verificado el 24 de abril de 2026. Las subtareas no aparecen como issues directas del sprint en la consulta principal porque Jira las administra bajo sus historias padre; por eso se documentan en una tabla separada, preservando la trazabilidad entre historia, tarea técnica y evidencia del incremento.
</p>

#### 5.2.1.2. Aspect Leaders and Collaborators.

<p align="justify">
La ejecución del sprint evidencia una distribución funcional del liderazgo. En lugar de concentrar toda la iteración en un único perfil, el equipo repartió la responsabilidad entre dominio, diseño, arquitectura, documentación y construcción visible del sitio. Esta organización es consistente con el Student Outcome ABET 5 y explica por qué el incremento AV1 combina trabajo público demostrable con profundidad ingenieril.
</p>

*Distribución de liderazgos y roles funcionales en el Sprint 1*

| Team Member | GitHub Username | Project Management | UX/UI Design | Software Architecture | Frontend Development | Documentation |
| :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| Yucra Sandoval, Diego Sebastian | DiegoS284 | L | C | C | C | C |
| Verde Bueno, Joaquín Francisco | JoaquinVerde115 | C | L | C | C | C |
| Marín Cueva, César Fernando | Cmarin2802 | C | C | C | C | L |
| Torrejón De Los Santos, Gino Rodrigo | R0obxdnt-bit | C | C | C | C | L |
| Rojas Mancilla, Gerard Gianpier | GerardRojasMancilla | C | C | L | L | C |

#### 5.2.1.3. Sprint Backlog 1.

<p align="justify">
La forma más clara de leer el Sprint Backlog 1 no es como una lista plana de tickets, sino como un conjunto de frentes coordinados que alimentan un mismo incremento. La extracción de Jira confirma que el sprint no incluye el portal transaccional completo ni el backend productivo; concentra las historias públicas US01-US23, tareas transversales de investigación, UX/UI, arquitectura, despliegue y documentación, más subtareas específicas para las historias que necesitaban desglose operativo.
</p>

<p align="justify">
Además, el Sprint Backlog 1 no puede analizarse aislado del <strong>Product Backlog documentado en la sección 3.3</strong>. Las tablas siguientes conectan la priorización académica con el tablero operativo: las historias US01-US23 quedan dentro del Sprint 1, mientras que las historias transaccionales US24-US64 y las tareas técnicas de backend permanecen como backlog futuro. Esta separación permite defender AV1 sin declarar software que todavía no existe.
</p>

*Resumen cuantitativo del Sprint 1 en Jira*

| Bloque | Cantidad | Códigos Jira | Lectura dentro de AV1 |
| :--- | :---: | :--- | :--- |
| Historias de usuario | 23 | NX-224 a NX-246 | Corresponden a US01-US23 del Product Backlog y cubren el sitio público, bilingüismo, contacto, FAQ, soporte visible y acceso público al portal en preparación. |
| Tareas principales | 28 | NX-57, NX-59, NX-61 a NX-64, NX-67 a NX-71, NX-77, NX-81, NX-84, NX-88, NX-91, NX-106, NX-113, NX-142, NX-148, NX-153, NX-158, NX-161, NX-164, NX-167, NX-169, NX-254, NX-255 | Agrupan investigación, UX/UI, arquitectura, Docs-as-Code, despliegue, evidencia académica y dos tareas documentales finalizadas. |
| Subtareas reales | 16 | NX-269 a NX-284 | Desglosan trabajo operativo bajo US01, US03, US18, US19, US20, US21, US22 y US23. |
| Backlog futuro fuera del sprint | 44 historias sin sprint y tareas técnicas futuras | NX-247 a NX-251, NX-259, NX-260, NX-266 y tareas futuras como NX-94, NX-97, NX-100, NX-116, NX-122, NX-128, NX-133, NX-138 | Mantienen el alcance transaccional, dashboard, autenticación, API y backend fuera de AV1. |

*Sprint 1 Jira - Historias de Usuario*

| Key | US | Summary Jira | SP Backlog | Estado Jira | Evidencia / alcance |
| :--- | :--- | :--- | :---: | :--- | :--- |
| NX-224 | US01 | Navegar entre páginas | 2 | Finalizado | Navegación pública entre Home, Platform, Solutions, Company y FAQ. |
| NX-225 | US02 | Dropdown de Solutions | 2 | Finalizado | Acceso rápido a segmentos desde el menú Solutions. |
| NX-226 | US03 | Cambio de idioma | 3 | Finalizado | Selector EN/ES y persistencia del idioma en la experiencia pública. |
| NX-227 | US04 | Navegación en Footer | 1 | Finalizado | Enlaces de cierre hacia páginas públicas y puntos de contacto. |
| NX-228 | US05 | Propuesta en Hero | 2 | Finalizado | Propuesta de valor inicial del Home. |
| NX-229 | US06 | Problema operativo | 2 | Finalizado | Narrativa del problema de coordinación, inventario y pedidos. |
| NX-230 | US07 | Capacidades clave | 2 | Finalizado | Bloques de capacidades centrales del producto. |
| NX-231 | US08 | Solicitar demo | 2 | Finalizado | CTA comercial hacia contacto o conversación de demo. |
| NX-232 | US09 | Módulos en Platform | 2 | Finalizado | Presentación pública de módulos y alcance funcional. |
| NX-233 | US10 | Cambio operativo | 2 | Finalizado | Explicación del cambio esperado en la operación diaria. |
| NX-234 | US11 | MVP vs Expansión | 2 | Finalizado | Separación entre capacidades visibles del MVP y roadmap futuro. |
| NX-235 | US12 | Hub de Solutions | 2 | Finalizado | Página hub para elegir segmento comercial. |
| NX-236 | US13 | Propuesta Distribuidores | 2 | Finalizado | Landing específica para distribuidores. |
| NX-237 | US14 | Propuesta Importadores | 2 | Finalizado | Landing específica para importadores y mayoristas. |
| NX-238 | US15 | Propuesta Cámaras Frías | 2 | Finalizado | Landing específica para operadores de almacenamiento frío. |
| NX-239 | US16 | Narrativa Company | 2 | Finalizado | Historia, propósito y equipo detrás de Nexa. |
| NX-240 | US17 | Soporte Humano | 2 | Finalizado | Mensaje de soporte e implementación acompañada. |
| NX-241 | US18 | Envío de contacto | 3 | Finalizado | Formulario público como canal comercial inicial. |
| NX-242 | US19 | Validación Feedback | 3 | Finalizado | Validaciones visibles antes del envío del formulario. |
| NX-243 | US20 | FAQ por Categorías | 2 | Finalizado | Organización de preguntas frecuentes por tema. |
| NX-244 | US21 | Expandir FAQ | 2 | Finalizado | Interacción de acordeón para consultar respuestas. |
| NX-245 | US22 | Soporte Flotante | 2 | Finalizado | Launcher de soporte persistente en el sitio público. |
| NX-246 | US23 | Acceso público al portal en preparación | 1 | Finalizado | Estado visible del botón Log in sin prometer portal operativo. |

*Sprint 1 Jira - Tareas Transversales*

| Key | Tipo | Summary Jira | Estado Jira | Evidencia / salida |
| :--- | :--- | :--- | :--- | :--- |
| NX-57 | style | style: Definir guidelines visuales y design tokens | Finalizado | Lineamientos visuales del Capítulo 4 y tokens del sitio público. |
| NX-59 | docs | docs: Redactar Startup Profile y Solution Profile | Finalizado | Base de negocio del Capítulo 1. |
| NX-61 | docs | docs: Definir segmentos objetivo y análisis competitivo | Finalizado | Segmentos S1, S2, S3 y contexto competitivo. |
| NX-62 | docs | docs: Diseñar guía de entrevistas y registrar ejecución | Finalizado | Evidencia de entrevistas y guía de investigación. |
| NX-63 | docs | docs: Sintetizar User Personas y User Task Matrix | Finalizado | Personas, tareas y lectura de necesidad del Capítulo 2. |
| NX-64 | docs | docs: Diseñar arquitectura de información y taxonomía | Finalizado | Navegación, sitemap y estructura de contenido. |
| NX-67 | docs | docs: Elaborar Customer Journey Maps | Finalizado | Journey maps derivados de investigación. |
| NX-68 | docs | docs: Registrar Big Picture EventStorming | Finalizado | Eventos, comandos y políticas de dominio. |
| NX-69 | docs | docs: Consolidar glosario de Ubiquitous Language | Finalizado | Lenguaje ubicuo usado en historias y arquitectura. |
| NX-70 | style | style: Diseñar wireframes Lo-Fi/Hi-Fi de landing y portal futuro | Finalizado | Wireframes y mockups para landing y referencia futura. |
| NX-71 | docs | docs: Consolidar Impact Mapping | Finalizado | Trazabilidad entre objetivos, actores e impactos. |
| NX-77 | style | style: Documentar accesibilidad WCAG 2.1 y Motion Principles | Finalizado | Criterios visuales, accesibilidad y movimiento. |
| NX-81 | chore | chore: Scaffold repositorio website público | Finalizado | Estructura base del repositorio de landing. |
| NX-84 | feat | feat(i18n): Implementar motor de internacionalización vanilla JS | Finalizado | Motor bilingüe EN/ES del sitio público. |
| NX-88 | feat | feat(landing): Maquetar Hero y Features | Finalizado | Implementación visible del Home. |
| NX-91 | feat | feat(contact): Implementar formulario y validación JS | Finalizado | Formulario público y validación del frente comercial. |
| NX-106 | docs | docs: Diseñar modelo C4 del sistema | Finalizado | Contexto y contenedores del Capítulo 4. |
| NX-113 | docs | docs: Expandir EventStorming con comandos y políticas | Finalizado | Profundización del modelo de dominio. |
| NX-142 | docs | docs: Especificar 64 User Stories en BDD/Gherkin | Finalizado | User Stories completas del Capítulo 3. |
| NX-148 | docs | docs: Priorizar MVP desde las 64 User Stories | Finalizado | Ordenamiento y release map del Product Backlog. |
| NX-153 | docs | docs: Crear matriz de trazabilidad landing-backlog | Finalizado | Relación entre landing, backlog y alcance AV1. |
| NX-158 | docs | docs: Graficar estadísticas de madurez digital | Finalizado | Sustento cuantitativo y visual de contexto. |
| NX-161 | docs | docs: Completar cuadro Student Outcome ABET 5 | Finalizado | Evidencia de colaboración y roles. |
| NX-164 | deploy | deploy: Publicar website en Vercel/GitHub Pages | Finalizado | Publicación del sitio público. |
| NX-167 | docs | docs: Corregir APA 7, links rotos y compilación PDF | Finalizado | Cierre editorial y consistencia del informe. |
| NX-169 | docs | docs: Estructurar Product Backlog inicial | Finalizado | Backlog priorizado del Capítulo 3. |
| NX-254 | docs | docs: Redactar README principal del repositorio Nexa | Finalizado | README principal del repositorio como evidencia Docs-as-Code. |
| NX-255 | docs | docs: Documentar arquitectura del sistema con diagramas C4 | Finalizado | Diagramas C4 y documentación arquitectónica asociada. |

*Sprint 1 Jira - Subtasks por User Story*

| Parent | Subtask | Summary Jira | Estado Jira | Propósito |
| :--- | :--- | :--- | :--- | :--- |
| NX-224 / US01 | NX-269 | feat(nav): Integrar rutas públicas principales | Finalizado | Implementar rutas de navegación del sitio público. |
| NX-224 / US01 | NX-270 | test(nav): Verificar navegación desktop y mobile | Finalizado | Revisar navegación en vistas desktop y mobile. |
| NX-226 / US03 | NX-271 | feat(i18n): Configurar selector EN/ES en navegación | Finalizado | Habilitar cambio de idioma desde la navegación. |
| NX-226 / US03 | NX-272 | test(i18n): Verificar persistencia de idioma entre páginas públicas | Finalizado | Confirmar persistencia de idioma entre páginas. |
| NX-241 / US18 | NX-273 | feat(contact): Maquetar formulario de contacto público | Finalizado | Construir el formulario visible de contacto. |
| NX-241 / US18 | NX-274 | test(contact): Validar envío y mensaje de confirmación | Finalizado | Verificar respuesta tras intento de envío. |
| NX-242 / US19 | NX-275 | feat(contact): Agregar validación de campos obligatorios | Finalizado | Añadir validaciones de campos requeridos. |
| NX-242 / US19 | NX-276 | test(contact): Validar errores de nombre, correo y mensaje | Finalizado | Verificar mensajes de error del formulario. |
| NX-243 / US20 | NX-277 | feat(faq): Estructurar categorías de preguntas frecuentes | Finalizado | Organizar preguntas por tema dentro del FAQ. |
| NX-243 / US20 | NX-278 | test(faq): Verificar navegación por categorías del FAQ | Finalizado | Validar acceso a preguntas por categoría. |
| NX-244 / US21 | NX-279 | feat(faq): Implementar acordeón de preguntas | Finalizado | Habilitar expandir y colapsar respuestas. |
| NX-244 / US21 | NX-280 | test(faq): Verificar expandir y colapsar respuestas | Finalizado | Revisar comportamiento del acordeón. |
| NX-245 / US22 | NX-281 | feat(support): Implementar launcher flotante de soporte | Finalizado | Mostrar acceso rápido a soporte visible. |
| NX-245 / US22 | NX-282 | test(support): Verificar enlaces de soporte hacia contacto, plataforma y FAQ | Finalizado | Confirmar que los enlaces de soporte no rompen navegación. |
| NX-246 / US23 | NX-283 | feat(auth-placeholder): Implementar estado visible de Log in | Finalizado | Mostrar el acceso al portal como preparación, no como feature completada. |
| NX-246 / US23 | NX-284 | test(auth-placeholder): Verificar que Log in no dirige a una ruta rota | Finalizado | Evitar que el placeholder genere una experiencia rota. |

*Backlog futuro fuera del Sprint 1*

| Jira | Resumen | Estado | Motivo de exclusión de AV1 |
| :--- | :--- | :--- | :--- |
| NX-247 | US24 - Catálogo personalizado | Por hacer | Requiere portal privado y reglas comerciales no entregadas en AV1. |
| NX-248 | US25 - Búsqueda SKU/Nombre | Por hacer | Depende del catálogo transaccional futuro. |
| NX-249 | US26 - Filtros de Categoría | Por hacer | Pertenece al catálogo B2B posterior. |
| NX-250 | US27 - Ficha Técnica | Por hacer | Requiere detalle de producto y datos operativos futuros. |
| NX-251 | US28 - Mantenimiento Catálogo | Por hacer | Corresponde a administración interna del catálogo. |
| NX-259 | US64 - API Auth & Recover | En curso | Es preparación técnica de autenticación y API, no incremento público AV1. |
| NX-260 | US34 - Compra B2B | En curso | Pertenece al flujo transaccional del portal B2B. |
| NX-266 | future: Dashboard de métricas comerciales | En curso | Dashboard interno futuro, fuera de la landing pública. |
| NX-94, NX-97, NX-100, NX-116, NX-122, NX-128, NX-133, NX-138 | Tareas técnicas future-dashboard, future-webapp, future-auth, future-backend, future-orders y future-api | Fuera de Sprint 1 | Preparan módulos posteriores, pero no deben contarse como entregables AV1. |

<p align="justify">
Las capturas siguientes deben leerse como soporte visual del tablero. La referencia normalizada para evaluación es la tabla anterior, porque separa explícitamente historias, tareas, subtareas y backlog futuro sin mezclar módulos no entregados dentro del Sprint 1.
</p>

*Vista general Sprint 0 + Sprint 1 cargado en Jira*

![Vista general del Sprint 0 y Sprint 1](../assets/images/jira/sprint-0-sprint-1.png)

La vista general del tablero permite verificar el volumen de trabajo visible del incremento AV1 y su organización inicial antes de revisar los bloques específicos. Elaboración propia.

*Sprint 1 — bloque B de trabajo planificado en Jira*

![Sprint 1 parte 2](../assets/images/jira/sprint-1-p2.png)

Este bloque evidencia continuidad entre especificación de user stories, priorización del MVP, despliegue del website y cierre documental de la entrega. Elaboración propia.

*Sprint 1 — parte 3 de historias públicas dentro del sprint*

![Sprint 1 parte 3](../assets/images/jira/sprint-1-p3.png)

Este bloque agrupa historias del sitio público para Home, Platform, Solutions, Company y FAQ, todas asignadas al Sprint 1. Su presencia confirma que la experiencia pública forma parte directa del incremento AV1. Elaboración propia.

*Verificación del Product Backlog en Jira*

![Product Backlog completo](../assets/images/jira/backlog.png)

El backlog en Jira demuestra que las historias priorizadas para investigación, diseño y composición del MVP sí fueron registradas en la herramienta y no solo descritas en el informe. Permite contrastar la lógica de priorización del capítulo 3 con la evidencia viva de Jira, incluyendo historias orientadas a despliegue, trazabilidad académica y preparación técnica posterior. Elaboración propia.

#### 5.2.1.4. Development Evidence for Sprint Review.

<p align="justify">
La evidencia de desarrollo del Sprint 1 abarca cuatro repositorios activos dentro de la organización <a href="https://github.com/upc-pre-202610-1asi0730-12242-king">upc-pre-202610-1asi0730-12242-king</a>. El repositorio <strong>nexa-report</strong> concentra toda la documentación académica del proyecto, construida de forma incremental desde el 01/04/2026. El repositorio <strong>nexa-website</strong> contiene la implementación real del Landing Page desplegado en GitHub Pages. Los repositorios <strong><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform">nexa-platform</a></strong> y <strong><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp">nexa-webapp</a></strong> fueron inicializados durante el sprint como base para la siguiente iteración. A continuación se presenta la tabla de commits relacionados con el incremento del Sprint 1, organizados por repositorio.
</p>

*Commits del repositorio `nexa-report`*

Documentación académica del proyecto, construida de forma incremental.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on |
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

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on |
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
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `57e0f9c` | `chore(git): ignore .claude worktree directory` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `f30b3f5` | `fix(docs): correct filename typos in requirements folder` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `94d4735` | `feat(a11y): add skip-to-content link to all pages for WCAG compliance` | | 20/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `505f4f6` | `docs(report): data update` | | 23/04/2026 |

*Commits del repositorio `nexa-platform`*

Inicialización del repositorio base para el portal transaccional.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `upc-pre-202610-1asi0730-12242-king/nexa-platform` | `main` | `520138d` | `Initial commit` | | 15/04/2026 |

*Commits del repositorio `nexa-webapp`*

Inicialización del repositorio base para la Web Application.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `f374393` | `Initial commit` | | 15/04/2026 |

#### 5.2.1.5. Execution Evidence for Sprint Review.

<p align="justify">
La ejecución visible del sprint ya se materializa en una landing page pública operativa con navegación multipágina, selector bilingüe, CTA de demostración, páginas por segmento y un relato claro sobre inventario, pedidos, temperatura y entrega. Esta salida confirma que el equipo sí llevó una parte del producto hasta una instancia de exposición real, lo que permite validación comercial y revisión técnica de consistencia entre lo prometido y lo implementado.
</p>

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

<p align="justify">
Al mismo tiempo, la ejecución debe leerse con honestidad de alcance: el portal B2B autenticado, la captura transaccional de pedidos, el catálogo privado, la autenticación y el seguimiento operativo aún no forman parte del incremento entregado. Su presencia en backlog y en arquitectura demuestra preparación, pero no debe confundirse con ejecución completada dentro de AV1.
</p>

#### 5.2.1.6. Services Documentation Evidence for Sprint Review.

<p align="justify">
La documentación de servicios en AV1 existe principalmente como <strong>evidencia de diseño y preparación técnica</strong>. El backlog ya incorpora historias de API y documentación (`NX-138`, además de las historias técnicas del bloque US58-US64), mientras que el capítulo 4 conserva la arquitectura DDD/C4, el diseño orientado a objetos y la base de datos que servirán de soporte a una fase posterior. Esta base es válida como sustento de ingeniería, porque muestra contratos previstos, separación de capas y reglas de negocio modeladas antes de implementar controladores productivos.
</p>

*Evidencia disponible de documentación de servicios en AV1*

| Tipo de evidencia | Fuente | Alcance defendible |
|---|---|---|
| Historias técnicas de API | Capítulo 3 y backlog priorizado | Define necesidades y operaciones previstas |
| Diseño DDD y bounded contexts | Sección 4.6 | Delimita responsabilidades del dominio |
| Diseño orientado a objetos | Sección 4.7 | Anticipa entidades y relaciones del backend |
| Diseño de base de datos | Sección 4.8 | Prepara persistencia para futuros servicios |
| Implementación ejecutable de servicios | **No corresponde en esta entrega** | Queda fuera del alcance observable de AV1 |

<p align="justify">
Por tanto, esta subsección debe defenderse como <strong>documentación técnica preparada</strong>, no como servicio implementado ni desplegado en producción. En AV1 basta con demostrar que el producto ya tiene una base de arquitectura y de contratos pensada para la siguiente fase, sin sobredeclarar software que todavía no corresponde a esta entrega.
</p>

#### 5.2.1.7. Software Deployment Evidence for Sprint Review.

<p align="justify">
La evidencia de despliegue de AV1 sí existe, pero está concentrada en el frente público. La siguiente tabla separa lo que ya es demostrable de lo que todavía permanece en fase preparatoria.
</p>

*Estado de despliegue y evidencia verificable de artefactos en AV1*

| Artefacto | Estado observable en AV1 | Evidencia |
|---|---|---|
| Landing page pública | **Desplegada y navegable** | [GitHub Pages](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Repositorio documental | **Versionado y colaborativo** | [nexa-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-report) |
| Repositorio del sitio público | **Implementación visible del frontend público** | [nexa-website](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website) |
| Web application autenticada | **Fase posterior del producto** | [nexa-webapp](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp). Nombrada en diseño y backlog, no como evidencia de despliegue AV1 |
| Backend / servicios | **Fase posterior del producto** | [nexa-platform](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform). Nombrado en arquitectura y backlog, no como evidencia de despliegue AV1 |

<p align="justify">
Esta lectura permite defender el despliegue con precisión: Nexa ya tiene una capa pública activa y demostrable, pero la capa transaccional aún debe presentarse como roadmap técnico respaldado por backlog y arquitectura, no como despliegue concluido ni como parte del alcance observable de esta entrega.
</p>

#### 5.2.1.8. Team Collaboration Insights during Sprint.

<p align="justify">
El Sprint 1 revela un patrón de colaboración técnicamente sano: investigación y dominio por un lado, UX/UI e información por otro, implementación pública y despliegue por otro, y una capa transversal de arquitectura y documentación sosteniendo el conjunto. Esta organización permitió que el equipo avanzara en paralelo sin perder coherencia narrativa ni técnica, lo cual es especialmente valioso en AV1 porque el entregable combina secciones académicas, artefactos visuales y software visible.
</p>

<p align="justify">
La principal conclusión colaborativa del sprint es que Nexa no se construyó como un esfuerzo fragmentado entre “los que escriben” y “los que programan”. El incremento visible solo fue posible porque Jira, el reporte, el diseño y la landing page evolucionaron de manera sincronizada. Aun cuando persista backlog remanente para portal B2B, autenticación, inventario transaccional y servicios, el equipo deja en AV1 una base metodológica sólida, trazable y escalable para la siguiente iteración.
</p>

*Evidencias de colaboración y métricas del equipo*

El análisis de la colaboración durante el Sprint 1 se evidencia en tres canales principales:
1. **GitHub Insights & Commits:** La contribución al repositorio `nexa-website` muestra actividad distribuida entre la maquetación HTML, estilos CSS y la lógica de internacionalización. El equipo adoptó la convención Docs-as-Code para asegurar que los commits en `nexa-report` reflejaran incrementos documentales paralelos al desarrollo web, facilitando la revisión asíncrona.
2. **Jira Software:** El tablero refleja un *burndown* consistente donde las historias de usuario de la Landing Page pasaron ordenadamente por los estados de especificación, diseño en Figma y despliegue final.
3. **Coordinación Síncrona:** El equipo mantuvo sesiones semanales registradas, cuya evidencia principal es la grabación en Microsoft Stream enlazada al inicio del sprint. Las discusiones críticas (como la priorización del menú *Platform* vs *Solutions*) se resolvieron en estas llamadas antes de pasar a código.

Adicionalmente, el proceso de integración continua hacia GitHub Pages operó como el principal punto de validación. Cada *pull request* o actualización en la rama principal desencadenaba un despliegue que permitía a todo el equipo revisar la apariencia y funcionalidad del sitio público desde cualquier dispositivo, garantizando que el diseño *mobile-first* propuesto en los mockups se cumpliera en la implementación real.

<br>

<p align="center">
  <img src="../assets/images/project-collaboration/github-insights.png" alt="GitHub Insights & Commits" width="80%">
  <br>
  <em>Evidencia 1: Actividad y contribuciones en los repositorios durante el Sprint 1. Elaboración propia.</em>
</p>

<br>

<p align="center">
  <img src="../assets/images/jira/sprint-0-sprint-1.png" alt="Jira — Vista general Sprint 0 y Sprint 1" width="80%">
  <br>
  <em>Evidencia 2: Vista general Sprint 0 + Sprint 1 en el tablero Jira del equipo KING. Elaboración propia.</em>
</p>

<p align="center">
  <img src="../assets/images/jira/sprint-1-p2.png" alt="Jira Sprint 1 — parte 2" width="80%">
  <br>
  <em>Evidencia 3: Sprint 1 en Jira — parte 2. Elaboración propia.</em>
</p>

<p align="center">
  <img src="../assets/images/jira/sprint-1-p3.png" alt="Jira Sprint 1 — parte 3" width="80%">
  <br>
  <em>Evidencia 4: Sprint 1 en Jira — parte 3. Elaboración propia.</em>
</p>

<p align="center">
  <img src="../assets/images/jira/backlog.png" alt="Jira Product Backlog completo" width="80%">
  <br>
  <em>Evidencia 5: Product Backlog completo en Jira. Elaboración propia.</em>
</p>

<br>

*Evidencia gráfica — Historial de commits en `nexa-report`*

<p align="center">
  <img src="../assets/images/project-collaboration/report-commits/first-commits.png" alt="Primeros commits nexa-report" width="85%">
  <br><em>Figura: Primeros commits del repositorio `nexa-report`. Elaboración propia.</em>
</p>

<p align="center">
  <img src="../assets/images/project-collaboration/report-commits/commits.png" alt="Commits intermedios nexa-report" width="85%">
  <br><em>Figura: Bloque intermedio de commits del repositorio `nexa-report`. Elaboración propia.</em>
</p>

<p align="center">
  <img src="../assets/images/project-collaboration/report-commits/last-commits.png" alt="Últimos commits nexa-report" width="85%">
  <br><em>Figura: Últimos commits del repositorio `nexa-report` al cierre de AV1. Elaboración propia.</em>
</p>

*Evidencia gráfica — Historial de commits en `nexa-website`*

<p align="center">
  <img src="../assets/images/project-collaboration/website-commits/first-commits.png" alt="Primeros commits nexa-website" width="85%">
  <br><em>Figura: Primeros commits del repositorio `nexa-website`. Elaboración propia.</em>
</p>

<p align="center">
  <img src="../assets/images/project-collaboration/website-commits/commits.png" alt="Commits intermedios nexa-website" width="85%">
  <br><em>Figura: Bloque intermedio de commits del repositorio `nexa-website`. Elaboración propia.</em>
</p>

<p align="center">
  <img src="../assets/images/project-collaboration/website-commits/last-commits.png" alt="Últimos commits nexa-website" width="85%">
  <br><em>Figura: Últimos commits del repositorio `nexa-website` al cierre de AV1. Elaboración propia.</em>
</p>

<br>

<p align="center">
  <img src="../assets/images/project-collaboration/team-collaboration-meeting.jpg" alt="Reunión de coordinación del equipo KING" width="80%">
  <br>
  <em>Evidencia 6: Reunión de coordinación síncrona del equipo KING (Microsoft Teams). Elaboración propia.</em>
</p>

<p align="center">
  <img src="../assets/images/project-collaboration/sprint-collaboration-evidence.jpg" alt="Colaboración durante sprint" width="80%">
  <br>
  <em>Evidencia 7: Trabajo colaborativo del equipo durante el Sprint 1. Elaboración propia.</em>
</p>

<p align="center">
  <img src="../assets/images/project-collaboration/presentation-practice-evidence.png" alt="Práctica de exposición" width="80%">
  <br>
  <em>Evidencia 8: Sesión de práctica de exposición y preparación de la sustentación AV1. Elaboración propia.</em>
</p>

### 5.2.2. Sprint 2

<p align="justify">
El Sprint 2 corresponde al primer incremento operativo de la Web Application de Nexa para TB1. A diferencia del Sprint 1, cuya entrega visible se concentró en la landing page pública, este sprint conecta el sitio público con la aplicación autenticada y materializa los flujos internos y B2B con datos de prueba (mock/seed). El backend productivo, la API REST, la persistencia MySQL y la autenticación real continúan como roadmap explícito de TB2; este incremento valida la capa frontend, la coherencia de rutas, los guardas por rol y la trazabilidad documental que sostendrán la integración técnica posterior.
</p>

#### 5.2.2.1. Sprint Planning 2.

<p align="justify">
El Sprint Planning 2 fijó como objetivo desplegar la primera versión funcional de la Nexa Web Application para TB1, conectando la landing pública con flujos por rol dentro del webapp, usando datos mock, hash routing para GitHub Pages y evidencia frontend documentada. La planificación priorizó cerrar el bucle B2B (catálogo → checkout → confirmación → orden), reforzar guardas de autenticación, exponer reportes operativos y dejar el código listo para integrar servicios reales en TB2.
</p>

*Resumen formal del Sprint Planning 2*

| Campo | Registro |
| :--- | :--- |
| **Sprint** | Sprint 2 |
| **Objetivo del sprint (SMART)** | Desplegar la primera versión funcional de la Nexa Web Application para TB1 (Outcome), conectando la landing pública a flujos por rol con datos mock y hash routing para GitHub Pages (Impact), enfocados en S1, S2 y roles internos autorizados (Customer), al cierre de la entrega TB1 el 02 de mayo de 2026 (Event). |
| **Fecha del sprint** | 24 de abril de 2026 - 02 de mayo de 2026 |
| **Modalidad / Ubicación** | Sesiones remotas vía Microsoft Teams + colaboración asíncrona en GitHub y Jira |
| **Preparado por** | Yucra Sandoval, Diego Sebastian |
| **Asistentes** | Diego Yucra, Joaquín Verde, César Marín, Gino Torrejón, Gerard Rojas |
| **Herramienta principal** | Jira Software + GitHub (3 repos) |
| **Alcance funcional declarado** | Web Application TB1 con flujos mock; sin backend productivo ni persistencia MySQL |
| **Fuera de alcance TB1** | API REST ASP.NET Core, Swagger/OpenAPI, persistencia MySQL, autenticación real, POD con upload, pasarela de pago, IoT, ETA real |

#### 5.2.2.2. Aspect Leaders and Collaborators.

<p align="justify">
El liderazgo del Sprint 2 se reorganiza para cubrir la naturaleza de la entrega: la Web Application requiere un foco más fuerte en arquitectura frontend, ruteo, autenticación por rol e i18n, mientras que la documentación y la coordinación general mantienen continuidad respecto del Sprint 1. La distribución sigue siendo coherente con el Student Outcome ABET 5 y refleja el esfuerzo paralelo de los tres repositorios (report, website y webapp).
</p>

*Distribución de liderazgos y roles funcionales en el Sprint 2*

| Team Member | GitHub Username | Project Management | Frontend Webapp | Routing & Auth | UX/UI Webapp | Documentation |
| :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| Yucra Sandoval, Diego Sebastian | DiegoS284 | L | L | C | C | L |
| Verde Bueno, Joaquín Francisco | JoaquinVerde115 | C | C | C | L | C |
| Marín Cueva, César Fernando | Cmarin2802 | C | C | C | C | L |
| Torrejón De Los Santos, Gino Rodrigo | R0obxdnt-bit | C | C | C | C | L |
| Rojas Mancilla, Gerard Gianpier | GerardRojasMancilla | C | C | L | C | C |

#### 5.2.2.3. Sprint Backlog 2.

<p align="justify">
El Sprint Backlog 2 mira el incremento desde tres frentes coordinados: continuidad del sitio público (CTAs hacia el webapp, favicon, copy alineado a TB1), entrega del frontend de la Web Application con datos mock (operación interna y portal B2B) y evidencia documental TB1 sincronizada con los tres repositorios. El backlog incluye 5 nuevas historias (US65–US69) que formalizan comportamientos introducidos durante el sprint y refinamientos de escenario sobre US ya existentes que se completan en el frontend mock. Todas las issues de Jira se mantienen <strong>In Progress</strong> hasta cierre formal del sprint en revisión.
</p>

*Resumen cuantitativo del Sprint Backlog 2*

| Bloque | Cantidad | Lectura dentro de TB1 |
| :--- | :---: | :--- |
| User Stories nuevas (US65-US69) | 5 | Formalizan redirección por rol, estado forbidden, ruteo seguro landing→webapp, vista de reportes y disclosure de datos mock. |
| User Stories refinadas | 10 | US23, US27, US30, US34, US37, US38, US41, US44, US45, US49 con escenarios cubiertos en frontend mock. |
| Tareas Sprint 2 | 20 | Cubren landing, webapp, autenticación, portal B2B, operación, reportes, despliegue y evidencia. |
| Subtareas operativas | 60 | Tres subtareas por tarea principal: implementación, validación local y captura de evidencia. |
| Backlog AV2 / TB2 | 10+ | Métodos de pago, direcciones guardadas, repetir/borrador de pedido, perfil, dashboards por rol, reportes avanzados, i18n completo y backend ASP.NET Core. |

*Sprint 2 Jira - Tareas principales (espejo del annex)*

| # | Tarea | Épica | Prioridad | SP | Asignado | Estado Jira |
| :--- | :--- | :--- | :--- | :---: | :--- | :--- |
| 1 | Landing CTAs hacia rutas hash del webapp | EP06 | High | 2 | Diego | In Progress |
| 2 | Website: favicon, legal y wording roadmap TB1 | EP06 | Medium | 2 | César | In Progress |
| 3 | Webapp: hash routing para GitHub Pages | EP07 | Highest | 3 | Gerard | In Progress |
| 4 | Integración del logo oficial Nexa en webapp | EP07 | Medium | 1 | Joaquín | In Progress |
| 5 | Disclaimer de datos mock y backend planeado | EP14 | Medium | 1 | César | In Progress |
| 6 | Redirección por rol y guard de scope forbidden | EP10 | High | 3 | Gerard | In Progress |
| 7 | Modal de detalle de producto en operación | EP09 | Medium | 2 | Joaquín | In Progress |
| 8 | Checkout y pantalla de éxito en portal B2B | EP08 | High | 5 | Diego | In Progress |
| 9 | Condiciones comerciales en pedido asistido | EP09 | High | 3 | Diego | In Progress |
| 10 | Drawer de detalle de lote (FEFO) | EP09 | Medium | 3 | Joaquín | In Progress |
| 11 | Drawer de ficha de cliente comercial | EP09 | Medium | 3 | Gino | In Progress |
| 12 | Vista de reportes operativos | EP11 | High | 5 | Diego | In Progress |
| 13 | Sincronización de estado de pedido en despacho/POD | EP09 | High | 3 | Gerard | In Progress |
| 14 | Aislamiento de datos del portal por clientId | EP08 | High | 3 | Gerard | In Progress |
| 15 | Evidencia de screenshots/wireframes del webapp | EP12 | High | 2 | Gino | In Progress |
| 16 | Evidencia de desarrollo Sprint 2 | EP13 | High | 2 | Diego | In Progress |
| 17 | Evidencia de despliegue Sprint 2 | EP12 | High | 2 | Gerard | In Progress |
| 18 | Evidencia de colaboración Sprint 2 | EP13 | Medium | 2 | César | In Progress |
| 19 | Actualización del Product Backlog (TB1) | EP13 | Medium | 1 | Diego | In Progress |
| 20 | Refinamiento de escenarios de User Stories | EP13 | Medium | 2 | Joaquín | In Progress |

<p align="justify">
La descomposición completa por épica, descripción, criterios de aceptación, asignaciones y subtareas se documenta en el anexo <a href="../annexes/annex-jira-sprint-2-import.md">Annex – Jira Sprint 2 Import Plan</a>, listo para creación manual o importación CSV en Jira. El estado por defecto es <strong>In Progress</strong> mientras el sprint sigue activo; ninguna issue se marca Done por defecto.
</p>

#### 5.2.2.4. Development Evidence for Sprint Review.

<p align="justify">
La evidencia de desarrollo del Sprint 2 se distribuye en tres repositorios activos: <strong>nexa-website</strong> (continuidad del sitio público y conexión con el webapp), <strong>nexa-webapp</strong> (frontend de la Web Application TB1 con datos mock) y <strong>nexa-report</strong> (documentación TB1 paralela). Las tablas siguientes reflejan únicamente commits reales verificados con <code>git log</code> sobre las ramas <code>main</code> remotas; los hashes y mensajes son reproducibles por cualquier integrante del equipo.
</p>

*Commits del repositorio `nexa-website` (Sprint 2)*

Continuidad de la landing pública: alineación de CTAs con el webapp, favicon, ajustes de copy y meta tags TB1.

| Repository | Branch | Commit Id | Commit Message | Commited on |
| :--- | :--- | :--- | :--- | :--- |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `905797e` | `chore(repo): remove tracked macos files` | 26/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `4951d66` | `fix(landing): add favicon and tighten tb1 copy` | 28/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `13ea635` | `fix(landing): align ctas with webapp routes` | 28/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `8f0119b` | `fix(seo): add robots and theme-color meta to company page` | 27/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `972c842` | `fix(seo): add robots and theme-color meta to all solution subpages` | 27/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `aa9b1f1` | `fix(seo): add robots and theme-color meta to platform and faq pages` | 27/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `1883c50` | `fix(seo): add robots and theme-color meta to landing homepage` | 27/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `9c57146` | `fix(website): align TB1 links and roadmap copy` | 26/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-website` | `main` | `e804da1` | `style(tokens): align text, border, surface and easing tokens with webapp design system` | 25/04/2026 |

*Commits del repositorio `nexa-webapp` (Sprint 2)*

Implementación frontend de la Web Application con datos mock, ruteo hash, autenticación con guardas por rol, portal B2B, operación interna y reportes.

| Repository | Branch | Commit Id | Commit Message | Commited on |
| :--- | :--- | :--- | :--- | :--- |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `2e2477b` | `fix(webapp): align safe external links and redirects` | 02/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `3292315` | `fix(webapp): harden portal data boundaries` | 02/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `10d0e81` | `fix(copy): clarify mock data and planned backend` | 02/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `41c2f0f` | `chore(brand): use official nexa logo in webapp` | 02/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `d86c46f` | `fix(router): support github pages webapp routes` | 02/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `c0c5529` | `chore(pkg): bump version to 0.2.0 for TB2 milestone` | 02/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `340f8d6` | `fix(reports): apply i18n keys to page header, section titles, and table labels` | 01/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `39d4627` | `feat(i18n): add reports section with operational KPI and table labels` | 01/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `e4600b6` | `fix(i18n): add missing cancelled and rejected order status translations` | 01/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `9f5b791` | `fix(demo): refresh dates and add favicon` | 01/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `a1e9d9f` | `fix(a11y): improve drawer and modal access` | 01/05/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `283c03c` | `fix(auth): show forbidden scope state` | 30/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `e2b3c15` | `fix(orders): align status flow and order guards` | 30/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `d692ed6` | `feat(reports): add operational reports screen with KPIs, status breakdown, and FEFO alerts` | 30/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `a076e6a` | `fix(dispatch): sync order status on route/delivery events; fix dead order detail button` | 30/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `5ca8ff2` | `feat(orders): persist new order to store and navigate to its detail on confirm` | 29/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `6053d18` | `feat(portal): close B2B order loop — cart checkout persists to store, orders filtered by client` | 29/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `6db2e58` | `fix(auth): add clientId to portal user; expose nextOrderId/addOrder helpers in data store` | 29/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `c891bb8` | `chore(ui): add product detail modal in ops catalog; disable unfinished actions` | 29/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `0f1c08b` | `feat(clients): replace toast stub with full client profile drawer` | 29/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `dc80775` | `feat(inventory): add lot detail drawer with movement history` | 28/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `de1e440` | `feat(orders): show commercial conditions in assisted order flow` | 28/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `5b53e6e` | `feat(portal): add order success screen after B2B checkout` | 28/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `463f5c7` | `feat(portal): add product detail modal in B2B catalog` | 28/04/2026 |
| `upc-pre-202610-1asi0730-12242-king/nexa-webapp` | `main` | `1a6b417` | `fix(auth): enforce scope guard and clean logout` | 27/04/2026 |

*Commits del repositorio `nexa-report` (Sprint 2)*

Documentación TB1: actualización de evidencias, integración de screenshots/wireframes del webapp y mirror de Sprint 2 en backlog y user stories.

| Repository | Branch | Commit Id | Commit Message | Commited on |
| :--- | :--- | :--- | :--- | :--- |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `TODO` | `assets(webapp): add web application screenshots and wireframes for sprint 2 evidence` | TODO: pending Sprint 2 report commits after documentation update |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `TODO` | `docs(ch3): add user stories US65-US69 and refine sprint 2 scope notes` | TODO: pending Sprint 2 report commits after documentation update |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `TODO` | `docs(backlog): mirror sprint 2 jira plan and tb2 future backlog` | TODO: pending Sprint 2 report commits after documentation update |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `TODO` | `docs(ch4): reference web application screenshots in design evidence` | TODO: pending Sprint 2 report commits after documentation update |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `TODO` | `docs(ch5): add sprint 2 implementation, deployment and collaboration evidence` | TODO: pending Sprint 2 report commits after documentation update |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `TODO` | `docs(jira): add sprint 2 issue import plan annex` | TODO: pending Sprint 2 report commits after documentation update |
| `upc-pre-202610-1asi0730-12242-king/nexa-report` | `main` | `TODO` | `docs(front-matter): add sprint 2 toc entries and version history rows` | TODO: pending Sprint 2 report commits after documentation update |

#### 5.2.2.5. Execution Evidence for Sprint Review.

<p align="justify">
La ejecución observable del Sprint 2 se concreta en pantallas reales del frontend de la Web Application con datos mock. La tabla siguiente vincula cada pantalla con su propósito operativo, la imagen de evidencia, la User Story relacionada y el commit que la materializa. Las pantallas faltantes se marcan como TODO; no se inventan rutas ni se sustituyen por mockups.
</p>

*Pantallas ejecutadas - Web Application TB1*

| Pantalla | Propósito | Evidencia | US relacionada | Commit relacionado |
| :--- | :--- | :--- | :--- | :--- |
| Login | Autenticación con redirección por rol | `../assets/images/web-app-screenshots/log-in.png` | US54, US55, US65 | `1a6b417`, `283c03c` |
| Dashboard operativo | Vista general por rol interno | `../assets/images/web-app-screenshots/dashboard.png` | US44, US69 | `666293e`, `9f5b791` |
| Catálogo de operación + detalle | Catálogo interno con modal de producto | `../assets/images/web-app-screenshots/catalog.png` | US27 (refinada) | `c891bb8` |
| Inventario + drawer de lote | Stock con detalle FEFO por lote | `../assets/images/web-app-screenshots/inventory.png` | US44, US45 | `dc80775` |
| Clientes + ficha completa | Ficha comercial con drawer | `../assets/images/web-app-screenshots/clients.png` | US49 | `0f1c08b` |
| Creación de pedido asistido | Captura con condiciones comerciales | `../assets/images/web-app-screenshots/create-order.png` | US29, US30 (refinada) | `de1e440`, `5ca8ff2` |
| Bandeja de órdenes | Lista, filtros y guardas de estado | `../assets/images/web-app-screenshots/orders.png` | US37, US38, US41 (refinadas) | `e2b3c15`, `5ca8ff2` |
| Despacho y POD | Sincronización de estado + cierre | `../assets/images/web-app-screenshots/dispatch.png` | US41, US42 | `a076e6a` |
| Reportes operativos | KPI + breakdown de estado + FEFO | `../assets/images/web-app-screenshots/reports.png` | US44, US68 | `d692ed6`, `39d4627`, `340f8d6` |
| Perfil y preferencias | Datos personales e idioma | `../assets/images/web-app-screenshots/profile.png` | US69 | `9f69572`, `95adeb4` |
| Configuración (operación) | Settings operativos por rol | `../assets/images/web-app-screenshots/settings.png` | US57 | `666293e` |
| Estado forbidden / sin permisos | Visibilidad de scope denegado | TODO: pendiente captura `web-app-screenshots/forbidden.png` | US66, US41 (refinada) | `283c03c`, `1a6b417` |
| Portal B2B - Home | Entrada del cliente B2B | TODO: pendiente captura `web-app-screenshots/portal-home.png` | US24, US55 | `0ff014d`, `6db2e58` |
| Portal B2B - Catálogo + detalle | Catálogo B2B con modal de producto | TODO: pendiente captura `web-app-screenshots/portal-catalog.png` | US24, US27 (refinada) | `463f5c7` |
| Portal B2B - Checkout | Confirmación del pedido B2B | TODO: pendiente captura `web-app-screenshots/portal-checkout.png` | US34, US37 (refinadas) | `6053d18` |
| Portal B2B - Success | Confirmación post-checkout | TODO: pendiente captura `web-app-screenshots/portal-success.png` | US37 (refinada) | `5b53e6e` |
| Portal B2B - Mis órdenes | Listado por cliente (clientId scoped) | TODO: pendiente captura `web-app-screenshots/portal-orders.png` | US38 (refinada) | `6053d18`, `6db2e58` |

<p align="justify">
La ejecución debe leerse con honestidad de alcance: el frontend funciona end-to-end con datos mock y persiste en memoria/store del cliente. La integración con servicios reales (autenticación, persistencia, POD con upload, pagos, ETA real e IoT) permanece como roadmap explícito de TB2, no como ejecución TB1.
</p>

#### 5.2.2.6. Services Documentation Evidence for Sprint Review.

<p align="justify">
En TB1, la documentación de servicios mantiene el carácter <strong>preparatorio</strong> establecido en el Sprint 1. La Web Application opera contra un store de datos mock con estructura <em>API-ready</em>: la separación por bounded context, los servicios cliente y la capa de acceso permiten reemplazar el origen de datos por una API REST sin reescribir consumidores. La capa Axios queda preparada en el código del webapp como anticipo de la integración con la API ASP.NET Core planificada para TB2.
</p>

*Estado de la documentación de servicios en TB1*

| Tipo de evidencia | Fuente | Alcance defendible en TB1 |
|---|---|---|
| Contratos previstos del API | Capítulo 3 (US58-US64) y backlog | Define operaciones futuras: catálogo, ficha, pedidos, tracking, POD, auth |
| Diseño DDD y bounded contexts | Sección 4.6 | Delimita responsabilidades del dominio |
| Diseño OOD y modelo relacional | Secciones 4.7 y 4.8 | Anticipa entidades del backend |
| Capa de servicios mock en webapp | Pinia store + servicios por contexto | Estructura API-ready lista para reemplazar origen |
| Capa Axios preparada | Cliente HTTP del webapp | Pendiente de apuntar a la API real en TB2 |
| API REST ASP.NET Core + Swagger | Roadmap TB2 | **No corresponde a TB1** |
| Persistencia MySQL | Roadmap TB2 | **No corresponde a TB1** |
| Autenticación real (JWT + recover) | Roadmap TB2 | **No corresponde a TB1** |

<p align="justify">
La declaración honesta del alcance evita sobre-reportar capas que aún no existen. TB1 entrega una Web Application con datos mock y arquitectura preparada; TB2 sustituirá la fuente de datos por servicios reales sin alterar las superficies ya validadas.
</p>

#### 5.2.2.7. Software Deployment Evidence for Sprint Review.

<p align="justify">
TB1 entrega dos artefactos desplegados en GitHub Pages: la landing pública y la Web Application. El webapp adopta hash routing porque GitHub Pages no provee reescritura SPA (no hay control sobre el servidor para devolver <code>index.html</code> en rutas profundas), de modo que el hash evita el clásico 404 al refrescar o compartir un deep link.
</p>

*Estado de despliegue verificable en TB1*

| Artefacto | Estado observable | URL |
|---|---|---|
| Landing pública (nexa-website) | **Desplegada y navegable** | [GitHub Pages – nexa-website](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/) |
| Web Application (nexa-webapp) | **Desplegada con hash routing** | [GitHub Pages – nexa-webapp](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-webapp/) |
| Repositorio documental | **Versionado y colaborativo** | [nexa-report](https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-report) |
| API backend (ASP.NET Core) | **No corresponde a TB1** | Roadmap TB2 |
| Persistencia MySQL | **No corresponde a TB1** | Roadmap TB2 |

*Rutas hash probadas del webapp*

| Ruta | Propósito |
| :--- | :--- |
| `/#/auth/login` | Acceso autenticado a la Web Application |
| `/#/ops/dashboard` | Vista operativa interna |
| `/#/ops/inventory` | Inventario con FEFO y drawer de lote |
| `/#/portal/home` | Entrada del cliente B2B |
| `/#/portal/catalog` | Catálogo del portal B2B |
| `/#/portal/orders` | Órdenes del cliente B2B (filtradas por clientId) |

*Evidencias de despliegue (capturas)*

> TODO: pendiente captura `assets/images/deployment/webapp-github-pages.png` con la verificación visible del despliegue del webapp.
> TODO: pendiente captura `assets/images/deployment/website-github-pages.png` con la verificación visible del despliegue del website (Sprint 2).

#### 5.2.2.8. Team Collaboration Insights during Sprint.

<p align="justify">
La colaboración del Sprint 2 se sostuvo sobre tres canales: (1) Jira como tablero operativo del sprint y trazabilidad de issues; (2) GitHub como espacio de revisión de código y contribución distribuida en los tres repositorios (website, webapp y report); (3) sesiones síncronas semanales por Microsoft Teams para alinear ruteo, autenticación, modelo de datos mock y estructura de evidencia. El equipo mantuvo la convención Docs-as-Code: cada incremento de código tuvo su contrapartida documental en <code>nexa-report</code>, lo que permitió cerrar el sprint con un reporte sincronizado con el estado real del producto.
</p>

*Distribución de contribución (Sprint 2)*

| Frente | Líder | Apoyo | Repositorio dominante |
| :--- | :--- | :--- | :--- |
| Frontend webapp + portal B2B | Diego | Joaquín, Gerard | nexa-webapp |
| Routing hash y guardas de auth | Gerard | Diego | nexa-webapp |
| UX/UI webapp + i18n reportes | Joaquín | Gino | nexa-webapp |
| Landing CTAs, favicon, copy TB1 | César | Diego | nexa-website |
| Documentación TB1 + evidencia | Diego, César, Gino | Todo el equipo | nexa-report |

*Evidencias gráficas Sprint 2*

> TODO: pendiente captura `assets/images/project-collaboration/github-insights-sprint-2.png` con GitHub Insights de los tres repositorios al cierre de TB1.
> TODO: pendiente captura `assets/images/jira/sprint-2-board.png` con el tablero Jira del Sprint 2 (vista completa).
> TODO: pendiente captura `assets/images/jira/sprint-2-backlog.png` con el backlog de Sprint 2 antes de iniciar.

<p align="justify">
La principal lectura colaborativa del Sprint 2 es que el equipo logró sostener tres repositorios en paralelo sin perder consistencia narrativa ni técnica. La separación de responsabilidades por frente (webapp, website, report) y el cierre coordinado de evidencia documental confirman que la metodología Docs-as-Code adoptada en el Sprint 1 escala correctamente cuando el incremento agrega una aplicación frontend completa, aun cuando el backend permanece como roadmap TB2.
</p>

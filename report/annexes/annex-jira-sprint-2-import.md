# Annex – Jira Sprint 2 Import Plan (TB1)

<p align="justify">
Este anexo documenta el plan de issues de Jira para el <strong>Sprint 2 (TB1)</strong> de Nexa. Se entrega como tabla manual y como CSV listo para importación en Jira Software (proyecto NX). Todas las issues se mantienen en estado <strong>In Progress</strong> mientras el sprint sigue activo; ninguna se marca Done por defecto. La asignación de equipo refleja la distribución de liderazgos del Sprint 2 documentada en §5.2.2.2.
</p>

## 1. Épicas activas en Sprint 2

| Epic Key | Nombre | Foco |
| :--- | :--- | :--- |
| EP06 | Landing Page Continuity | Continuidad de la landing pública: CTAs hacia webapp, favicon, copy TB1, meta tags |
| EP07 | Web Application UX/UI | Estructura visual y de interacción del webapp; logo oficial; ruteo |
| EP08 | B2B Portal | Catálogo, checkout, orden, success, aislamiento por clientId |
| EP09 | Operations Webapp | Operación interna: catálogo + modal, drawers, pedido asistido, despacho/POD |
| EP10 | Identity & Access | Login con redirección por rol, guardas de scope, estado forbidden |
| EP11 | Reports & Analytics | Vista de reportes operativos con KPIs y FEFO |
| EP12 | Deployment & Evidence | Despliegue GitHub Pages, hash routing, evidencia visual |
| EP13 | Docs-as-Code TB1 | Documentación TB1 sincronizada con los tres repositorios |
| EP14 | Mock Services & API Readiness | Capa mock API-ready, Axios listo, disclaimer de datos mock y backend planeado |

## 2. Hierarchy resumen

| Tipo | Cantidad |
| :--- | :---: |
| Epics activas | 9 |
| User Stories nuevas (US65–US69) | 5 |
| Tareas principales | 20 |
| Subtareas (3 por tarea) | 60 |
| Total issues a crear/actualizar | **94** |

## 3. User Stories nuevas (Sprint 2)

| Issue Key (sugerido) | Tipo | Epic | Summary | Prioridad | SP | Asignado | Estado |
| :--- | :--- | :--- | :--- | :--- | :---: | :--- | :--- |
| NX-300 | Story | EP10 | US65 — Redirección por rol al iniciar sesión | High | 3 | Gerard | In Progress |
| NX-301 | Story | EP10 | US66 — Estado visible de scope/permiso denegado | High | 2 | Gerard | In Progress |
| NX-302 | Story | EP06 | US67 — Ruteo seguro desde landing pública al webapp | High | 2 | Diego | In Progress |
| NX-303 | Story | EP11 | US68 — Vista de reportes operativos | High | 5 | Diego | In Progress |
| NX-304 | Story | EP14 | US69 — Disclosure transparente de datos mock TB1 y API readiness | Medium | 2 | César | In Progress |

## 4. User Stories refinadas en Sprint 2

| US | Refinamiento aplicado en TB1 | Estado Jira |
| :--- | :--- | :--- |
| US23 | Botón Log in del landing redirige a `/#/auth/login` real del webapp | In Progress |
| US27 | Modal de detalle de producto activo en operación y portal B2B | In Progress |
| US30 | Condiciones comerciales visibles en el flujo de pedido asistido | In Progress |
| US34 | Checkout B2B persiste pedido en store con clientId | In Progress |
| US37 | Pantalla de éxito post-checkout B2B implementada | In Progress |
| US38 | Listado de órdenes filtrado por clientId del cliente B2B | In Progress |
| US41 | Guardas de transición de estado y forbidden visible | In Progress |
| US44 | KPIs de stock y FEFO disponibles en reportes operativos | In Progress |
| US45 | Drawer de detalle de lote con historial de movimientos | In Progress |
| US49 | Drawer de ficha completa de cliente comercial | In Progress |

## 5. Tareas principales del Sprint 2

| Issue Key (sugerido) | Tipo | Epic | Summary | Prioridad | SP | Asignado | Estado | Commit / Evidencia |
| :--- | :--- | :--- | :--- | :--- | :---: | :--- | :--- | :--- |
| NX-310 | Task | EP06 | Landing CTAs hacia rutas hash del webapp | High | 2 | Diego | In Progress | `13ea635` (nexa-website) |
| NX-311 | Task | EP06 | Website: favicon, legal y wording roadmap TB1 | Medium | 2 | César | In Progress | `4951d66`, `9c57146` |
| NX-312 | Task | EP07 | Webapp: hash routing para GitHub Pages | Highest | 3 | Gerard | In Progress | `d86c46f`, `64a331e` |
| NX-313 | Task | EP07 | Integración del logo oficial Nexa en webapp | Medium | 1 | Joaquín | In Progress | `41c2f0f` |
| NX-314 | Task | EP14 | Disclaimer de datos mock y backend planeado | Medium | 1 | César | In Progress | `10d0e81` |
| NX-315 | Task | EP10 | Redirección por rol y guard de scope forbidden | High | 3 | Gerard | In Progress | `283c03c`, `1a6b417` |
| NX-316 | Task | EP09 | Modal de detalle de producto en operación | Medium | 2 | Joaquín | In Progress | `c891bb8`, `463f5c7` |
| NX-317 | Task | EP08 | Checkout y pantalla de éxito en portal B2B | High | 5 | Diego | In Progress | `6053d18`, `5b53e6e` |
| NX-318 | Task | EP09 | Condiciones comerciales en pedido asistido | High | 3 | Diego | In Progress | `de1e440` |
| NX-319 | Task | EP09 | Drawer de detalle de lote (FEFO) | Medium | 3 | Joaquín | In Progress | `dc80775` |
| NX-320 | Task | EP09 | Drawer de ficha de cliente comercial | Medium | 3 | Gino | In Progress | `0f1c08b` |
| NX-321 | Task | EP11 | Vista de reportes operativos | High | 5 | Diego | In Progress | `d692ed6`, `39d4627`, `340f8d6` |
| NX-322 | Task | EP09 | Sincronización de estado de pedido en despacho/POD | High | 3 | Gerard | In Progress | `a076e6a`, `e2b3c15` |
| NX-323 | Task | EP08 | Aislamiento de datos del portal por clientId | High | 3 | Gerard | In Progress | `6db2e58`, `3292315` |
| NX-324 | Task | EP12 | Evidencia de screenshots/wireframes del webapp | High | 2 | Gino | In Progress | assets en `report/assets/images/web-app-*` |
| NX-325 | Task | EP13 | Evidencia de desarrollo Sprint 2 | High | 2 | Diego | In Progress | §5.2.2.4 |
| NX-326 | Task | EP12 | Evidencia de despliegue Sprint 2 | High | 2 | Gerard | In Progress | §5.2.2.7 |
| NX-327 | Task | EP13 | Evidencia de colaboración Sprint 2 | Medium | 2 | César | In Progress | §5.2.2.8 |
| NX-328 | Task | EP13 | Actualización del Product Backlog (TB1) | Medium | 1 | Diego | In Progress | §3.3 |
| NX-329 | Task | EP13 | Refinamiento de escenarios de User Stories | Medium | 2 | Joaquín | In Progress | §3.1 |

## 6. Subtareas (3 por tarea principal)

<p align="justify">
Cada tarea principal del bloque anterior se desglosa en tres subtareas operativas: (a) implementar/actualizar el artefacto, (b) validar localmente, (c) capturar evidencia y revisar consistencia con el reporte. Se muestra el patrón general; al importar en Jira se replica por cada tarea principal sustituyendo el sufijo correspondiente.
</p>

| Subtask Key (sugerido) | Parent | Summary | Estado |
| :--- | :--- | :--- | :--- |
| NX-330 | NX-310 | Implementar CTA del landing hacia ruta hash del webapp | In Progress |
| NX-331 | NX-310 | Validar redirección desde landing en local | In Progress |
| NX-332 | NX-310 | Capturar evidencia y sincronizar §5.2.2 | In Progress |
| NX-333 | NX-311 | Aplicar favicon, legal y copy roadmap TB1 | In Progress |
| NX-334 | NX-311 | Validar páginas del website con copy TB1 | In Progress |
| NX-335 | NX-311 | Capturar evidencia y sincronizar §5.2.2 | In Progress |
| NX-336 | NX-312 | Implementar router hash y base path GitHub Pages | In Progress |
| NX-337 | NX-312 | Validar deep links sin 404 | In Progress |
| NX-338 | NX-312 | Capturar evidencia (rutas probadas) | In Progress |
| NX-339 | NX-313 | Reemplazar logos por logo oficial Nexa | In Progress |
| NX-340 | NX-313 | Validar logo en layouts auth/ops/portal | In Progress |
| NX-341 | NX-313 | Capturar evidencia visual | In Progress |
| NX-342 | NX-314 | Implementar disclaimer de datos mock + backend planeado | In Progress |
| NX-343 | NX-314 | Validar mensaje en superficies clave | In Progress |
| NX-344 | NX-314 | Capturar evidencia visual | In Progress |
| NX-345 | NX-315 | Implementar redirect por rol post-login y guard scope | In Progress |
| NX-346 | NX-315 | Validar accesos: ops, portal, forbidden | In Progress |
| NX-347 | NX-315 | Capturar evidencia (login + forbidden) | In Progress |
| NX-348 | NX-316 | Implementar modal de detalle de producto en ops y portal | In Progress |
| NX-349 | NX-316 | Validar modal en catálogos | In Progress |
| NX-350 | NX-316 | Capturar evidencia | In Progress |
| NX-351 | NX-317 | Implementar checkout B2B + pantalla éxito | In Progress |
| NX-352 | NX-317 | Validar persistencia de orden por clientId | In Progress |
| NX-353 | NX-317 | Capturar evidencia (checkout + success) | In Progress |
| NX-354 | NX-318 | Mostrar condiciones comerciales en pedido asistido | In Progress |
| NX-355 | NX-318 | Validar visibilidad y formato | In Progress |
| NX-356 | NX-318 | Capturar evidencia | In Progress |
| NX-357 | NX-319 | Implementar drawer de detalle de lote FEFO | In Progress |
| NX-358 | NX-319 | Validar movimientos por lote | In Progress |
| NX-359 | NX-319 | Capturar evidencia | In Progress |
| NX-360 | NX-320 | Implementar drawer de ficha de cliente | In Progress |
| NX-361 | NX-320 | Validar ficha completa | In Progress |
| NX-362 | NX-320 | Capturar evidencia | In Progress |
| NX-363 | NX-321 | Implementar reportes operativos con KPIs + FEFO | In Progress |
| NX-364 | NX-321 | Aplicar i18n a reportes | In Progress |
| NX-365 | NX-321 | Capturar evidencia | In Progress |
| NX-366 | NX-322 | Sincronizar estado en despacho/POD | In Progress |
| NX-367 | NX-322 | Validar transiciones y guardas | In Progress |
| NX-368 | NX-322 | Capturar evidencia | In Progress |
| NX-369 | NX-323 | Aislar datos del portal por clientId | In Progress |
| NX-370 | NX-323 | Validar boundaries | In Progress |
| NX-371 | NX-323 | Capturar evidencia | In Progress |
| NX-372 | NX-324 | Mover assets a `report/assets/images/web-app-*` | In Progress |
| NX-373 | NX-324 | Validar paths en markdown | In Progress |
| NX-374 | NX-324 | Anotar TODO de capturas faltantes | In Progress |
| NX-375 | NX-325 | Construir tabla de commits Sprint 2 (3 repos) | In Progress |
| NX-376 | NX-325 | Verificar hashes con `git log` | In Progress |
| NX-377 | NX-325 | Sincronizar §5.2.2.4 | In Progress |
| NX-378 | NX-326 | Documentar URLs y rutas hash probadas | In Progress |
| NX-379 | NX-326 | Anotar TODO capturas de despliegue | In Progress |
| NX-380 | NX-326 | Sincronizar §5.2.2.7 | In Progress |
| NX-381 | NX-327 | Redactar §5.2.2.8 (colaboración Sprint 2) | In Progress |
| NX-382 | NX-327 | Anotar TODO capturas Insights/Jira | In Progress |
| NX-383 | NX-327 | Sincronizar tabla de aspect leaders | In Progress |
| NX-384 | NX-328 | Mirror Sprint 2 en §3.3 (backlog) | In Progress |
| NX-385 | NX-328 | Documentar TB2 / AV2 backlog | In Progress |
| NX-386 | NX-328 | Validar coherencia con Sprint 1 | In Progress |
| NX-387 | NX-329 | Refinar escenarios US23/27/30/34/37/38/41/44/45/49 | In Progress |
| NX-388 | NX-329 | Agregar US65–US69 a §3.1 | In Progress |
| NX-389 | NX-329 | Validar formato Gherkin y enumeración | In Progress |

## 7. CSV listo para importación en Jira

```csv
Issue Key,Issue Type,Summary,Description,Epic Link,Priority,Story Points,Assignee,Status
NX-300,Story,US65 — Redirección por rol al iniciar sesión,"Como usuaria autenticada quiero ser redirigida automáticamente al espacio que corresponde a mi rol al iniciar sesión para no tener que navegar manualmente entre operación y portal.",EP10,High,3,Gerard,In Progress
NX-301,Story,US66 — Estado visible de scope/permiso denegado,"Como usuaria autenticada quiero ver un estado claro cuando intento acceder a una ruta sin permisos para entender por qué no puedo continuar y volver a una zona segura.",EP10,High,2,Gerard,In Progress
NX-302,Story,US67 — Ruteo seguro desde landing pública al webapp,"Como visitante del sitio público quiero pulsar el botón Log in del landing y aterrizar en la pantalla de autenticación real del webapp para iniciar sesión sin rutas rotas.",EP06,High,2,Diego,In Progress
NX-303,Story,US68 — Vista de reportes operativos,"Como supervisora operativa quiero consultar una vista de reportes con KPIs y breakdown por estado y FEFO para tomar decisiones rápidas sobre stock y entregas.",EP11,High,5,Diego,In Progress
NX-304,Story,US69 — Disclosure transparente de datos mock TB1 y API readiness,"Como usuaria del webapp TB1 quiero ver una disclosure clara de que los datos son mock y que la API real está planeada para TB2 para no confundir la versión TB1 con producción.",EP14,Medium,2,César,In Progress
NX-310,Task,Landing CTAs hacia rutas hash del webapp,"Alinear botones del landing público con las rutas hash del webapp en GitHub Pages.",EP06,High,2,Diego,In Progress
NX-311,Task,Website: favicon legal y wording roadmap TB1,"Aplicar favicon, copy de roadmap TB1 y enlaces legales en el sitio público.",EP06,Medium,2,César,In Progress
NX-312,Task,Webapp: hash routing para GitHub Pages,"Configurar Vue Router en modo hash y base path para evitar 404 en deep links.",EP07,Highest,3,Gerard,In Progress
NX-313,Task,Integración del logo oficial Nexa en webapp,"Reemplazar logos placeholder por el logo oficial Nexa en layouts auth/ops/portal.",EP07,Medium,1,Joaquín,In Progress
NX-314,Task,Disclaimer de datos mock y backend planeado,"Mostrar mensaje de disclaimer en superficies relevantes del webapp TB1.",EP14,Medium,1,César,In Progress
NX-315,Task,Redirección por rol y guard de scope forbidden,"Implementar redirect post-login según rol y guard global de scope con estado forbidden.",EP10,High,3,Gerard,In Progress
NX-316,Task,Modal de detalle de producto en operación,"Habilitar modal de ficha de producto desde catálogo de operación y portal.",EP09,Medium,2,Joaquín,In Progress
NX-317,Task,Checkout y pantalla de éxito en portal B2B,"Cerrar el bucle B2B con checkout que persiste el pedido y pantalla de éxito.",EP08,High,5,Diego,In Progress
NX-318,Task,Condiciones comerciales en pedido asistido,"Mostrar lista de precios crédito y descuentos en el flujo de pedido asistido.",EP09,High,3,Diego,In Progress
NX-319,Task,Drawer de detalle de lote FEFO,"Drawer de detalle de lote con historial de movimientos en módulo de inventario.",EP09,Medium,3,Joaquín,In Progress
NX-320,Task,Drawer de ficha de cliente comercial,"Drawer con ficha completa del cliente desde el módulo de clientes.",EP09,Medium,3,Gino,In Progress
NX-321,Task,Vista de reportes operativos,"Pantalla de reportes con KPIs operativos y breakdown FEFO.",EP11,High,5,Diego,In Progress
NX-322,Task,Sincronización de estado de pedido en despacho/POD,"Actualizar estado de pedido en eventos de ruta y entrega; corregir botón muerto en detalle.",EP09,High,3,Gerard,In Progress
NX-323,Task,Aislamiento de datos del portal por clientId,"Filtrar órdenes y catálogo por clientId del usuario autenticado en el portal.",EP08,High,3,Gerard,In Progress
NX-324,Task,Evidencia de screenshots/wireframes del webapp,"Mover assets nuevos al árbol del reporte y referenciarlos en §4.4 y §5.2.2.5.",EP12,High,2,Gino,In Progress
NX-325,Task,Evidencia de desarrollo Sprint 2,"Construir tablas de commits para los tres repositorios verificadas con git log.",EP13,High,2,Diego,In Progress
NX-326,Task,Evidencia de despliegue Sprint 2,"Documentar URLs desplegadas y rutas hash probadas; dejar TODO para capturas.",EP12,High,2,Gerard,In Progress
NX-327,Task,Evidencia de colaboración Sprint 2,"Redactar §5.2.2.8 con distribución de aportes y dejar TODO para Insights/Jira.",EP13,Medium,2,César,In Progress
NX-328,Task,Actualización del Product Backlog TB1,"Reflejar Sprint 2 y backlog futuro TB2 en §3.3.",EP13,Medium,1,Diego,In Progress
NX-329,Task,Refinamiento de escenarios de User Stories,"Refinar US existentes y agregar US65-US69 en §3.1.",EP13,Medium,2,Joaquín,In Progress
```

## 8. Backlog futuro AV2 / TB2 (no entra al Sprint 2)

| Tema | Justificación de exclusión TB1 |
| :--- | :--- |
| Métodos de pago en checkout B2B | Requiere pasarela real, fuera de TB1 |
| Direcciones de entrega guardadas | Requiere persistencia y modelo de cliente extendido |
| Repetir pedido / borrador de pedido | Depende de persistencia real |
| Detalle de orden en portal | Depende de persistencia y escenarios reales de POD |
| Perfil y preferencias avanzadas | Fuera del alcance TB1 |
| Notificaciones por preferencia | No entra a TB1 |
| Dashboards por rol más profundos | Roadmap TB2 |
| Reportes con cortes por periodo y exportación | Roadmap TB2 |
| Pase completo de i18n en webapp | Iteración posterior |
| API REST ASP.NET Core + Swagger/OpenAPI | TB2 |
| Persistencia MySQL | TB2 |
| Autenticación real + recuperación de acceso | TB2 |
| POD con upload de archivo | TB2 |
| Pasarela de pago | TB2 |
| Sensores IoT + ETA real | TB2 |

> **Nota de proceso:** este anexo es la fuente de verdad para crear/actualizar issues en Jira durante TB1. Si la API de Jira no está disponible al momento de la importación, las tablas anteriores son operables manualmente; al cierre del sprint, mover a estado correspondiente solo si el equipo lo decide explícitamente (no marcar Done por defecto).

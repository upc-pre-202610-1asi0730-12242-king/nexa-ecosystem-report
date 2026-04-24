# Capítulo III: Requirements Specification

## 3.1. User Stories

<p align="justify">
El backlog de Nexa se organiza en dos capas complementarias. La primera cubre el sitio público multipágina que comunica la propuesta de valor, enruta por segmentos comerciales y capta oportunidades mediante el landing page. La segunda cubre el producto transaccional: catálogo, captura asistida del pedido, portal B2B, condiciones comerciales, inventario y seguimiento hasta la entrega. Todas las historias se redactan con actores explícitos, estimación en puntos de historia (escala Fibonacci) y criterios de aceptación verificables en formato Gherkin, alineados con los arquetipos canónicos del proyecto: Valeria, Hilda y Pedro.
</p>

<p align="justify">
La especificación no parte de una colección arbitraria de funcionalidades. Cada épica se deriva de la evidencia levantada en el Capítulo 2 y traduce dolores observados en comportamientos verificables. Por ello, el frente público se orienta a comunicar con claridad el problema, el alcance y la propuesta de valor; el núcleo transaccional se centra en pedido, catálogo, condiciones comerciales, inventario y seguimiento; y las historias técnicas del API se tratan como habilitadores de integración coherentes con el dominio, no como un bloque desconectado del valor de negocio.
</p>

<p align="justify">
La lógica de actores se mantiene estable respecto del capítulo anterior. Los arquetipos canónicos continúan siendo Valeria, Hilda y Pedro, y todas las historias se sostienen sobre esos tres segmentos del MVP. Las reglas de inventario, stock, lotes, crédito y cierre se incorporan como parte del dominio, no como una segmentación adicional.
</p>

*Trazabilidad de épicas con actores, evidencia y propósito funcional*

<table>
<thead>
<tr>
<th>Bloque</th>
<th>Épicas</th>
<th>Actor o arquetipo dominante</th>
<th>Base empírica del Capítulo 2</th>
<th>Propósito dentro del MVP</th>
</tr>
</thead>
<tbody>
<tr>
<td>Sitio público y conversión</td>
<td>EP01-EP06</td>
<td>Visitante comercial y prospectos cercanos a S1 y S2</td>
<td>Análisis competitivo, problem statements y necesidad de comunicar foco, confianza y forma de adopción sin sobredimensionar el roadmap.</td>
<td>Validar comprensión del producto, posicionamiento inicial y captación de oportunidades comerciales.</td>
</tr>
<tr>
<td>Captura y compra del pedido</td>
<td>EP07-EP09</td>
<td>Valeria y Hilda</td>
<td>Entrevistas sobre pedidos por WhatsApp, validaciones manuales, incertidumbre de stock y dependencia del canal informal.</td>
<td>Digitalizar el flujo principal del pedido desde la captura asistida hasta el autoservicio B2B.</td>
</tr>
<tr>
<td>Seguimiento, inventario y cierre</td>
<td>EP10-EP11</td>
<td>Hilda, Pedro y supervisión operativa</td>
<td>Needfinding, journey maps y EventStorming sobre falta de ETA, visibilidad parcial del despacho y necesidad de evidencia de cierre.</td>
<td>Dar predictibilidad al despacho, ordenar el stock y cerrar la trazabilidad del pedido.</td>
</tr>
<tr>
<td>Datos comerciales y control de acceso</td>
<td>EP12-EP13</td>
<td>Valeria y roles internos autorizados</td>
<td>Hallazgos sobre mora, crédito, configuración comercial por cliente y separación necesaria entre accesos internos y B2B.</td>
<td>Sostener reglas mínimas para que el flujo principal sea operable y consistente.</td>
</tr>
<tr>
<td>Servicios de integración</td>
<td>EP14</td>
<td>Aplicaciones cliente y capa de integración</td>
<td>Arquitectura derivada del dominio y necesidad de compartir reglas entre captura asistida, portal B2B y seguimiento.</td>
<td>Exponer contratos técnicos coherentes con el dominio para soportar el MVP sin duplicar lógica.</td>
</tr>
</tbody>
</table>

*User Stories — Épicas, historias, criterios de aceptación y estimación*

<table>
<thead>
<tr>
<th>Epic / Story ID</th>
<th>Título</th>
<th>Descripción</th>
<th>Criterios de Aceptación (Gherkin)</th>
<th>SP</th>
<th>Relacionado con (Epic ID)</th>
</tr>
</thead>
<tbody>

<!-- ═══════════════════════════════════════════════════════════ EP01 -->
<tr>
<td><strong>EP01</strong></td>
<td><strong>Navigation &amp; Localization</strong></td>
<td>Agrupa las historias del sistema de navegación público, el selector de idioma y la orientación general del visitante entre páginas visibles del sitio.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US01</td>
<td>Navegar entre páginas públicas desde el navbar</td>
<td>Como visitante del sitio, quiero navegar entre Home, Platform, Company y FAQ desde el navbar, para revisar el contenido público de Nexa sin fricción ni callejones sin salida.</td>
<td>
<strong>Escenario 1 — Navegación exitosa:</strong><br>
Dado que el visitante se encuentra en cualquier página pública,<br>
cuando selecciona una opción del navbar principal,<br>
entonces el sistema carga la página correspondiente sin errores de ruta.<br><br>
<strong>Escenario 2 — Ruta activa resaltada:</strong><br>
Dado que la nueva página terminó de cargarse,<br>
cuando el visitante revisa el navbar,<br>
entonces el sistema destaca visualmente la opción que corresponde a la ubicación actual.<br><br>
<strong>Escenario 3 — Navbar visible en dispositivo móvil:</strong><br>
Dado que el visitante accede desde un dispositivo con pantalla pequeña,<br>
cuando abre el menú de navegación en versión responsive,<br>
entonces el sistema muestra las mismas opciones disponibles en versión escritorio sin perder ningún enlace.
</td>
<td>2</td>
<td>EP01</td>
</tr>

<tr>
<td>US02</td>
<td>Abrir el dropdown de Solutions y elegir un segmento</td>
<td>Como visitante del sitio, quiero abrir el menú Solutions y escoger un segmento comercial, para acceder rápidamente a la propuesta más cercana a mi tipo de negocio.</td>
<td>
<strong>Escenario 1 — Menú desplegado correctamente:</strong><br>
Dado que el visitante presiona el control Solutions,<br>
cuando el menú se despliega,<br>
entonces el sistema muestra las opciones: Distribuidores refrigerados, Importadores y mayoristas, y Operadores de cámaras frías.<br><br>
<strong>Escenario 2 — Navegación a segmento elegido:</strong><br>
Dado que el visitante selecciona una opción del dropdown,<br>
cuando confirma la acción,<br>
entonces el sistema abre el contenido público del segmento elegido sin redirigir a una ruta rota.<br><br>
<strong>Escenario 3 — Cierre del dropdown sin selección:</strong><br>
Dado que el dropdown de Solutions está abierto,<br>
cuando el visitante hace clic fuera del menú o presiona Escape,<br>
entonces el sistema cierra el dropdown sin navegar ni alterar la página actual.
</td>
<td>2</td>
<td>EP01</td>
</tr>

<tr>
<td>US03</td>
<td>Cambiar entre inglés y español sin perder contexto</td>
<td>Como visitante bilingüe, quiero cambiar el idioma del sitio entre EN y ES, para revisar el mismo contenido público en el idioma que prefiera sin volver al inicio.</td>
<td>
<strong>Escenario 1 — Cambio de idioma exitoso:</strong><br>
Dado que el visitante está en una página pública,<br>
cuando cambia el selector de idioma,<br>
entonces el sistema mantiene la misma página y muestra todos los textos en el idioma seleccionado.<br><br>
<strong>Escenario 2 — Conservación del contexto de navegación:</strong><br>
Dado que el visitante se encuentra dentro de una sección o categoría visible,<br>
cuando cambia de idioma,<br>
entonces el sistema conserva la misma sección activa y no redirige al inicio del sitio.<br><br>
<strong>Escenario 3 — Persistencia del idioma entre páginas:</strong><br>
Dado que el visitante cambió el idioma a ES,<br>
cuando navega a otra página pública del sitio,<br>
entonces el sistema mantiene el idioma seleccionado sin revertirlo al predeterminado.
</td>
<td>3</td>
<td>EP01</td>
</tr>

<tr>
<td>US04</td>
<td>Usar navegación secundaria desde el footer</td>
<td>Como visitante del sitio, quiero usar los enlaces del footer, para moverme a contenido adicional o a puntos de contacto desde el final de cualquier página.</td>
<td>
<strong>Escenario 1 — Enlace del footer funciona:</strong><br>
Dado que el visitante llegó al footer de una página pública,<br>
cuando selecciona un enlace visible,<br>
entonces el sistema navega a la página o sección pública existente correspondiente.<br><br>
<strong>Escenario 2 — Acceso a contacto desde el footer:</strong><br>
Dado que el visitante utiliza un acceso de contacto desde el footer,<br>
cuando se ejecuta la navegación,<br>
entonces el sistema evita enlaces rotos y mantiene una ruta válida hacia el destino.<br><br>
<strong>Escenario 3 — Footer accesible en móvil:</strong><br>
Dado que el visitante accede al footer en un dispositivo pequeño,<br>
cuando revisa los enlaces disponibles,<br>
entonces el sistema presenta los enlaces en una disposición legible y táctilmente accesible.
</td>
<td>1</td>
<td>EP01</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP02 -->
<tr>
<td><strong>EP02</strong></td>
<td><strong>Home Value &amp; Conversion</strong></td>
<td>Agrupa las historias relacionadas con la Home del landing page: hero, propuesta de valor, capacidades visibles y llamados a la acción orientados a conversión.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US05</td>
<td>Ver la propuesta principal de Nexa desde el hero</td>
<td>Como visitante del segmento distribuidor refrigerado, quiero ver la propuesta principal de Nexa desde la Home, para entender rápidamente qué problema operativo resuelve y si aplica a mi negocio.</td>
<td>
<strong>Escenario 1 — Hero carga con propuesta visible:</strong><br>
Dado que el visitante accede a Home,<br>
cuando carga el hero principal,<br>
entonces el sistema muestra una propuesta de valor, un texto de apoyo y al menos un llamado a la acción visible sin requerir scroll.<br><br>
<strong>Escenario 2 — Sin requisito de autenticación:</strong><br>
Dado que el visitante ingresa por primera vez al sitio,<br>
cuando revisa el hero,<br>
entonces el sistema comunica el valor sin exigir autenticación ni registro previo.<br><br>
<strong>Escenario 3 — Hero visible en dispositivo móvil:</strong><br>
Dado que el visitante accede desde un teléfono móvil,<br>
cuando carga la página Home,<br>
entonces el sistema muestra el hero con propuesta de valor y CTA legibles sin cortar ni superponer texto sobre imágenes.
</td>
<td>2</td>
<td>EP02</td>
</tr>

<tr>
<td>US06</td>
<td>Comprender el problema operativo que Nexa busca corregir</td>
<td>Como visitante del sitio, quiero entender el problema operativo que Nexa busca reemplazar, para comparar la situación actual fragmentada con el valor propuesto.</td>
<td>
<strong>Escenario 1 — Sección del problema visible:</strong><br>
Dado que el visitante revisa la Home,<br>
cuando llega a la sección comparativa del problema actual,<br>
entonces el sistema describe la fragmentación entre mensajes informales, stock no confiable y seguimiento del despacho como punto de partida del relato.<br><br>
<strong>Escenario 2 — Dominio específico de cadena de frío:</strong><br>
Dado que el visitante analiza el contenido de esta sección,<br>
cuando lo contrasta con la propuesta del producto,<br>
entonces el sistema evita prometer soluciones ajenas al dominio de la cadena de frío B2B.<br><br>
<strong>Escenario 3 — Sección diferenciada del roadmap:</strong><br>
Dado que la sección del problema menciona el flujo actual,<br>
cuando el visitante la compara con las capacidades comunicadas,<br>
entonces el sistema no presenta funcionalidades del roadmap como parte del problema ya resuelto.
</td>
<td>2</td>
<td>EP02</td>
</tr>

<tr>
<td>US07</td>
<td>Visualizar capacidades clave del producto desde la Home</td>
<td>Como visitante del sitio, quiero visualizar las capacidades centrales de Nexa desde la Home, para relacionarlas con mis problemas concretos de operación antes de profundizar.</td>
<td>
<strong>Escenario 1 — Capacidades presentes y visibles:</strong><br>
Dado que el visitante revisa la sección de capacidades de la Home,<br>
cuando consulta las tarjetas o bloques visibles,<br>
entonces el sistema presenta catálogo, inventario, pedidos, seguimiento y trazabilidad como capacidades coordinadas.<br><br>
<strong>Escenario 2 — Capacidades asociadas a dolores reales:</strong><br>
Dado que el visitante lee la explicación de cada capacidad,<br>
cuando contrasta la información,<br>
entonces el sistema asocia cada capacidad a un dolor operativo concreto y no a un beneficio genérico de marketing.<br><br>
<strong>Escenario 3 — CTA de exploración desde capacidades:</strong><br>
Dado que el visitante revisó la sección de capacidades y quiere saber más,<br>
cuando busca un acceso para profundizar,<br>
entonces el sistema ofrece al menos un enlace o CTA que lo dirige a Platform o al formulario de demo.
</td>
<td>2</td>
<td>EP02</td>
</tr>

<tr>
<td>US08</td>
<td>Solicitar una demo desde la Home</td>
<td>Como visitante del segmento distribuidor refrigerado, quiero iniciar una solicitud de demo desde la Home, para abrir una conversación comercial sobre Nexa sin tener que buscar el formulario.</td>
<td>
<strong>Escenario 1 — CTA de demo redirige correctamente:</strong><br>
Dado que el visitante hace clic en un CTA de demo desde la Home,<br>
cuando se ejecuta la acción,<br>
entonces el sistema lo dirige al flujo o formulario público de contacto sin intermediarios.<br><br>
<strong>Escenario 2 — Sin requisito de cuenta previa:</strong><br>
Dado que el visitante decide solicitar una demo desde la página inicial,<br>
cuando inicia el flujo,<br>
entonces el sistema no le exige crear una cuenta ni autenticarse para continuar.<br><br>
<strong>Escenario 3 — CTA accesible sin scroll completo:</strong><br>
Dado que el visitante llega a la Home por primera vez,<br>
cuando observa la pantalla sin hacer scroll,<br>
entonces el sistema muestra al menos un CTA de demo visible dentro del área initial de la página.
</td>
<td>2</td>
<td>EP02</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP03 -->
<tr>
<td><strong>EP03</strong></td>
<td><strong>Platform Explainer</strong></td>
<td>Agrupa las historias de la página Platform, orientadas a explicar módulos visibles, lógica operativa del producto y relación entre MVP y expansión futura.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US09</td>
<td>Revisar los módulos visibles de la página Platform</td>
<td>Como visitante del sitio, quiero revisar los módulos visibles de la página Platform, para entender el alcance funcional concreto que Nexa comunica al mercado.</td>
<td>
<strong>Escenario 1 — Módulos presentes en Platform:</strong><br>
Dado que el visitante ingresa a Platform,<br>
cuando revisa la página,<br>
entonces el sistema presenta los módulos Product Catalog, Live Inventory, B2B Orders, Temperature &amp; Delivery y Full Traceability de forma identificable.<br><br>
<strong>Escenario 2 — Descripción conectada a necesidades:</strong><br>
Dado que el visitante consulta cada módulo,<br>
cuando lee su descripción,<br>
entonces el sistema lo relaciona con una necesidad operativa concreta y no solo con un nombre comercial genérico.<br><br>
<strong>Escenario 3 — Enlace a demo desde módulos:</strong><br>
Dado que el visitante terminó de revisar los módulos y quiere avanzar,<br>
cuando busca un acceso de conversión,<br>
entonces el sistema ofrece al menos un CTA visible en la página Platform que dirige hacia la demo o el contacto.
</td>
<td>2</td>
<td>EP03</td>
</tr>

<tr>
<td>US10</td>
<td>Comprender cómo cambia la operación con la plataforma</td>
<td>Como visitante del sitio, quiero comprender cómo cambia la operación diaria con Nexa, para evaluar si el producto encaja con mi flujo real de trabajo antes de solicitar información.</td>
<td>
<strong>Escenario 1 — Narrativa de cambio operativo visible:</strong><br>
Dado que el visitante revisa la sección de cambio operativo de Platform,<br>
cuando lee el contenido,<br>
entonces el sistema explica cómo mejora la coordinación entre pedido, stock y entrega con la plataforma.<br><br>
<strong>Escenario 2 — Comparación con el flujo manual:</strong><br>
Dado que el visitante compara la propuesta con el flujo manual tradicional,<br>
cuando termina la lectura,<br>
entonces el sistema deja claro qué tareas se simplifican y cuál es el beneficio operativo esperado.<br><br>
<strong>Escenario 3 — Sin promesas fuera del MVP:</strong><br>
Dado que la narrativa de cambio menciona mejoras en la operación,<br>
cuando el visitante contrasta el contenido con los módulos descritos,<br>
entonces el sistema no incluye beneficios de funcionalidades que aún no forman parte del alcance actual.
</td>
<td>2</td>
<td>EP03</td>
</tr>

<tr>
<td>US11</td>
<td>Distinguir entre capacidades del MVP y expansión futura</td>
<td>Como visitante del sitio, quiero distinguir entre lo que Nexa comunica como alcance actual y lo que comunica como evolución futura, para no confundir el producto disponible con el roadmap.</td>
<td>
<strong>Escenario 1 — Capacidades futuras contextualizadas:</strong><br>
Dado que la página Platform o Company menciona capacidades avanzadas,<br>
cuando el visitante las revisa,<br>
entonces el sistema las contextualiza explícitamente como expansión futura o roadmap previsto.<br><br>
<strong>Escenario 2 — Consistencia entre MVP y visión:</strong><br>
Dado que el visitante compara módulos presentes y proyección futura,<br>
cuando termina la revisión,<br>
entonces el sistema mantiene consistencia entre lo visible hoy y la visión del producto sin mezclar estados.<br><br>
<strong>Escenario 3 — Etiquetado visual diferenciador:</strong><br>
Dado que el visitante analiza la lista de capacidades,<br>
cuando encuentra una funcionalidad futura junto a una del MVP,<br>
entonces el sistema utiliza algún indicador visual o textual que permite diferenciarlas claramente.
</td>
<td>2</td>
<td>EP03</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP04 -->
<tr>
<td><strong>EP04</strong></td>
<td><strong>Solutions &amp; Segment Routing</strong></td>
<td>Agrupa las historias del hub de soluciones y de las narrativas segmentadas del sitio público para distribuidores, importadores y operadores de cámaras frías.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US12</td>
<td>Explorar el hub de Solutions</td>
<td>Como visitante del sitio, quiero explorar el hub de Solutions, para identificar el segmento comercial con el que más coincide mi tipo de operación antes de leer una propuesta específica.</td>
<td>
<strong>Escenario 1 — Hub con tres rutas diferenciadas:</strong><br>
Dado que el visitante abre la sección o página Solutions,<br>
cuando revisa el contenido disponible,<br>
entonces el sistema muestra al menos tres rutas públicas de solución diferenciadas por segmento.<br><br>
<strong>Escenario 2 — Navegación coherente al segmento:</strong><br>
Dado que el visitante selecciona una tarjeta o ruta,<br>
cuando navega al siguiente contenido,<br>
entonces el sistema lo mantiene dentro de una propuesta coherente con el segmento elegido.<br><br>
<strong>Escenario 3 — Hub accesible desde el navbar:</strong><br>
Dado que el visitante está en cualquier página pública,<br>
cuando accede al hub de Solutions mediante el navbar,<br>
entonces el sistema carga la página de Solutions sin requerir scroll o pasos adicionales.
</td>
<td>2</td>
<td>EP04</td>
</tr>

<tr>
<td>US13</td>
<td>Ver la propuesta para distribuidores refrigerados</td>
<td>Como visitante del segmento distribuidor refrigerado, quiero ver una propuesta específica para mi operación, para evaluar si Nexa resuelve mis problemas principales de coordinación y pedidos.</td>
<td>
<strong>Escenario 1 — Propuesta del segmento visible:</strong><br>
Dado que el visitante accede al contenido para distribuidores refrigerados,<br>
cuando lo revisa,<br>
entonces el sistema comunica catálogo, condiciones comerciales, captura del pedido, inventario y seguimiento como parte del valor principal.<br><br>
<strong>Escenario 2 — Distribuidores como frente principal:</strong><br>
Dado que el visitante compara esta propuesta con el resto del sitio,<br>
cuando finaliza la lectura,<br>
entonces el sistema mantiene a distribuidores refrigerados como frente comercial principal y no como segmento secundario.<br><br>
<strong>Escenario 3 — CTA de conversión en la página:</strong><br>
Dado que el visitante distribuidor terminó de leer la propuesta,<br>
cuando busca cómo avanzar,<br>
entonces el sistema ofrece un CTA visible para solicitar demo o iniciar contacto comercial.
</td>
<td>2</td>
<td>EP04</td>
</tr>

<tr>
<td>US14</td>
<td>Ver la propuesta para importadores y mayoristas</td>
<td>Como visitante del segmento importador o mayorista, quiero ver una propuesta conectada con mi realidad operativa, para entender si Nexa puede aportar visibilidad y coordinación a mi tipo de empresa.</td>
<td>
<strong>Escenario 1 — Narrativa alineada al segmento:</strong><br>
Dado que el visitante accede al contenido para importadores y mayoristas,<br>
cuando lo revisa,<br>
entonces el sistema presenta una narrativa alineada con coordinación operativa, stock y abastecimiento.<br><br>
<strong>Escenario 2 — Segmento comunicado como adyacente:</strong><br>
Dado que el visitante compara esta propuesta con el foco principal del producto,<br>
cuando termina la lectura,<br>
entonces el sistema la comunica como segmento adyacente y no como contradicción del enfoque principal en distribuidores refrigerados.<br><br>
<strong>Escenario 3 — Página carga sin error en ambos idiomas:</strong><br>
Dado que el visitante cambió el idioma a español antes de acceder a esta página,<br>
cuando carga el contenido de importadores y mayoristas,<br>
entonces el sistema muestra los textos en el idioma seleccionado sin mostrar cadenas en el idioma opuesto.
</td>
<td>2</td>
<td>EP04</td>
</tr>

<tr>
<td>US15</td>
<td>Ver la propuesta para operadores de cámaras frías</td>
<td>Como visitante del segmento operador de cámaras frías, quiero ver la propuesta de Nexa para almacenamiento refrigerado, para evaluar si aplica a mi contexto de control de inventario y trazabilidad.</td>
<td>
<strong>Escenario 1 — Propuesta del segmento presente:</strong><br>
Dado que el visitante revisa el contenido para operadores de cámaras frías,<br>
cuando lo consulta,<br>
entonces el sistema resalta control de inventario, trazabilidad y visibilidad de operación refrigerada como valor principal.<br><br>
<strong>Escenario 2 — Relación con el dominio de cadena de frío:</strong><br>
Dado que el visitante compara esta narrativa con el dominio del producto,<br>
cuando finaliza la lectura,<br>
entonces el sistema mantiene la relación con la cadena de frío y no promete soluciones ajenas al dominio central.<br><br>
<strong>Escenario 3 — Segmento comunicado como expansión estratégica:</strong><br>
Dado que el visitante compara este segmento con el de distribuidores refrigerados,<br>
cuando contrasta los dos contenidos,<br>
entonces el sistema comunica cámaras frías como extensión estratégica del dominio y no como foco equivalente.
</td>
<td>2</td>
<td>EP04</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP05 -->
<tr>
<td><strong>EP05</strong></td>
<td><strong>Company, Trust &amp; Contact</strong></td>
<td>Agrupa las historias relacionadas con la narrativa institucional de la empresa, la promesa de acompañamiento humano y el formulario de contacto comercial.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US16</td>
<td>Conocer la narrativa de Company y el propósito del producto</td>
<td>Como visitante del sitio, quiero conocer la narrativa de Company, para entender quién impulsa Nexa, por qué existe el producto y en qué principios se apoya la propuesta de servicio.</td>
<td>
<strong>Escenario 1 — Narrativa institucional visible:</strong><br>
Dado que el visitante accede a Company,<br>
cuando revisa su contenido,<br>
entonces el sistema comunica el propósito del producto, los principios del servicio y la relación con la operación del cliente.<br><br>
<strong>Escenario 2 — Señales de confianza presentes:</strong><br>
Dado que el visitante busca señales de confianza en Company,<br>
cuando termina la lectura,<br>
entonces el sistema refuerza consistencia, acompañamiento y continuidad operativa como parte del relato institucional.<br><br>
<strong>Escenario 3 — Página disponible en ambos idiomas:</strong><br>
Dado que el visitante cambió el idioma del sitio,<br>
cuando accede a Company,<br>
entonces el sistema muestra el contenido de la página en el idioma activo sin mostrar textos en el idioma opuesto.
</td>
<td>2</td>
<td>EP05</td>
</tr>

<tr>
<td>US17</td>
<td>Identificar soporte humano e implementación acompañada</td>
<td>Como visitante del sitio, quiero identificar cómo funciona el soporte humano y la implementación acompañada, para saber si Nexa complementa la relación comercial en lugar de reemplazarla completamente.</td>
<td>
<strong>Escenario 1 — Soporte humano comunicado:</strong><br>
Dado que el visitante revisa Company o bloques de confianza del sitio,<br>
cuando consulta la información de soporte,<br>
entonces el sistema deja claro que existe acompañamiento humano para implementación o dudas clave.<br><br>
<strong>Escenario 2 — Soporte como complemento tecnológico:</strong><br>
Dado que el visitante compara soporte y tecnología,<br>
cuando finaliza la lectura,<br>
entonces el sistema presenta el soporte humano como complemento de la plataforma y no como sustituto de ella.<br><br>
<strong>Escenario 3 — Sin promesas de disponibilidad no verificables:</strong><br>
Dado que el visitante analiza la promesa de soporte,<br>
cuando contrasta el contenido,<br>
entonces el sistema no promete disponibilidad 24/7 ni tiempos de respuesta específicos que no puedan garantizarse en la fase actual del producto.
</td>
<td>2</td>
<td>EP05</td>
</tr>

<tr>
<td>US18</td>
<td>Enviar solicitud de demo y contacto comercial</td>
<td>Como visitante bilingüe del sitio, quiero enviar mis datos a través del formulario principal, para abrir una línea de conversación oficial sobre la implementación de Nexa en mi negocio.</td>
<td>
<strong>Escenario 1 — Registro exitoso de prospecto:</strong><br>
Dado que el visitante completó <code>work email</code> y <code>operation details</code>,<br>
 cuando el sistema procesa el envío,<br>
 entonces registra la solicitud en la bandeja comercial definida para leads y muestra una confirmación visible de recepción.<br><br>
<strong>Escenario 2 — Alerta de campos obligatorios:</strong><br>
Dado que el formulario se intenta enviar sin la información mínima,<br>
 cuando se valida la acción,<br>
 entonces el sistema resalta los campos faltantes sin borrar el progreso actual del usuario.<br><br>
<strong>Escenario 3 — Sincronización multi-idioma del formulario:</strong><br>
Dado que el sitio está en inglés,<br>
 cuando el visitante carga el formulario,<br>
 entonces el sistema presenta etiquetas y validaciones en inglés, manteniendo la coherencia durante todo el flujo.
</td>
<td>3</td>
<td>EP05</td>
</tr>

<tr>
<td>US19</td>
<td>Validación inmediata y feedback del formulario</td>
<td>Como visitante del sitio, quiero recibir validaciones instantáneas mientras escribo, para corregir errores de formato (ej: email) antes de intentar enviar el formulario.</td>
<td>
<strong>Escenario 1 — Validación de máscara de correo:</strong><br>
Dado que el visitante ingresa un correo sin formato corporativo,<br>
 cuando el foco sale del campo,<br>
 entonces el sistema muestra una advertencia visual sobre la estructura necesaria.<br><br>
<strong>Escenario 2 — Limpieza de datos no válidos:</strong><br>
Dado que el sistema detecta caracteres prohibidos en campos de texto técnico,<br>
 cuando se procesa la entrada,<br>
 entonces filtra o alerta sobre el contenido inválido para asegurar la integridad del contacto.<br><br>
<strong>Escenario 3 — Confirmación visual persistente:</strong><br>
Dado que el envío fue exitoso,<br>
 cuando el visitante navega por el resto del sitio en la misma sesión,<br>
 entonces el sistema conserva una confirmación visible o bloquea un reenvío inmediato no intencional dentro de la misma sesión.
</td>
<td>3</td>
<td>EP05</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP06 -->
<tr>
<td><strong>EP06</strong></td>
<td><strong>FAQ, Support &amp; Public Portal Access</strong></td>
<td>Agrupa las historias del FAQ categorizado, el panel flotante de soporte y la orientación pública del acceso al portal de clientes.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US20</td>
<td>Navegar el FAQ por categorías</td>
<td>Como visitante del sitio, quiero navegar el FAQ por categorías predefinidas, para revisar respuestas según el tipo específico de duda sin tener que leer todo el documento.</td>
<td>
<strong>Escenario 1 — Categorías del FAQ visibles:</strong><br>
Dado que el visitante accede a FAQ,<br>
cuando revisa la navegación visible,<br>
entonces el sistema muestra las categorías: Getting started, The platform, Implementation, Security &amp; data y Pricing &amp; access.<br><br>
<strong>Escenario 2 — Ancla a la categoría elegida:</strong><br>
Dado que el visitante selecciona una categoría,<br>
cuando se ejecuta la navegación,<br>
entonces el sistema lo lleva directamente a la sección correspondiente dentro de la misma página sin recargar.<br><br>
<strong>Escenario 3 — FAQ sin dependencias externas:</strong><br>
Dado que el visitante accede a FAQ desde cualquier dispositivo,<br>
 cuando la página carga,<br>
entonces el sistema muestra el contenido completo de las categorías de forma consistente y accesible dentro de la misma experiencia pública.
</td>
<td>2</td>
<td>EP06</td>
</tr>

<tr>
<td>US21</td>
<td>Expandir y colapsar respuestas dentro del FAQ</td>
<td>Como visitante del sitio, quiero expandir y colapsar preguntas dentro del FAQ, para leer una respuesta específica sin abandonar la página ni perder la vista del resto.</td>
<td>
<strong>Escenario 1 — Expansión de pregunta:</strong><br>
Dado que el visitante se encuentra en FAQ,<br>
cuando hace clic sobre una pregunta disponible,<br>
entonces el sistema muestra la respuesta asociada dentro de la misma página sin redirigir ni recargar.<br><br>
<strong>Escenario 2 — Lista de preguntas siempre visible:</strong><br>
Dado que el visitante no ha expandido ninguna pregunta,<br>
cuando revisa la página,<br>
entonces el sistema mantiene visible la lista completa de preguntas disponibles para exploración.<br><br>
<strong>Escenario 3 — Múltiples preguntas independientes:</strong><br>
Dado que el visitante expande una pregunta,<br>
cuando expande otra pregunta diferente,<br>
entonces el sistema conserva ambas respuestas visibles sin redirigir al usuario ni colapsar contenido de forma inesperada.
</td>
<td>2</td>
<td>EP06</td>
</tr>

<tr>
<td>US22</td>
<td>Abrir el panel flotante de soporte</td>
<td>Como visitante del sitio, quiero abrir el panel flotante de soporte, para acceder rápidamente a opciones de ayuda o contacto sin perder el contexto de la página actual.</td>
<td>
<strong>Escenario 1 — Panel flotante disponible:</strong><br>
Dado que el visitante se encuentra en una página pública con soporte flotante configurado,<br>
cuando activa el panel,<br>
entonces el sistema muestra accesos rápidos a recursos de ayuda o contacto.<br><br>
<strong>Escenario 2 — Cierre sin perder contexto:</strong><br>
Dado que el visitante cierra el panel,<br>
cuando vuelve a la página,<br>
entonces el sistema conserva el contexto de navegación y la posición de scroll en el que se encontraba.<br><br>
<strong>Escenario 3 — Panel accesible desde todas las páginas:</strong><br>
Dado que el visitante está en cualquier página pública del sitio,<br>
cuando busca el botón de soporte flotante,<br>
entonces el sistema lo muestra disponible sin importar la página o la posición de scroll.
</td>
<td>2</td>
<td>EP06</td>
</tr>

<tr>
<td>US23</td>
<td>Intentar ingresar por Log in desde el sitio público</td>
<td>Como visitante del sitio, quiero entender qué ocurre al pulsar Log in, para no perderme ni llegar a una ruta rota si el portal todavía no está disponible.</td>
<td>
<strong>Escenario 1 — Mensaje de portal próximo:</strong><br>
Dado que el visitante presiona el botón Log in,<br>
cuando se ejecuta la acción,<br>
entonces el sistema muestra el mensaje <code>Client portal available soon</code> de forma visible y comprensible.<br><br>
<strong>Escenario 2 — Sin redirección a ruta rota:</strong><br>
Dado que la acción ocurre en el sitio público,<br>
cuando el mensaje aparece,<br>
entonces el sistema evita enviar al visitante a una ruta no funcional o a un error 404.<br><br>
<strong>Escenario 3 — Retorno a la página actual:</strong><br>
Dado que el visitante vio el mensaje de portal próximo,<br>
cuando cierra la notificación o regresa,<br>
entonces el sistema devuelve al visitante a la página pública en la que estaba sin perder su posición.
</td>
<td>1</td>
<td>EP06</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP07 -->
<tr>
<td><strong>EP07</strong></td>
<td><strong>Catalog &amp; Discovery</strong></td>
<td>Agrupa las historias del catálogo B2B, la visibilidad de disponibilidad y la gestión de productos que sostienen la experiencia de consulta y compra.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US24</td>
<td>Consultar catálogo personalizado</td>
<td>Como cliente comercial (Hilda), quiero consultar un catálogo personalizado según mi cuenta, para ver únicamente los productos que puedo comprar con mis condiciones comerciales vigentes.</td>
<td>
<strong>Escenario 1 — Catálogo con productos habilitados:</strong><br>
Dado que el cliente autenticado tiene productos habilitados para su cuenta,<br>
cuando accede al catálogo,<br>
entonces el sistema muestra únicamente los productos publicados y disponibles para su contexto de cliente.<br><br>
<strong>Escenario 2 — Estado vacío explícito:</strong><br>
Dado que no existen productos habilitados para la cuenta del cliente,<br>
cuando ingresa al catálogo,<br>
entonces el sistema muestra un estado vacío descriptivo que explica la situación sin mostrar productos de otras cuentas.<br><br>
<strong>Escenario 3 — Catálogo no muestra productos ocultos o bloqueados:</strong><br>
Dado que existen productos en estado oculto o bloqueado en el sistema,<br>
cuando el cliente consulta su catálogo,<br>
entonces el sistema no los incluye en la vista del cliente, independientemente de si tenía acceso a ellos en el pasado.
</td>
<td>5</td>
<td>EP07</td>
</tr>

<tr>
<td>US25</td>
<td>Buscar productos por nombre o código</td>
<td>Como cliente comercial (Hilda), quiero buscar productos por nombre o código SKU dentro de mi catálogo, para ubicar rápidamente lo que necesito pedir sin navegar toda la lista.</td>
<td>
<strong>Escenario 1 — Búsqueda con coincidencia encontrada:</strong><br>
Dado que el cliente tiene acceso al catálogo y este contiene productos,<br>
cuando ingresa un nombre o código válido en el buscador,<br>
entonces el sistema devuelve las coincidencias dentro de su catálogo habilitado.<br><br>
<strong>Escenario 2 — Búsqueda sin coincidencias:</strong><br>
Dado que el término buscado no coincide con ningún producto habilitado,<br>
cuando el cliente ejecuta la búsqueda,<br>
entonces el sistema muestra un resultado vacío sin exponer productos de otras cuentas.<br><br>
<strong>Escenario 3 — Manejo de caracteres especiales:</strong><br>
Dado que el cliente ingresa una búsqueda con caracteres especiales, espacios múltiples o términos parciales,<br>
cuando el sistema procesa la consulta,<br>
entonces devuelve resultados relevantes o un estado vacío limpio sin producir errores de sistema visibles al usuario.
</td>
<td>3</td>
<td>EP07</td>
</tr>

<tr>
<td>US26</td>
<td>Filtrar el catálogo por categoría y conservación</td>
<td>Como cliente comercial (Hilda), quiero filtrar el catálogo por categoría y tipo de conservación, para explorar la oferta de forma más precisa según mi necesidad de abastecimiento.</td>
<td>
<strong>Escenario 1 — Filtro por categoría aplicado:</strong><br>
Dado que el catálogo contiene productos con clasificaciones configuradas,<br>
cuando el cliente aplica un filtro de categoría o conservación,<br>
entonces el sistema muestra solo los productos habilitados que cumplen esa condición.<br><br>
<strong>Escenario 2 — Combinación de búsqueda y filtros:</strong><br>
Dado que el cliente combina términos de búsqueda con filtros activos,<br>
cuando revisa el resultado,<br>
entonces el sistema conserva únicamente los productos que satisfacen tanto la búsqueda como los filtros simultáneamente.<br><br>
<strong>Escenario 3 — Limpieza de filtros:</strong><br>
Dado que el cliente tiene filtros activos aplicados,<br>
cuando elige limpiar o restablecer los filtros,<br>
entonces el sistema vuelve a mostrar el catálogo completo habilitado para su cuenta.
</td>
<td>3</td>
<td>EP07</td>
</tr>

<tr>
<td>US27</td>
<td>Ver detalle, disponibilidad y ficha técnica del producto</td>
<td>Como cliente comercial (Hilda), quiero ver el detalle completo, la disponibilidad actual y la ficha técnica de un producto, para tomar decisiones de compra con información suficiente y confiable.</td>
<td>
<strong>Escenario 1 — Detalle completo con ficha técnica:</strong><br>
Dado que el producto está publicado y la ficha técnica fue registrada,<br>
cuando el cliente abre su detalle,<br>
entonces el sistema muestra descripción, presentación, estado de disponibilidad, rango térmico y referencia de la ficha técnica.<br><br>
<strong>Escenario 2 — Ficha técnica no disponible:</strong><br>
Dado que el producto está publicado pero la ficha técnica no fue registrada,<br>
cuando el cliente revisa el detalle,<br>
entonces el sistema indica la ausencia del documento sin inventar información ni ocultar el producto.<br><br>
<strong>Escenario 3 — Disponibilidad vigente al momento de consulta:</strong><br>
Dado que el stock del producto cambió desde que el cliente abrió el catálogo,<br>
cuando el cliente consulta el detalle del producto,<br>
entonces el sistema muestra el estado de disponibilidad vigente al momento de abrir el detalle del producto.
</td>
<td>3</td>
<td>EP07</td>
</tr>

<tr>
<td>US28</td>
<td>Publicar, ocultar y mantener productos del catálogo</td>
<td>Como supervisora comercial autorizada, quiero publicar, ocultar y actualizar productos del catálogo, para controlar con precisión qué ve el cliente y con qué información está disponible en cada momento.</td>
<td>
<strong>Escenario 1 — Publicación exitosa del producto:</strong><br>
Dado que el producto existe con información mínima requerida y la supervisora lo marca como publicado,<br>
cuando guarda el cambio,<br>
entonces el sistema lo deja disponible en el catálogo de las cuentas habilitadas en la siguiente consulta válida del catálogo.<br><br>
<strong>Escenario 2 — Ocultamiento del producto:</strong><br>
Dado que la supervisora marca un producto como oculto,<br>
cuando el cambio se guarda,<br>
entonces el sistema lo retira del catálogo del cliente mientras lo mantiene visible en la gestión interna.<br><br>
<strong>Escenario 3 — Actualización de información sin afectar pedidos en curso:</strong><br>
Dado que un producto tiene pedidos activos en estado <code>submitted</code> o <code>confirmed</code>,<br>
cuando la supervisora actualiza información del producto en catálogo,<br>
entonces el sistema aplica el cambio al catálogo sin alterar las líneas ya comprometidas en pedidos existentes.
</td>
<td>5</td>
<td>EP07</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP08 -->
<tr>
<td><strong>EP08</strong></td>
<td><strong>Assisted Order Capture</strong></td>
<td>Agrupa las historias del flujo asistido de captura de pedidos para coordinación comercial, incluyendo identificación del cliente, registro en campo y alertas de validación previas al envío.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US29</td>
<td>Crear un pedido asistido para un cliente</td>
<td>Como coordinadora comercial (Valeria), quiero crear un pedido asistido para un cliente, para registrar su solicitud dentro de un flujo estructurado sin depender de canales informales.</td>
<td>
<strong>Escenario 1 — Creación exitosa del borrador:</strong><br>
Dado que la coordinadora tiene acceso interno y seleccionó una cuenta de cliente,<br>
cuando inicia una captura asistida,<br>
entonces el sistema crea un pedido en estado <code>draft</code> asociado a la cuenta elegida con un identificador único.<br><br>
<strong>Escenario 2 — Recuperación de borrador existente:</strong><br>
Dado que ya existe un borrador abierto para ese cliente,<br>
cuando la coordinadora vuelve a iniciar el flujo asistido para la misma cuenta,<br>
entonces el sistema recupera el mismo <code>draft</code> sin duplicarlo.<br><br>
<strong>Escenario 3 — Múltiples borradores para distintos clientes:</strong><br>
Dado que la coordinadora gestiona pedidos para diferentes clientes en la misma sesión,<br>
cuando crea un borrador para un segundo cliente distinto,<br>
entonces el sistema mantiene ambos borradores activos de forma independiente sin mezclar la información entre cuentas.
</td>
<td>5</td>
<td>EP08</td>
</tr>

<tr>
<td>US30</td>
<td>Identificar al cliente por RUC o DNI y cargar condiciones</td>
<td>Como coordinadora comercial (Valeria), quiero identificar al cliente ingresando su RUC o DNI y cargar sus condiciones automáticamente, para no tener que validar manualmente crédito, precios ni historial en cada operación.</td>
<td>
<strong>Escenario 1 — Cliente identificado y condiciones cargadas:</strong><br>
Dado que la coordinadora ingresa un RUC o DNI registrado en el sistema,<br>
cuando ejecuta la búsqueda,<br>
entonces el sistema carga la ficha del cliente con su lista de precios, crédito disponible y saldo vencido.<br><br>
<strong>Escenario 2 — Documento no encontrado en el padrón:</strong><br>
Dado que el RUC o DNI ingresado no existe en el padrón de clientes,<br>
cuando la coordinadora intenta continuar el flujo,<br>
entonces el sistema impide el envío del pedido hasta que se seleccione o registre un cliente válido con el rol autorizado.<br><br>
<strong>Escenario 3 — Condiciones actualizadas en la sesión actual:</strong><br>
Dado que las condiciones comerciales del cliente fueron modificadas por la supervisora durante la misma sesión,<br>
cuando la coordinadora recarga o consulta de nuevo el perfil del cliente,<br>
entonces el sistema refleja las condiciones vigentes más recientes del cliente antes de continuar con el pedido.
</td>
<td>5</td>
<td>EP08</td>
</tr>

<tr>
<td>US31</td>
<td>Registrar productos y capturar evidencia en campo</td>
<td>Como coordinadora comercial (Valeria), quiero registrar productos y observaciones desde un dispositivo móvil, para digitalizar pedidos en campo con soporte de imágenes adjuntas.</td>
<td>
<strong>Escenario 1 — Captura responsiva del pedido:</strong><br>
Dado que la operadora usa una tablet,<br>
 cuando registra líneas de productos,<br>
 entonces el sistema adapta el catálogo táctil permitiendo una selección rápida y registro de notas.<br><br>
<strong>Escenario 2 — Soporte multimedia (Imágenes):</strong><br>
Dado que el pedido requiere evidencia fotográfica del estado físico inicial,<br>
 cuando se adjunta una imagen al borrador,<br>
 entonces el sistema la vincula al identificador del pedido preservando la calidad.<br><br>
<strong>Escenario 3 — Guardado incremental:</strong><br>
Dado que el registro se realiza en zonas de baja conectividad,<br>
 cuando el sistema detecta pérdida de red,<br>
 entonces conserva el progreso del borrador y permite retomarlo cuando la conectividad se restablece.
</td>
<td>3</td>
<td>EP08</td>
</tr>

<tr>
<td>US32</td>
<td>Visualizar alertas de stock, crédito y bloqueo antes de enviar</td>
<td>Como coordinadora comercial (Valeria), quiero visualizar alertas de stock, crédito y bloqueo antes de enviar el pedido, para evitar prometer al cliente entregas que la empresa no puede cumplir.</td>
<td>
<strong>Escenario 1 — Alerta de condición inválida:</strong><br>
Dado que el borrador contiene líneas o condiciones que no cumplen las reglas del dominio,<br>
cuando la coordinadora revisa el resumen del pedido antes de enviarlo,<br>
entonces el sistema alerta explícitamente si hay falta de stock, saldo vencido o crédito insuficiente.<br><br>
<strong>Escenario 2 — Bloqueo de envío por condición crítica:</strong><br>
Dado que existe al menos una condición bloqueante en el pedido,<br>
cuando la coordinadora intenta enviarlo,<br>
entonces el sistema impide mover el pedido de <code>draft</code> a <code>submitted</code> hasta que la condición sea resuelta.<br><br>
<strong>Escenario 3 — Alertas mostradas de forma inline durante el registro:</strong><br>
Dado que la coordinadora agrega un producto cuya cantidad supera el stock disponible,<br>
cuando confirma la línea del pedido,<br>
entonces el sistema muestra la alerta en la línea afectada de inmediato y no solo al momento del envío.
</td>
<td>5</td>
<td>EP08</td>
</tr>

<tr>
<td>US33</td>
<td>Enviar el pedido asistido y dejar confirmación trazable</td>
<td>Como coordinadora comercial (Valeria), quiero enviar el pedido asistido y recibir una confirmación trazable, para que el cliente y la operación tengan evidencia del registro desde el origen.</td>
<td>
<strong>Escenario 1 — Envío exitoso con estado actualizado:</strong><br>
Dado que el pedido asistido cumple todas las reglas mínimas de negocio,<br>
cuando la coordinadora lo envía,<br>
entonces el sistema cambia su estado a <code>submitted</code> y registra una confirmación con el identificador del pedido.<br><br>
<strong>Escenario 2 — Prevención de envío duplicado:</strong><br>
Dado que el mismo borrador ya fue enviado correctamente,<br>
cuando la coordinadora intenta enviarlo una segunda vez,<br>
entonces el sistema evita una segunda confirmación sobre el mismo <code>draft</code> y muestra el identificador ya asignado.<br><br>
<strong>Escenario 3 — Pedido enviado es inmutable para la coordinadora:</strong><br>
Dado que el pedido ya cambió a estado <code>submitted</code>,<br>
cuando la coordinadora intenta modificar sus líneas,<br>
entonces el sistema impide la edición directa del pedido enviado y ofrece un camino alternativo (cancelación o ajuste autorizado).
</td>
<td>3</td>
<td>EP08</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP09 -->
<tr>
<td><strong>EP09</strong></td>
<td><strong>B2B Self-Service Ordering</strong></td>
<td>Agrupa las historias del portal B2B del cliente comercial, desde la creación del carrito o borrador hasta el historial y la repetición de compras recurrentes.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US34</td>
<td>Crear un pedido desde el portal B2B</td>
<td>Como cliente comercial (Hilda), quiero crear un pedido desde el portal B2B, para abastecerme de forma autónoma sin depender completamente de un mensaje o llamada al distribuidor.</td>
<td>
<strong>Escenario 1 — Creación de borrador en el portal:</strong><br>
Dado que el cliente autenticado accede al portal B2B,<br>
cuando inicia una nueva compra,<br>
entonces el sistema crea un pedido en estado <code>draft</code> vinculado exclusivamente a su propia cuenta.<br><br>
<strong>Escenario 2 — Restricción de acceso a otras cuentas:</strong><br>
Dado que el cliente intenta crear o ver pedidos de otra cuenta,<br>
cuando el sistema procesa la solicitud,<br>
entonces restringe la acción y permite solo operaciones dentro del contexto de la cuenta autenticada.<br><br>
<strong>Escenario 3 — Portal funcional en móvil:</strong><br>
Dado que el cliente accede al portal desde un dispositivo móvil,<br>
cuando navega el flujo de creación de pedido,<br>
entonces el sistema presenta el formulario en formato responsive con controles táctiles accesibles.
</td>
<td>5</td>
<td>EP09</td>
</tr>

<tr>
<td>US35</td>
<td>Guardar un borrador y retomarlo luego</td>
<td>Como cliente comercial (Hilda), quiero guardar un borrador y retomarlo en otra sesión, para no perder la información de una compra en proceso cuando no puedo terminarla de inmediato.</td>
<td>
<strong>Escenario 1 — Borrador guardado y recuperable:</strong><br>
Dado que el pedido está en estado <code>draft</code>,<br>
cuando el cliente decide guardarlo sin enviarlo,<br>
entonces el sistema conserva las líneas, cantidades y datos editables para su retoma posterior.<br><br>
<strong>Escenario 2 — Borrador enviado o cancelado no editable:</strong><br>
Dado que el borrador fue enviado o cancelado,<br>
cuando el cliente vuelve a consultarlo,<br>
entonces el sistema ya no lo muestra como editable ni permite agregarle nuevas líneas.<br><br>
<strong>Escenario 3 — Aviso de borrador con productos sin stock:</strong><br>
Dado que el cliente retoma un borrador guardado y alguno de sus productos ya no tiene disponibilidad,<br>
cuando abre el borrador,<br>
entonces el sistema señala las líneas afectadas antes de permitir el envío.
</td>
<td>3</td>
<td>EP09</td>
</tr>

<tr>
<td>US36</td>
<td>Repetir un pedido anterior</td>
<td>Como cliente comercial (Hilda), quiero repetir un pedido anterior como base de uno nuevo, para acelerar compras recurrentes y reducir el tiempo de registro.</td>
<td>
<strong>Escenario 1 — Nuevo borrador basado en pedido previo:</strong><br>
Dado que el cliente tiene pedidos previos registrados en su historial,<br>
cuando elige repetir uno,<br>
entonces el sistema crea un nuevo <code>draft</code> tomando como base las líneas del pedido anterior seleccionado.<br><br>
<strong>Escenario 2 — Productos descontinuados marcados en el nuevo borrador:</strong><br>
Dado que algún producto del pedido anterior ya no está publicado o fue bloqueado,<br>
cuando se genera el nuevo <code>draft</code>,<br>
entonces el sistema marca esa diferencia antes del envío y no omite silenciosamente la línea.<br><br>
<strong>Escenario 3 — Disponibilidad verificada antes de confirmar la repetición:</strong><br>
Dado que las cantidades del pedido anterior superan el stock disponible actual,<br>
cuando el cliente abre el nuevo borrador,<br>
entonces el sistema alerta las líneas con stock insuficiente antes de permitir el envío.
</td>
<td>5</td>
<td>EP09</td>
</tr>

<tr>
<td>US37</td>
<td>Enviar el pedido desde el portal y recibir confirmación</td>
<td>Como cliente comercial (Hilda), quiero enviar mi pedido desde el portal y recibir una confirmación clara con número de pedido, para saber que el distribuidor ya recibió mi solicitud de forma oficial.</td>
<td>
<strong>Escenario 1 — Envío exitoso con confirmación:</strong><br>
Dado que el borrador contiene líneas válidas y el cliente no tiene bloqueo comercial activo,<br>
cuando envía el pedido,<br>
entonces el sistema cambia el estado a <code>submitted</code> y devuelve una confirmación con el identificador del pedido.<br><br>
<strong>Escenario 2 — Bloqueo por pedido vacío o condición comercial:</strong><br>
Dado que el pedido está vacío o el cliente tiene un bloqueo activo por crédito o morosidad,<br>
cuando intenta enviarlo,<br>
entonces el sistema no registra la solicitud y comunica explícitamente la razón del bloqueo.<br><br>
<strong>Escenario 3 — Confirmación incluye número de pedido visible:</strong><br>
Dado que el pedido fue enviado correctamente,<br>
cuando el cliente revisa la confirmación,<br>
entonces el sistema muestra un identificador de pedido legible que el cliente puede usar para seguimiento posterior.
</td>
<td>3</td>
<td>EP09</td>
</tr>

<tr>
<td>US38</td>
<td>Consultar historial y detalle de pedidos propios</td>
<td>Como cliente comercial (Hilda), quiero consultar mi historial de pedidos y el detalle de cada uno, para revisar compras anteriores, estados actuales y entregas recibidas.</td>
<td>
<strong>Escenario 1 — Historial de pedidos de la propia cuenta:</strong><br>
Dado que el cliente tiene pedidos registrados,<br>
cuando accede al historial,<br>
entonces el sistema lista únicamente los pedidos vinculados a su cuenta y no los de otras cuentas.<br><br>
<strong>Escenario 2 — Detalle de un pedido seleccionado:</strong><br>
Dado que el cliente abre el detalle de uno de sus pedidos,<br>
cuando revisa la información,<br>
entonces el sistema muestra líneas, cantidades, estado actual e historial de estados visible para el cliente.<br><br>
<strong>Escenario 3 — Historial paginado para cuentas con muchos pedidos:</strong><br>
Dado que la cuenta del cliente acumula más pedidos de los que caben en una sola vista,<br>
cuando el cliente navega el historial,<br>
entonces el sistema presenta los resultados de forma paginada o con carga incremental sin degradar el rendimiento.
</td>
<td>3</td>
<td>EP09</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP10 -->
<tr>
<td><strong>EP10</strong></td>
<td><strong>Delivery Tracking &amp; Predictability</strong></td>
<td>Agrupa las historias de seguimiento, ETA, incidencias, eventos de despacho y cierre con evidencia de entrega para cerrar el ciclo del pedido con trazabilidad completa.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US39</td>
<td>Visualizar el estado actual y la ETA del pedido</td>
<td>Como cliente comercial (Hilda), quiero visualizar el estado actual y la ETA de mi pedido, para preparar la recepción de mercadería con mayor certeza y sin tener que llamar al distribuidor.</td>
<td>
<strong>Escenario 1 — Estado visible con última actualización:</strong><br>
Dado que el pedido existe y el cliente está autenticado y autorizado,<br>
cuando consulta el seguimiento,<br>
entonces el sistema muestra el estado actual y la fecha u hora de su última actualización.<br><br>
<strong>Escenario 2 — ETA disponible desde despacho:</strong><br>
Dado que el pedido ya fue despachado y existe una ETA registrada,<br>
cuando el cliente revisa el seguimiento,<br>
entonces el sistema muestra la ventana estimada de llegada junto al estado actual.<br><br>
<strong>Escenario 3 — Historial de estados anterior visible:</strong><br>
Dado que el pedido pasó por múltiples estados antes del actual,<br>
cuando el cliente revisa el seguimiento,<br>
entonces el sistema muestra los estados anteriores con sus momentos de transición en orden cronológico.
</td>
<td>5</td>
<td>EP10</td>
</tr>

<tr>
<td>US40</td>
<td>Recibir visibilidad de demoras e incidencias del pedido</td>
<td>Como cliente comercial (Hilda), quiero recibir visibilidad de demoras e incidencias de mi pedido, para entender cambios relevantes en la entrega sin tener que perseguir al proveedor por teléfono.</td>
<td>
<strong>Escenario 1 — Incidencia visible para el cliente:</strong><br>
Dado que un pedido tiene una demora o incidencia registrada como visible para el cliente,<br>
cuando el cliente consulta el seguimiento,<br>
entonces el sistema muestra esa observación junto al estado actual del pedido.<br><br>
<strong>Escenario 2 — Observación interna no expuesta al cliente:</strong><br>
Dado que la observación fue marcada como interna por la operación,<br>
cuando el cliente revisa el seguimiento,<br>
entonces el sistema no la expone en el portal del cliente.<br><br>
<strong>Escenario 3 — Incidencia resuelta marcada como tal:</strong><br>
Dado que una incidencia previamente registrada fue resuelta por la operación,<br>
cuando el cliente revisa el seguimiento,<br>
entonces el sistema muestra la incidencia con su estado de resolución para que el cliente entienda que el problema fue atendido.
</td>
<td>3</td>
<td>EP10</td>
</tr>

<tr>
<td>US41</td>
<td>Actualizar estados del pedido con secuencia válida</td>
<td>Como usuaria interna autorizada, quiero actualizar los estados del pedido siguiendo una secuencia válida, para reflejar el avance real de la operación sin generar trazabilidad incoherente o saltos de estado.</td>
<td>
<strong>Escenario 1 — Transición válida registrada:</strong><br>
Dado que el pedido está en <code>submitted</code>, <code>confirmed</code> o <code>in_preparation</code>,<br>
cuando una usuaria autorizada registra un cambio de estado válido,<br>
entonces el sistema aplica la transición según la secuencia: <code>submitted → confirmed → in_preparation → dispatched → delivered</code>.<br><br>
<strong>Escenario 2 — Transición inválida rechazada:</strong><br>
Dado que la transición propuesta salta un estado intermedio o intenta cancelar después de <code>dispatched</code>,<br>
cuando la usuaria intenta guardar el cambio,<br>
entonces el sistema rechaza la transición por secuencia inválida y mantiene el estado actual.<br><br>
<strong>Escenario 3 — Solo una transición activa simultánea:</strong><br>
Dado que dos usuarias intentan actualizar el estado del mismo pedido simultáneamente,<br>
cuando ambas operaciones se procesan,<br>
entonces el sistema conserva una única transición válida y notifica a la segunda usuaria que el estado ya cambió antes de su intento.
</td>
<td>5</td>
<td>EP10</td>
</tr>

<tr>
<td>US42</td>
<td>Registrar despacho y POD (Proof of Delivery)</td>
<td>Como transportista autorizado (Pedro), quiero registrar el despacho y generar el POD, para cerrar la trazabilidad del pedido con evidencia digital de recepción conforme.</td>
<td>
<strong>Escenario 1 — Generación automática de POD:</strong><br>
Dado que el transportista marca el pedido como entregado,<br>
 cuando el sistema procesa la acción,<br>
 entonces genera un registro de prueba de entrega con marca de tiempo y evidencia asociada al pedido.<br><br>
<strong>Escenario 2 — Validación térmica de cierre:</strong><br>
Dado que el pedido es de cadena de frío,<br>
 cuando se registra la entrega,<br>
 entonces el sistema exige la validación de la condición térmica final conforme a la regla operativa definida para ese pedido.<br><br>
<strong>Escenario 3 — Carga de evidencia fotográfica obligatoria:</strong><br>
Dado que la política de entrega exige evidencia visual,<br>
 cuando el sistema detecta que no hay imagen adjunta,<br>
 entonces bloquea el cambio de estado a <code>delivered</code> hasta que se cargue el archivo.
</td>
<td>5</td>
<td>EP10</td>
</tr>

<tr>
<td>US43</td>
<td>Consultar evidencia y cierre de la entrega</td>
<td>Como usuaria interna autorizada, quiero consultar la evidencia y el cierre de la entrega, para resolver reclamos, confirmar qué ocurrió y mantener la trazabilidad completa del ciclo del pedido.</td>
<td>
<strong>Escenario 1 — Evidencia de cierre accesible internamente:</strong><br>
Dado que un pedido ya fue entregado,<br>
cuando la usuaria autorizada abre su cierre,<br>
entonces el sistema muestra la evidencia registrada, el momento del cierre y el resumen de incidencias asociadas.<br><br>
<strong>Escenario 2 — Información de cierre parcialmente visible al cliente:</strong><br>
Dado que parte de la información de cierre fue marcada como interna,<br>
cuando el cliente consulta el pedido desde su portal,<br>
entonces el sistema expone únicamente la porción marcada como visible para cliente.<br><br>
<strong>Escenario 3 — Registro de cierre inmutable:</strong><br>
Dado que el cierre del pedido fue registrado correctamente,<br>
cuando cualquier usuario autorizado intenta modificar la evidencia del cierre,<br>
entonces el sistema rechaza la edición para preservar la integridad del registro de auditoría.
</td>
<td>3</td>
<td>EP10</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP11 -->
<tr>
<td><strong>EP11</strong></td>
<td><strong>Inventory, Expiry &amp; Operational Control</strong></td>
<td>Agrupa las historias de inventario, lotes, vencimientos FEFO, reservas automáticas y bloqueo de productos dentro del dominio operativo de la plataforma.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US44</td>
<td>Visualizar stock total, comprometido y disponible por SKU</td>
<td>Como supervisora comercial u operativa, quiero visualizar el stock total, comprometido y disponible por producto o SKU, para no prometer pedidos que la empresa no puede atender con el inventario real.</td>
<td>
<strong>Escenario 1 — Vista de stock con tres dimensiones:</strong><br>
Dado que existen productos con inventario registrado,<br>
cuando la supervisora abre la vista de stock,<br>
entonces el sistema muestra por cada producto o SKU la cantidad total, comprometida y disponible con la última actualización registrada.<br><br>
<strong>Escenario 2 — Producto oculto o bloqueado visible internamente:</strong><br>
Dado que un producto se encuentra oculto o bloqueado para clientes,<br>
cuando la supervisora lo consulta en gestión interna,<br>
entonces el sistema mantiene su registro y estado de inventario visible para control operativo.<br><br>
<strong>Escenario 3 — Actualización de stock tras cambio de estado de pedido:</strong><br>
Dado que un pedido en estado <code>confirmed</code> fue cancelado,<br>
cuando la operación registra la cancelación,<br>
entonces el sistema refleja el incremento del stock disponible en la siguiente consulta válida de la vista de inventario.
</td>
<td>5</td>
<td>EP11</td>
</tr>

<tr>
<td>US45</td>
<td>Registrar lotes, vencimientos y rangos térmicos por SKU</td>
<td>Como supervisora operativa autorizada, quiero registrar lotes, fechas de vencimiento y rangos térmicos por SKU, para mejorar la trazabilidad de los productos sensibles y habilitar rotación FEFO.</td>
<td>
<strong>Escenario 1 — Registro exitoso de lote con vencimiento:</strong><br>
Dado que el producto o SKU existe en el sistema y admite trazabilidad,<br>
cuando la supervisora registra lote, fecha de vencimiento y rango térmico,<br>
entonces el sistema guarda la información y la asocia al SKU correspondiente.<br><br>
<strong>Escenario 2 — Rechazo por fecha o referencia inválida:</strong><br>
Dado que la fecha de vencimiento ingresada es pasada o el formato es incorrecto,<br>
cuando se intenta guardar el registro,<br>
entonces el sistema rechaza la operación e indica el error específico.<br><br>
<strong>Escenario 3 — Múltiples lotes por SKU con fechas distintas:</strong><br>
Dado que el mismo SKU tiene dos lotes con fechas de vencimiento diferentes,<br>
cuando la supervisora registra ambos,<br>
entonces el sistema los mantiene como registros separados y los identifica de forma individual para control FEFO.
</td>
<td>5</td>
<td>EP11</td>
</tr>

<tr>
<td>US46</td>
<td>Consultar alertas FEFO y productos próximos a vencer</td>
<td>Como supervisora operativa autorizada, quiero consultar alertas de productos con vencimiento próximo usando FEFO, para priorizar la rotación y evitar pérdidas por caducidad.</td>
<td>
<strong>Escenario 1 — Lista de productos próximos a vencer:</strong><br>
Dado que existen lotes con fecha de vencimiento registrada dentro de la ventana de alerta configurada,<br>
cuando la supervisora consulta las alertas FEFO,<br>
entonces el sistema lista los productos cuya vigencia está dentro de esa ventana.<br><br>
<strong>Escenario 2 — Orden por vencimiento más próximo:</strong><br>
Dado que varios lotes cumplen la condición de alerta,<br>
cuando se presentan los resultados,<br>
entonces el sistema los ordena desde el lote con vencimiento más próximo al más lejano.<br><br>
<strong>Escenario 3 — Umbral de alerta configurable:</strong><br>
Dado que la supervisora necesita ajustar el margen de alerta de vencimiento,<br>
cuando modifica el umbral configurado,<br>
entonces el sistema aplica el nuevo valor en la próxima consulta de alertas FEFO sin requerir reinicio.
</td>
<td>5</td>
<td>EP11</td>
</tr>

<tr>
<td>US47</td>
<td>Reservar y liberar stock según el estado del pedido</td>
<td>Como supervisora operativa autorizada, quiero que el sistema reserve y libere stock según el estado del pedido, para mantener la disponibilidad comercial consistente con la operación real.</td>
<td>
<strong>Escenario 1 — Reserva automática al confirmar pedido:</strong><br>
Dado que un pedido pasa al estado <code>confirmed</code>,<br>
cuando el sistema procesa el cambio de estado,<br>
entonces reserva las unidades comprometidas y descuenta el stock disponible sin permitir inconsistencias entre pedido e inventario.<br><br>
<strong>Escenario 2 — Liberación automática al cancelar pedido:</strong><br>
Dado que un pedido confirmado es cancelado antes del despacho,<br>
cuando el sistema registra la cancelación,<br>
entonces libera las unidades reservadas y las devuelve al stock disponible.<br><br>
<strong>Escenario 3 — Reserva no excede stock disponible:</strong><br>
Dado que el stock disponible de un SKU es menor que la cantidad solicitada en el pedido,<br>
cuando el sistema intenta confirmar el pedido,<br>
entonces bloquea la confirmación por insuficiencia de stock y comunica el motivo sin dejar el inventario en estado inconsistente.
</td>
<td>8</td>
<td>EP11</td>
</tr>

<tr>
<td>US48</td>
<td>Bloquear y desbloquear un producto con restricción operativa</td>
<td>Como supervisora operativa autorizada, quiero bloquear y desbloquear productos con restricciones operativas, para evitar que ingresen en nuevos pedidos cuando no están disponibles o tienen observaciones sanitarias.</td>
<td>
<strong>Escenario 1 — Bloqueo efectivo del producto:</strong><br>
Dado que un producto no debe venderse temporalmente,<br>
cuando la supervisora activa el bloqueo,<br>
entonces el sistema impide que ese producto sea agregado a nuevos pedidos por cualquier canal.<br><br>
<strong>Escenario 2 — Desbloqueo y rehabilitación del producto:</strong><br>
Dado que la restricción fue resuelta,<br>
cuando la supervisora retira el bloqueo,<br>
entonces el sistema vuelve a habilitar el producto según su condición comercial vigente.<br><br>
<strong>Escenario 3 — Bloqueo con razón documentada:</strong><br>
Dado que la supervisora activa el bloqueo de un producto,<br>
cuando registra la razón del bloqueo en el campo requerido,<br>
entonces el sistema guarda esa razón asociada al registro de bloqueo para trazabilidad de auditoría.
</td>
<td>5</td>
<td>EP11</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP12 -->
<tr>
<td><strong>EP12</strong></td>
<td><strong>Commercial Conditions &amp; Customer Management</strong></td>
<td>Agrupa las historias de ficha de cliente, asignación de listas de precio, crédito, morosidad, bloqueo comercial y consulta de historial por cuenta.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US49</td>
<td>Registrar y mantener la ficha del cliente comercial</td>
<td>Como usuaria interna autorizada, quiero registrar y mantener la ficha del cliente comercial, para operar pedidos y seguimiento con información confiable y actualizada.</td>
<td>
<strong>Escenario 1 — Registro exitoso de ficha de cliente:</strong><br>
Dado que la usuaria cuenta con los datos obligatorios del cliente,<br>
cuando crea la ficha,<br>
entonces el sistema registra documento fiscal, razón social, contacto y datos de entrega.<br><br>
<strong>Escenario 2 — Rechazo de documento duplicado:</strong><br>
Dado que el documento fiscal ya existe en otra ficha activa,<br>
cuando la usuaria intenta registrar un segundo cliente con el mismo documento,<br>
entonces el sistema rechaza el registro e indica que el documento ya está en uso.<br><br>
<strong>Escenario 3 — Actualización de datos sin afectar pedidos activos:</strong><br>
Dado que el cliente tiene pedidos en estado activo (<code>submitted</code>, <code>confirmed</code> o <code>in_preparation</code>),<br>
cuando la usuaria actualiza datos de contacto o entrega de la ficha,<br>
entonces el sistema aplica el cambio en la ficha sin alterar las condiciones comprometidas en pedidos existentes.
</td>
<td>5</td>
<td>EP12</td>
</tr>

<tr>
<td>US50</td>
<td>Asignar listas de precio, crédito y condiciones de pago</td>
<td>Como usuaria interna autorizada, quiero asignar listas de precio, límite de crédito y condiciones de pago a un cliente, para adaptar el comportamiento comercial de forma individualizada.</td>
<td>
<strong>Escenario 1 — Configuración comercial activa asignada:</strong><br>
Dado que el cliente existe en el sistema,<br>
cuando la usuaria registra una lista de precios, una condición de pago y un límite de crédito,<br>
entonces el sistema deja esa configuración como activa para la cuenta del cliente.<br><br>
<strong>Escenario 2 — Nueva configuración reemplaza la anterior:</strong><br>
Dado que el cliente ya tenía una configuración comercial activa,<br>
cuando la usuaria guarda una nueva configuración,<br>
entonces el sistema registra la nueva versión como vigente y mantiene trazabilidad del cambio anterior.<br><br>
<strong>Escenario 3 — Configuración visible en el flujo asistido:</strong><br>
Dado que la coordinadora comercial identifica al cliente por RUC/DNI,<br>
cuando el sistema carga las condiciones del cliente,<br>
entonces refleja la configuración vigente más reciente asignada por la supervisora.
</td>
<td>5</td>
<td>EP12</td>
</tr>

<tr>
<td>US51</td>
<td>Visualizar saldo vigente y morosidad del cliente</td>
<td>Como coordinadora comercial o supervisora autorizada, quiero visualizar el saldo vigente y la morosidad del cliente al momento de operar, para decidir si un pedido puede continuar antes de comprometer stock.</td>
<td>
<strong>Escenario 1 — Saldo y morosidad visibles en el perfil:</strong><br>
Dado que la cuenta del cliente tiene información comercial registrada,<br>
cuando la usuaria abre su perfil o lo identifica por RUC/DNI,<br>
entonces el sistema muestra saldo vigente, saldo vencido y crédito disponible con la última actualización comercial registrada.<br><br>
<strong>Escenario 2 — Visibilidad parcial para el propio cliente:</strong><br>
Dado que el cliente consulta su propia cuenta desde el portal B2B,<br>
cuando revisa sus datos comerciales,<br>
entonces el sistema expone únicamente la información permitida para el rol cliente y no toda la información interna.<br><br>
<strong>Escenario 3 — Morosidad calculada sobre días de vencimiento:</strong><br>
Dado que el cliente tiene facturas vencidas con diferentes días de atraso,<br>
cuando la usuaria consulta su morosidad,<br>
entonces el sistema muestra el monto total vencido con la antigüedad del vencimiento más antiguo para priorizar atención.
</td>
<td>5</td>
<td>EP12</td>
</tr>

<tr>
<td>US52</td>
<td>Bloquear un pedido por regla de crédito o morosidad</td>
<td>Como coordinadora comercial o supervisora autorizada, quiero que el sistema bloquee automáticamente pedidos que incumplen las reglas de crédito o morosidad, para evitar registrar operaciones inviables antes de comprometer recursos.</td>
<td>
<strong>Escenario 1 — Bloqueo por saldo vencido:</strong><br>
Dado que el cliente tiene saldo vencido mayor a cero,<br>
cuando se intenta enviar o confirmar el pedido,<br>
entonces el sistema bloquea la operación y comunica explícitamente que el motivo es un saldo vencido pendiente.<br><br>
<strong>Escenario 2 — Bloqueo por límite de crédito superado:</strong><br>
Dado que el total del pedido supera el crédito disponible del cliente,<br>
cuando se intenta enviar o confirmar,<br>
entonces el sistema bloquea la operación e indica el monto del crédito disponible versus el monto solicitado.<br><br>
<strong>Escenario 3 — Validación aplicada tanto al envío como a la confirmación:</strong><br>
Dado que el pedido fue enviado sin bloqueo pero el crédito cambió antes de la confirmación,<br>
cuando el operador intenta confirmar el pedido,<br>
entonces el sistema aplica nuevamente la validación de crédito y bloquea la confirmación si corresponde.
</td>
<td>8</td>
<td>EP12</td>
</tr>

<tr>
<td>US53</td>
<td>Consultar historial comercial y operativo por cliente</td>
<td>Como usuaria interna autorizada, quiero consultar el historial comercial y operativo de un cliente, para revisar su comportamiento, incidencias y estado general de la relación comercial.</td>
<td>
<strong>Escenario 1 — Historial del cliente visible:</strong><br>
Dado que el cliente tiene actividad previa en el sistema,<br>
cuando la usuaria consulta su resumen,<br>
entonces el sistema muestra pedidos, estados relevantes e incidencias asociadas a esa cuenta.<br><br>
<strong>Escenario 2 — Historial preservado para clientes deshabilitados:</strong><br>
Dado que el cliente fue deshabilitado para nuevas operaciones,<br>
cuando la usuaria consulta su ficha,<br>
entonces el sistema conserva el historial completo disponible para auditoría.<br><br>
<strong>Escenario 3 — Historial filtrable por período:</strong><br>
Dado que el cliente tiene un historial extenso,<br>
cuando la usuaria aplica un filtro de fecha al historial,<br>
entonces el sistema muestra únicamente los registros dentro del período seleccionado sin perder los demás.
</td>
<td>3</td>
<td>EP12</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP13 -->
<tr>
<td><strong>EP13</strong></td>
<td><strong>Identity &amp; Access</strong></td>
<td>Agrupa las historias de autenticación, recuperación de acceso y gestión de cuentas internas o de cliente para el uso controlado y seguro de la plataforma.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US54</td>
<td>Iniciar sesión como colaboradora interna</td>
<td>Como usuaria interna, quiero iniciar sesión en la plataforma con mis credenciales corporativas, para acceder únicamente a los módulos y acciones que corresponden a mi rol dentro de la organización.</td>
<td>
<strong>Escenario 1 — Inicio de sesión exitoso:</strong><br>
Dado que la cuenta interna está activa y las credenciales son correctas,<br>
cuando la usuaria inicia sesión,<br>
entonces el sistema la dirige a su entorno interno autorizado según el rol asignado.<br><br>
<strong>Escenario 2 — Credenciales inválidas o cuenta inactiva:</strong><br>
Dado que las credenciales son incorrectas o la cuenta fue desactivada,<br>
cuando se intenta ingresar,<br>
entonces el sistema deniega el acceso sin revelar si el error es de usuario o contraseña.<br><br>
<strong>Escenario 3 — Sesión expirada redirige al login:</strong><br>
Dado que la sesión activa de la usuaria expiró por inactividad,<br>
cuando intenta realizar cualquier acción autenticada,<br>
entonces el sistema la redirige al formulario de inicio de sesión preservando la ruta a la que intentaba acceder.
</td>
<td>3</td>
<td>EP13</td>
</tr>

<tr>
<td>US55</td>
<td>Iniciar sesión como cliente comercial en el portal B2B</td>
<td>Como cliente comercial (Hilda), quiero iniciar sesión en el portal B2B con mis credenciales, para consultar catálogo, gestionar pedidos y seguir el estado de mis entregas.</td>
<td>
<strong>Escenario 1 — Inicio de sesión exitoso en el portal:</strong><br>
Dado que la cuenta del cliente está activa y sus credenciales son válidas,<br>
cuando inicia sesión,<br>
entonces el sistema le permite acceder a su portal B2B con su contexto de cuenta personalizado.<br><br>
<strong>Escenario 2 — Cuenta deshabilitada bloqueada:</strong><br>
Dado que la cuenta del cliente fue deshabilitada por el administrador,<br>
cuando intenta autenticarse,<br>
entonces el sistema impide el acceso y muestra un mensaje que indica la cuenta no está activa.<br><br>
<strong>Escenario 3 — Sesión de cliente aislada de sesión interna:</strong><br>
Dado que un usuario con sesión de cliente intenta acceder a módulos internos de la plataforma,<br>
cuando el sistema evalúa los permisos del rol,<br>
entonces restringe el acceso a los módulos internos sin exponer información operativa privada.
</td>
<td>3</td>
<td>EP13</td>
</tr>

<tr>
<td>US56</td>
<td>Recuperar el acceso a la cuenta</td>
<td>Como usuaria interna o cliente comercial, quiero recuperar el acceso a mi cuenta a través de un flujo controlado, para volver a usar la plataforma cuando olvido mis credenciales sin comprometer la seguridad.</td>
<td>
<strong>Escenario 1 — Flujo de recuperación iniciado:</strong><br>
Dado que la cuenta existe y el correo registrado es válido,<br>
cuando la usuaria solicita recuperar el acceso,<br>
entonces el sistema inicia el flujo de recuperación definido por contrato (envío de enlace o token al correo registrado).<br><br>
<strong>Escenario 2 — Token expirado o inválido:</strong><br>
Dado que el enlace o token de recuperación ya expiró o fue utilizado,<br>
cuando la usuaria intenta usarlo,<br>
entonces el sistema rechaza el cambio de contraseña y ofrece la opción de solicitar un nuevo enlace.<br><br>
<strong>Escenario 3 — Correo de recuperación enviado solo al registrado:</strong><br>
Dado que la usuaria solicita recuperación,<br>
cuando el sistema procesa la solicitud,<br>
entonces envía el correo únicamente a la dirección registrada en la cuenta, sin confirmar ni negar si el correo existe en el sistema.
</td>
<td>5</td>
<td>EP13</td>
</tr>

<tr>
<td>US57</td>
<td>Gestionar cuentas internas como administradora</td>
<td>Como administradora autorizada, quiero crear, activar y desactivar cuentas internas y asignarles roles, para controlar con precisión quién puede ingresar al sistema y con qué nivel de acceso.</td>
<td>
<strong>Escenario 1 — Gestión exitosa de cuentas internas:</strong><br>
Dado que la administradora tiene permisos de administración de cuentas,<br>
cuando crea, activa o desactiva una cuenta interna,<br>
entonces el sistema aplica el cambio y deja el rol correspondiente asignado a la cuenta intervenida.<br><br>
<strong>Escenario 2 — Acceso denegado para rol no autorizado:</strong><br>
Dado que un usuario sin permisos de administración intenta gestionar cuentas internas,<br>
cuando ejecuta la operación,<br>
entonces el sistema rechaza la acción por falta de autorización sin modificar ninguna cuenta.<br><br>
<strong>Escenario 3 — Cambio de rol requiere confirmación explícita:</strong><br>
Dado que la administradora modifica el rol de una cuenta interna existente,<br>
cuando guarda el cambio,<br>
entonces el sistema solicita confirmación explícita antes de aplicar el nuevo rol para evitar cambios accidentales.
</td>
<td>5</td>
<td>EP13</td>
</tr>

<!-- ═══════════════════════════════════════════════════════════ EP14 -->
<tr>
<td><strong>EP14</strong></td>
<td><strong>Technical Stories for REST API</strong></td>
<td>Agrupa las historias técnicas del RESTful API. El actor se modela como <code>Developer</code> y los criterios de aceptación se formulan como contratos de request/response alineados con el dominio del producto.</td>
<td>—</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US58</td>
<td>Exponer endpoint de catálogo</td>
<td>Como Developer, quiero exponer un endpoint de catálogo (<code>GET /products</code>), para que el portal B2B y la aplicación interna consulten productos habilitados según el contexto autenticado.</td>
<td>
<strong>Escenario 1 — Respuesta exitosa con productos:</strong><br>
Dado que el request contiene un token de autenticación válido,<br>
cuando la aplicación consume <code>GET /products</code>,<br>
entonces el API responde con la lista de productos habilitados para el contexto de cuenta autenticado y status <code>200</code>.<br><br>
<strong>Escenario 2 — Parámetros de request inválidos:</strong><br>
Dado que los parámetros de consulta no cumplen el contrato definido,<br>
cuando el endpoint es invocado,<br>
entonces el API responde con <code>400 Bad Request</code> y un mensaje descriptivo del error.<br><br>
<strong>Escenario 3 — Rate limiting aplicado:</strong><br>
Dado que una aplicación supera el límite de solicitudes por tiempo configurado,<br>
cuando el endpoint recibe la solicitud excedente,<br>
entonces el API responde con <code>429 Too Many Requests</code> e incluye el tiempo de espera recomendado.
</td>
<td>5</td>
<td>EP14</td>
</tr>

<tr>
<td>US59</td>
<td>Exponer endpoint de detalle y ficha técnica de producto</td>
<td>Como Developer, quiero exponer un endpoint de detalle de producto (<code>GET /products/{id}</code>), para que el portal muestre información ampliada, disponibilidad y documentos técnicos asociados.</td>
<td>
<strong>Escenario 1 — Detalle de producto existente:</strong><br>
Dado que el identificador del producto existe y es accesible para el contexto autenticado,<br>
cuando la aplicación consume <code>GET /products/{id}</code>,<br>
entonces el API responde con el detalle completo del producto, su disponibilidad actual y la referencia de la ficha técnica si existe.<br><br>
<strong>Escenario 2 — Producto no encontrado:</strong><br>
Dado que el identificador no corresponde a un recurso existente o visible para ese contexto,<br>
cuando el endpoint es consultado,<br>
entonces el API responde con <code>404 Not Found</code> sin exponer datos de otros recursos.<br><br>
<strong>Escenario 3 — Acceso denegado por contexto no autorizado:</strong><br>
Dado que el producto existe pero no está habilitado para la cuenta autenticada,<br>
cuando el endpoint es invocado,<br>
entonces el API responde con <code>403 Forbidden</code> sin revelar la existencia del recurso.
</td>
<td>5</td>
<td>EP14</td>
</tr>

<tr>
<td>US60</td>
<td>Exponer endpoint de cliente por RUC/DNI y condiciones comerciales</td>
<td>Como Developer, quiero exponer un endpoint de búsqueda de cliente por documento (<code>GET /customers?document={ruc|dni}</code>), para soportar el flujo asistido de captura del pedido con carga automática de condiciones.</td>
<td>
<strong>Escenario 1 — Cliente encontrado con condiciones cargadas:</strong><br>
Dado que la consulta proviene de un usuario interno autorizado y el documento existe,<br>
cuando el endpoint es invocado,<br>
entonces el API responde con identidad del cliente, lista de precios vigente, crédito disponible y saldo vencido.<br><br>
<strong>Escenario 2 — Acceso denegado para actor no autorizado:</strong><br>
Dado que la consulta proviene de un token sin permisos de coordinación interna,<br>
cuando se intenta consumir el endpoint,<br>
entonces el API responde con <code>403 Forbidden</code> sin revelar datos del cliente.<br><br>
<strong>Escenario 3 — Validación de formato del documento:</strong><br>
Dado que el parámetro de documento tiene un formato incorrecto (longitud o caracteres inválidos),<br>
cuando el endpoint procesa la solicitud,<br>
entonces el API responde con <code>400 Bad Request</code> indicando el formato esperado.
</td>
<td>8</td>
<td>EP14</td>
</tr>

<tr>
<td>US61</td>
<td>Exponer endpoint de registro de pedido</td>
<td>Como Developer, quiero exponer un endpoint de creación de pedido (<code>POST /orders</code>), para que el portal B2B y la captura asistida puedan enviar solicitudes estructuradas de forma unificada.</td>
<td>
<strong>Escenario 1 — Pedido creado exitosamente:</strong><br>
Dado que el request contiene cliente válido, líneas de producto y condiciones comerciales que cumplen las reglas del dominio,<br>
cuando la aplicación invoca <code>POST /orders</code>,<br>
entonces el API crea el pedido en estado <code>submitted</code> y responde con el identificador y la representación del recurso creado.<br><br>
<strong>Escenario 2 — Error de regla de negocio por stock o crédito:</strong><br>
Dado que el pedido incumple las reglas de stock disponible o crédito del cliente,<br>
cuando el request es procesado,<br>
entonces el API responde con <code>422 Unprocessable Entity</code>, detalla la regla incumplida y no crea el pedido.<br><br>
<strong>Escenario 3 — Idempotencia ante envío duplicado:</strong><br>
Dado que el mismo request con igual cliente y líneas es enviado dos veces con un identificador de idempotencia,<br>
cuando el API procesa la segunda solicitud,<br>
entonces responde con el pedido original ya creado sin generar un duplicado.
</td>
<td>8</td>
<td>EP14</td>
</tr>

<tr>
<td>US62</td>
<td>Exponer endpoint de tracking y ETA del pedido</td>
<td>Como Developer, quiero exponer un endpoint de seguimiento (<code>GET /shipments/{id}</code> y <code>GET /shipments/{id}/events</code>), para que la aplicación muestre el estado actualizado, el historial de eventos y la ETA.</td>
<td>
<strong>Escenario 1 — Estado, historial y ETA retornados:</strong><br>
Dado que el pedido o envío existe y el contexto autenticado está autorizado,<br>
cuando la aplicación consulta el endpoint de tracking,<br>
entonces el API responde con estado actual, historial de eventos visibles para ese rol y ETA cuando existe.<br><br>
<strong>Escenario 2 — Acceso denegado por contexto no autorizado:</strong><br>
Dado que el pedido no pertenece al contexto del token autenticado,<br>
cuando el endpoint es invocado,<br>
entonces el API responde con <code>403 Forbidden</code> sin exponer información del envío.<br><br>
<strong>Escenario 3 — Historial de eventos paginado:</strong><br>
Dado que el pedido tiene un historial extenso de eventos,<br>
cuando la aplicación consulta <code>/shipments/{id}/events</code> con parámetros de paginación,<br>
entonces el API responde con la página solicitada de eventos y metadatos de navegación.
</td>
<td>5</td>
<td>EP14</td>
</tr>

<tr>
<td>US63</td>
<td>Exponer endpoint de eventos de despacho y POD</td>
<td>Como Developer, quiero exponer endpoints de despacho y prueba de entrega (<code>POST /shipments/{id}/events</code> y <code>POST /shipments/{id}/pod</code>), para registrar salida, incidencias y cierre de entrega con evidencia.</td>
<td>
<strong>Escenario 1 — Evento de despacho registrado:</strong><br>
Dado que el envío existe y el usuario está autorizado para registrar eventos,<br>
cuando se envía un evento válido de despacho o incidencia,<br>
entonces el API registra la evidencia, actualiza el estado y responde con el evento creado.<br><br>
<strong>Escenario 2 — Evento inválido por estado incorrecto:</strong><br>
Dado que el evento enviado no corresponde al estado actual del pedido,<br>
cuando el request es procesado,<br>
entonces el API responde con <code>422 Unprocessable Entity</code> indicando la transición inválida.<br><br>
<strong>Escenario 3 — Límite de tipo y tamaño de POD aplicado:</strong><br>
Dado que el request de POD incluye un archivo con tipo o tamaño fuera de los límites configurados,<br>
cuando el API procesa la solicitud,<br>
entonces responde con <code>400 Bad Request</code> indicando el tipo o tamaño permitido sin procesar el archivo.
</td>
<td>5</td>
<td>EP14</td>
</tr>

<tr>
<td>US64</td>
<td>Exponer endpoint de autenticación y recuperación de acceso</td>
<td>Como Developer, quiero exponer endpoints de autenticación (<code>POST /auth/login</code>) y recuperación (<code>POST /auth/recover</code>), para que internos y clientes operen con sesiones válidas y recuperación controlada.</td>
<td>
<strong>Escenario 1 — Autenticación exitosa con token:</strong><br>
Dado que las credenciales del request son válidas y la cuenta está activa,<br>
cuando la aplicación consume el endpoint de login,<br>
entonces el API responde con la estructura de autenticación definida por contrato (token de acceso y metadatos de sesión).<br><br>
<strong>Escenario 2 — Credenciales inválidas o cuenta inactiva:</strong><br>
Dado que la cuenta está inactiva o las credenciales son incorrectas,<br>
cuando se consume el endpoint de login,<br>
entonces el API responde con <code>401 Unauthorized</code> sin revelar cuál de los dos campos es incorrecto.<br><br>
<strong>Escenario 3 — Mecanismo de renovación de token:</strong><br>
Dado que el token de acceso del usuario expiró pero el refresh token sigue vigente,<br>
cuando la aplicación invoca el endpoint de renovación,<br>
entonces el API emite un nuevo token de acceso sin requerir que el usuario ingrese sus credenciales nuevamente.
</td>
<td>5</td>
<td>EP14</td>
</tr>

</tbody>
</table>

Detalle de requerimientos funcionales estructurados bajo el estándar Gherkin para validación técnica. Elaboración propia.

---

La tabla integra el sitio público, el producto transaccional y las historias técnicas del API bajo una taxonomía coherente con la investigación de campo y el landing page. La estimación en puntos de historia (SP) sigue la escala Fibonacci (1, 2, 3, 5, 8, 13). Elaboración propia.

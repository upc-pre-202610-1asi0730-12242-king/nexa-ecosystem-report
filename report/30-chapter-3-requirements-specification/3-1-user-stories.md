# Capítulo III: Requirements Specification
## 3.1. User Stories

<p align="justify">
El backlog de Nexa se reorganiza en dos capas complementarias. La primera cubre el sitio público multipágina que comunica la propuesta de valor, enruta por segmentos comerciales y capta oportunidades mediante el landing page. La segunda cubre el producto transaccional: catálogo, captura asistida del pedido, portal B2B, condiciones comerciales, inventario y seguimiento hasta la entrega. Todas las historias se redactan con actores explícitos y criterios de aceptación verificables, alineados con los arquetipos canónicos del proyecto: Valeria, Hilda y Pedro.
</p>

# Tabla 12 – User Stories
## Épicas y User Stories

<table>
<thead>
<tr>
<th>Epic / Story ID</th>
<th>Título</th>
<th>Descripción</th>
<th>Criterios de Aceptación</th>
<th>Relacionado con (Epic ID)</th>
</tr>
</thead>
<tbody>

<tr>
<td><strong>EP01</strong></td>
<td><strong>Navigation &amp; Localization</strong></td>
<td>Agrupa las historias del sistema de navegación público, el selector de idioma y la orientación general del visitante entre páginas visibles del sitio.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US01</td>
<td>Navegar entre páginas públicas desde el navbar</td>
<td>Como visitante del sitio, quiero navegar entre Home, Platform, Company y FAQ, para revisar el contenido público de Nexa sin fricción.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante se encuentra en cualquier página pública, cuando selecciona una opción del navbar principal, entonces el sistema abre la página pública correspondiente.<br><strong>Escenario 2:</strong> Dado que la nueva página terminó de cargarse, cuando el visitante revisa el navbar, entonces el sistema destaca la ruta activa que corresponde a la ubicación actual.</td>
<td>EP01</td>
</tr>

<tr>
<td>US02</td>
<td>Abrir el dropdown de Solutions y elegir un segmento</td>
<td>Como visitante del sitio, quiero abrir el menú Solutions y escoger un segmento comercial, para acceder rápidamente a la propuesta más cercana a mi negocio.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante presiona el control Solutions, cuando el menú se despliega, entonces el sistema muestra las opciones Distribuidores refrigerados, Importadores y mayoristas, y Operadores de cámaras frías.<br><strong>Escenario 2:</strong> Dado que el visitante selecciona una opción del dropdown, cuando confirma la acción, entonces el sistema abre el contenido público del segmento elegido.</td>
<td>EP01</td>
</tr>

<tr>
<td>US03</td>
<td>Cambiar entre inglés y español sin perder contexto</td>
<td>Como visitante bilingüe, quiero cambiar el idioma del sitio entre EN y ES, para revisar el mismo contenido público en el idioma que prefiera.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante está en una página pública, cuando cambia el selector de idioma, entonces el sistema mantiene la misma página y muestra sus textos base en el idioma seleccionado.<br><strong>Escenario 2:</strong> Dado que el visitante se encuentra dentro de una categoría o sección visible, cuando cambia de idioma, entonces el sistema conserva el contexto de navegación actual.</td>
<td>EP01</td>
</tr>

<tr>
<td>US04</td>
<td>Usar navegación secundaria desde el footer</td>
<td>Como visitante del sitio, quiero usar los enlaces del footer, para moverme a contenido público adicional o a puntos de contacto desde el final de la página.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante llegó al footer, cuando selecciona un enlace visible, entonces el sistema navega a una página o sección pública existente.<br><strong>Escenario 2:</strong> Dado que el visitante utiliza un acceso de contacto o ayuda desde el footer, cuando se ejecuta la navegación, entonces el sistema evita enlaces rotos y mantiene una ruta válida.</td>
<td>EP01</td>
</tr>

<tr>
<td><strong>EP02</strong></td>
<td><strong>Home Value &amp; Conversion</strong></td>
<td>Agrupa las historias relacionadas con la Home del landing page: hero, propuesta de valor, capacidades visibles y llamados a la acción.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US05</td>
<td>Ver la propuesta principal de Nexa desde el hero</td>
<td>Como visitante del segmento distribuidor refrigerado, quiero ver la propuesta principal de Nexa desde la Home, para entender rápidamente qué problema operativo resuelve.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante accede a Home, cuando carga el hero principal, entonces el sistema muestra una propuesta de valor, un texto de apoyo y al menos un llamado a la acción visible.<br><strong>Escenario 2:</strong> Dado que el visitante ingresa por primera vez, cuando revisa el hero, entonces el sistema comunica el valor sin exigir autenticación previa.</td>
<td>EP02</td>
</tr>

<tr>
<td>US06</td>
<td>Comprender el problema operativo que Nexa busca corregir</td>
<td>Como visitante del sitio, quiero entender el caos operativo que Nexa busca reemplazar, para comparar la situación actual con el valor del producto.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante revisa la Home, cuando llega a la sección comparativa del problema actual, entonces el sistema describe la fragmentación entre mensajes, stock y seguimiento del despacho.<br><strong>Escenario 2:</strong> Dado que el visitante analiza el contenido de esta sección, cuando lo compara con el dominio del proyecto, entonces el sistema evita prometer soluciones ajenas a la cadena de frío B2B.</td>
<td>EP02</td>
</tr>

<tr>
<td>US07</td>
<td>Visualizar capacidades clave del producto desde la Home</td>
<td>Como visitante del sitio, quiero visualizar las capacidades centrales de Nexa desde la Home, para relacionarlas con problemas concretos del negocio.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante revisa la sección de capacidades, cuando consulta las tarjetas o bloques visibles, entonces el sistema presenta catálogo, inventario, pedidos, seguimiento y trazabilidad como capacidades coordinadas.<br><strong>Escenario 2:</strong> Dado que el visitante lee la explicación de cada capacidad, cuando contrasta la información, entonces el sistema la asocia a dolores operativos concretos y no a beneficios genéricos.</td>
<td>EP02</td>
</tr>

<tr>
<td>US08</td>
<td>Solicitar una demo desde la Home</td>
<td>Como visitante del segmento distribuidor refrigerado, quiero iniciar una solicitud de demo desde la Home, para abrir una conversación comercial sobre Nexa.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante hace clic en un CTA de demo desde la Home, cuando se ejecuta la acción, entonces el sistema lo dirige al flujo o formulario público de contacto correspondiente.<br><strong>Escenario 2:</strong> Dado que el visitante decide solicitar una demo desde la página inicial, cuando inicia el flujo, entonces el sistema no le exige crear una cuenta para continuar.</td>
<td>EP02</td>
</tr>

<tr>
<td><strong>EP03</strong></td>
<td><strong>Platform Explainer</strong></td>
<td>Agrupa las historias de la página Platform, orientadas a explicar módulos visibles, lógica operativa y relación entre MVP y expansión futura.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US09</td>
<td>Revisar los módulos visibles de la página Platform</td>
<td>Como visitante del sitio, quiero revisar los módulos visibles de la página Platform, para entender el alcance funcional comunicado por Nexa.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante ingresa a Platform, cuando revisa la página, entonces el sistema presenta los módulos Product Catalog, Live Inventory, B2B Orders, Temperature &amp; Delivery y Full Traceability.<br><strong>Escenario 2:</strong> Dado que el visitante consulta cada módulo, cuando lee su descripción, entonces el sistema lo relaciona con una necesidad operativa y no solo con un nombre comercial.</td>
<td>EP03</td>
</tr>

<tr>
<td>US10</td>
<td>Comprender cómo cambia la operación con la plataforma</td>
<td>Como visitante del sitio, quiero comprender cómo cambia la operación diaria con Nexa, para evaluar si el producto encaja con mi flujo real de trabajo.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante revisa la narrativa de uso de Platform, cuando lee la sección de cambio operativo, entonces el sistema explica cómo mejora la coordinación entre pedido, stock y entrega.<br><strong>Escenario 2:</strong> Dado que el visitante compara la propuesta con el flujo manual tradicional, cuando termina la lectura, entonces el sistema deja claro qué tareas se simplifican y cuál es el beneficio esperado.</td>
<td>EP03</td>
</tr>

<tr>
<td>US11</td>
<td>Distinguir entre capacidades del MVP y expansión futura</td>
<td>Como visitante del sitio, quiero distinguir entre lo que Nexa comunica como alcance actual y lo que comunica como evolución futura, para no confundir el MVP con el roadmap.</td>
<td><strong>Escenario 1:</strong> Dado que la página Platform o Company menciona capacidades avanzadas, cuando el visitante las revisa, entonces el sistema las contextualiza como expansión futura cuando aún no forman parte del alcance académico actual.<br><strong>Escenario 2:</strong> Dado que el visitante compara módulos presentes y proyección futura, cuando termina la revisión, entonces el sistema mantiene consistencia entre lo visible hoy y la visión del producto.</td>
<td>EP03</td>
</tr>

<tr>
<td><strong>EP04</strong></td>
<td><strong>Solutions &amp; Segment Routing</strong></td>
<td>Agrupa las historias del hub de soluciones y de la narrativa segmentada del sitio público.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US12</td>
<td>Explorar el hub de Solutions</td>
<td>Como visitante del sitio, quiero explorar el hub de Solutions, para identificar el segmento comercial con el que más se parece mi operación.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante abre la sección o página Solutions, cuando revisa el contenido disponible, entonces el sistema muestra al menos tres rutas públicas de solución diferenciadas.<br><strong>Escenario 2:</strong> Dado que el visitante selecciona una tarjeta o ruta, cuando navega al siguiente contenido, entonces el sistema lo mantiene dentro de una propuesta coherente con el segmento elegido.</td>
<td>EP04</td>
</tr>

<tr>
<td>US13</td>
<td>Ver la propuesta para distribuidores refrigerados</td>
<td>Como visitante del segmento distribuidor refrigerado, quiero ver una propuesta específica para mi operación, para evaluar si Nexa resuelve mis problemas principales.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante accede al contenido para distribuidores refrigerados, cuando lo revisa, entonces el sistema comunica catálogo, condiciones comerciales, captura del pedido, inventario y seguimiento como parte del valor principal.<br><strong>Escenario 2:</strong> Dado que el visitante compara esta propuesta con el resto del sitio, cuando finaliza la lectura, entonces el sistema mantiene a distribuidores refrigerados como frente comercial principal.</td>
<td>EP04</td>
</tr>

<tr>
<td>US14</td>
<td>Ver la propuesta para importadores y mayoristas</td>
<td>Como visitante del segmento importador o mayorista, quiero ver una propuesta conectada con mi realidad operativa, para entender cómo Nexa puede aportar visibilidad y coordinación.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante accede al contenido para importadores y mayoristas, cuando lo revisa, entonces el sistema presenta una narrativa alineada con coordinación operativa, stock y abastecimiento.<br><strong>Escenario 2:</strong> Dado que el visitante compara esta propuesta con el foco principal del producto, cuando termina la lectura, entonces el sistema la comunica como segmento adyacente y no como contradicción del enfoque principal.</td>
<td>EP04</td>
</tr>

<tr>
<td>US15</td>
<td>Ver la propuesta para operadores de cámaras frías</td>
<td>Como visitante del segmento operador de cámaras frías, quiero ver la propuesta de Nexa para almacenamiento refrigerado, para entender si aplica a mi contexto.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante revisa el contenido para operadores de cámaras frías, cuando lo consulta, entonces el sistema resalta control de inventario, trazabilidad y visibilidad de operación refrigerada.<br><strong>Escenario 2:</strong> Dado que el visitante compara esta narrativa con el dominio del producto, cuando finaliza la lectura, entonces el sistema mantiene la relación con la cadena de frío y evita salir del problema central.</td>
<td>EP04</td>
</tr>

<tr>
<td><strong>EP05</strong></td>
<td><strong>Company, Trust &amp; Contact</strong></td>
<td>Agrupa las historias relacionadas con la narrativa institucional, la promesa de acompañamiento humano y el formulario de contacto comercial.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US16</td>
<td>Conocer la narrativa de Company y el propósito del producto</td>
<td>Como visitante del sitio, quiero conocer la narrativa de Company, para entender quién impulsa Nexa y por qué existe el producto.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante accede a Company, cuando revisa su contenido, entonces el sistema comunica el propósito del producto, los principios del servicio y la relación con la operación del cliente.<br><strong>Escenario 2:</strong> Dado que el visitante busca señales de confianza, cuando termina la lectura, entonces el sistema refuerza consistencia, acompañamiento y continuidad operativa como parte del relato.</td>
<td>EP05</td>
</tr>

<tr>
<td>US17</td>
<td>Identificar soporte humano e implementación acompañada</td>
<td>Como visitante del sitio, quiero identificar cómo funciona el soporte humano y la implementación acompañada, para saber si Nexa complementa la relación comercial en lugar de reemplazarla.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante revisa Company o bloques de confianza del sitio, cuando consulta la información de soporte, entonces el sistema deja claro que existe acompañamiento humano para implementación o dudas clave.<br><strong>Escenario 2:</strong> Dado que el visitante compara soporte y tecnología, cuando finaliza la lectura, entonces el sistema presenta el soporte humano como complemento de la plataforma.</td>
<td>EP05</td>
</tr>

<tr>
<td>US18</td>
<td>Enviar el formulario de contacto comercial</td>
<td>Como visitante interesado, quiero enviar mis datos en el formulario de contacto, para solicitar una conversación comercial sobre Nexa.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante completa `name`, `work email`, `company` y `operation details`, cuando envía el formulario, entonces el sistema registra la solicitud de contacto.<br><strong>Escenario 2:</strong> Dado que falta uno de los campos requeridos, cuando el visitante intenta enviar el formulario, entonces el sistema bloquea la operación y marca los datos faltantes.</td>
<td>EP05</td>
</tr>

<tr>
<td>US19</td>
<td>Recibir validación y confirmación del formulario</td>
<td>Como visitante interesado, quiero recibir una validación clara del formulario y una confirmación al enviarlo, para saber si mi solicitud fue aceptada correctamente.</td>
<td><strong>Escenario 1:</strong> Dado que el formulario fue enviado con datos válidos, cuando finaliza el envío, entonces el sistema muestra una confirmación explícita de recepción.<br><strong>Escenario 2:</strong> Dado que el correo no cumple el formato esperado o un dato obligatorio falta, cuando el visitante intenta enviar, entonces el sistema explica el error sin borrar la información válida ya ingresada.</td>
<td>EP05</td>
</tr>

<tr>
<td><strong>EP06</strong></td>
<td><strong>FAQ, Support &amp; Login Placeholder</strong></td>
<td>Agrupa las historias del FAQ categorizado, el panel flotante de soporte y el acceso público al placeholder del portal.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US20</td>
<td>Navegar el FAQ por categorías</td>
<td>Como visitante del sitio, quiero navegar el FAQ por categorías, para revisar rápidamente respuestas según el tipo de duda que tenga.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante accede a FAQ, cuando revisa la navegación visible, entonces el sistema muestra las categorías Getting started, The platform, Implementation, Security &amp; data y Pricing &amp; access.<br><strong>Escenario 2:</strong> Dado que el visitante selecciona una categoría o ancla, cuando se ejecuta la navegación, entonces el sistema lo lleva a la sección correspondiente dentro del FAQ.</td>
<td>EP06</td>
</tr>

<tr>
<td>US21</td>
<td>Expandir respuestas dentro del FAQ</td>
<td>Como visitante del sitio, quiero expandir preguntas dentro del FAQ, para leer una respuesta específica sin abandonar la misma página.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante se encuentra en FAQ, cuando hace clic sobre una pregunta disponible, entonces el sistema muestra la respuesta asociada dentro de la misma página.<br><strong>Escenario 2:</strong> Dado que el visitante no expande ninguna pregunta, cuando revisa la página, entonces el sistema mantiene visible la lista de preguntas disponibles para exploración.</td>
<td>EP06</td>
</tr>

<tr>
<td>US22</td>
<td>Abrir el panel flotante de soporte</td>
<td>Como visitante del sitio, quiero abrir el panel flotante de soporte, para acceder rápidamente a opciones de ayuda o contacto sin perder la página actual.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante se encuentra en una página pública con soporte flotante, cuando activa el panel, entonces el sistema muestra accesos rápidos a recursos de ayuda o contacto.<br><strong>Escenario 2:</strong> Dado que el visitante cierra el panel, cuando vuelve a la página, entonces el sistema conserva el contexto de navegación en el que se encontraba.</td>
<td>EP06</td>
</tr>

<tr>
<td>US23</td>
<td>Intentar ingresar por Log in desde el sitio público</td>
<td>Como visitante del sitio, quiero entender qué ocurre al pulsar Log in, para no perderme si todavía estoy en la etapa pública de Nexa.</td>
<td><strong>Escenario 1:</strong> Dado que el visitante presiona el botón `Log in`, cuando se ejecuta la acción, entonces el sistema muestra el mensaje `Client portal available soon`.<br><strong>Escenario 2:</strong> Dado que la acción ocurre en el sitio público, cuando el mensaje aparece, entonces el sistema evita enviar al visitante a una ruta rota o a una autenticación inexistente.</td>
<td>EP06</td>
</tr>

<tr>
<td><strong>EP07</strong></td>
<td><strong>Catalog &amp; Discovery</strong></td>
<td>Agrupa las historias del catálogo B2B, la visibilidad de disponibilidad y la gestión de productos que sostienen la experiencia de compra.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US24</td>
<td>Consultar catálogo personalizado</td>
<td>Como cliente comercial (Hilda), quiero consultar un catálogo personalizado, para ver únicamente los productos que mi cuenta puede comprar.</td>
<td><strong>Escenario 1:</strong> Dado que el cliente autenticado tiene productos habilitados, cuando accede al catálogo, entonces el sistema muestra únicamente los productos publicados para su cuenta.<br><strong>Escenario 2:</strong> Dado que no existen productos habilitados para la cuenta, cuando el cliente ingresa al catálogo, entonces el sistema muestra un estado vacío explícito.</td>
<td>EP07</td>
</tr>

<tr>
<td>US25</td>
<td>Buscar productos por nombre o código</td>
<td>Como cliente comercial (Hilda), quiero buscar productos por nombre o código, para ubicar rápidamente lo que necesito pedir.</td>
<td><strong>Escenario 1:</strong> Dado que el cliente tiene acceso al catálogo, cuando ingresa un nombre o código válido, entonces el sistema devuelve coincidencias dentro de su catálogo habilitado.<br><strong>Escenario 2:</strong> Dado que la búsqueda no encuentra coincidencias, cuando el cliente la ejecuta, entonces el sistema muestra un resultado vacío sin exponer productos ajenos.</td>
<td>EP07</td>
</tr>

<tr>
<td>US26</td>
<td>Filtrar el catálogo por categoría y conservación</td>
<td>Como cliente comercial (Hilda), quiero filtrar el catálogo por categoría y tipo de conservación, para explorar la oferta de forma más precisa.</td>
<td><strong>Escenario 1:</strong> Dado que el catálogo contiene clasificaciones configuradas, cuando el cliente aplica un filtro de categoría o conservación, entonces el sistema muestra solo los productos que cumplen esa condición.<br><strong>Escenario 2:</strong> Dado que el cliente combina búsqueda y filtros, cuando revisa el resultado, entonces el sistema conserva únicamente los productos que cumplen ambas condiciones.</td>
<td>EP07</td>
</tr>

<tr>
<td>US27</td>
<td>Ver detalle, disponibilidad y ficha técnica del producto</td>
<td>Como cliente comercial (Hilda), quiero ver el detalle, la disponibilidad y la ficha técnica de un producto, para comprar con mayor claridad y seguridad.</td>
<td><strong>Escenario 1:</strong> Dado que el producto está publicado, cuando el cliente abre su detalle, entonces el sistema muestra descripción, presentación, estado de disponibilidad y ficha técnica si fue registrada.<br><strong>Escenario 2:</strong> Dado que la ficha técnica no se encuentra disponible, cuando el cliente revisa el detalle, entonces el sistema indica la ausencia del documento sin inventar información.</td>
<td>EP07</td>
</tr>

<tr>
<td>US28</td>
<td>Publicar, ocultar y mantener productos del catálogo</td>
<td>Como supervisora comercial autorizada, quiero publicar, ocultar y mantener productos del catálogo, para controlar qué ve el cliente y con qué información.</td>
<td><strong>Escenario 1:</strong> Dado que el producto existe o se está creando, cuando la supervisora registra o actualiza su información y lo marca como publicado, entonces el sistema lo deja disponible para las cuentas habilitadas.<br><strong>Escenario 2:</strong> Dado que la supervisora marca el producto como oculto, cuando el cambio se guarda, entonces el sistema lo mantiene visible en gestión interna y lo retira del catálogo del cliente.</td>
<td>EP07</td>
</tr>

<tr>
<td><strong>EP08</strong></td>
<td><strong>Assisted Order Capture</strong></td>
<td>Agrupa las historias del flujo asistido para coordinación comercial, incluyendo identificación del cliente, captura móvil y alertas previas al envío.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US29</td>
<td>Crear un pedido asistido para un cliente</td>
<td>Como coordinadora comercial (Valeria), quiero crear un pedido asistido para un cliente, para registrar su solicitud dentro de un flujo estructurado.</td>
<td><strong>Escenario 1:</strong> Dado que la coordinadora tiene acceso interno, cuando inicia una captura asistida, entonces el sistema crea un pedido en estado `draft` asociado a la cuenta elegida.<br><strong>Escenario 2:</strong> Dado que el pedido ya existe como borrador, cuando la coordinadora vuelve a abrirlo, entonces el sistema recupera el mismo `draft` sin duplicarlo.</td>
<td>EP08</td>
</tr>

<tr>
<td>US30</td>
<td>Identificar al cliente por RUC o DNI y cargar condiciones</td>
<td>Como coordinadora comercial (Valeria), quiero identificar al cliente por RUC o DNI y cargar sus condiciones, para no validar manualmente cada operación.</td>
<td><strong>Escenario 1:</strong> Dado que la coordinadora ingresa un RUC o DNI registrado, cuando ejecuta la búsqueda, entonces el sistema carga la ficha del cliente, su lista de precios, crédito y saldo vencido.<br><strong>Escenario 2:</strong> Dado que el documento no existe en el padrón, cuando la coordinadora intenta continuar, entonces el sistema impide enviar el pedido hasta seleccionar o registrar un cliente válido con el rol autorizado.</td>
<td>EP08</td>
</tr>

<tr>
<td>US31</td>
<td>Registrar productos, cantidades y observaciones desde celular o tablet</td>
<td>Como coordinadora comercial (Valeria), quiero registrar productos, cantidades y observaciones desde celular o tablet, para capturar pedidos en oficina o campo sin depender de un escritorio.</td>
<td><strong>Escenario 1:</strong> Dado que la coordinadora usa un dispositivo móvil o tablet, cuando registra líneas del pedido, entonces el sistema le permite agregar productos, cantidades y observaciones dentro del mismo flujo asistido.<br><strong>Escenario 2:</strong> Dado que la coordinadora cambia de dispositivo o tamaño de pantalla, cuando continúa el registro, entonces el sistema mantiene las mismas validaciones de negocio del pedido.</td>
<td>EP08</td>
</tr>

<tr>
<td>US32</td>
<td>Visualizar alertas de stock, crédito y bloqueo antes de enviar</td>
<td>Como coordinadora comercial (Valeria), quiero visualizar alertas de stock, crédito y bloqueo antes de enviar el pedido, para evitar promesas imposibles de atender.</td>
<td><strong>Escenario 1:</strong> Dado que el borrador contiene líneas o condiciones inválidas, cuando la coordinadora intenta enviarlo, entonces el sistema alerta explícitamente si hay falta de stock, saldo vencido o crédito insuficiente.<br><strong>Escenario 2:</strong> Dado que existe una condición bloqueante, cuando la coordinadora confirma el envío, entonces el sistema impide mover el pedido de `draft` a `submitted`.</td>
<td>EP08</td>
</tr>

<tr>
<td>US33</td>
<td>Enviar el pedido asistido y dejar confirmación</td>
<td>Como coordinadora comercial (Valeria), quiero enviar el pedido asistido y dejar una confirmación trazable, para que el cliente y la operación tengan evidencia del registro.</td>
<td><strong>Escenario 1:</strong> Dado que el pedido asistido cumple las reglas mínimas, cuando la coordinadora lo envía, entonces el sistema cambia su estado a `submitted` y registra una confirmación con identificador de pedido.<br><strong>Escenario 2:</strong> Dado que el mismo borrador ya fue enviado correctamente, cuando la coordinadora intenta enviarlo otra vez, entonces el sistema evita una segunda confirmación sobre el mismo `draft`.</td>
<td>EP08</td>
</tr>

<tr>
<td><strong>EP09</strong></td>
<td><strong>B2B Self-Service Ordering</strong></td>
<td>Agrupa las historias del portal B2B del cliente comercial, desde el carrito o borrador hasta historial y repetición de compras.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US34</td>
<td>Crear un pedido desde el portal B2B</td>
<td>Como cliente comercial (Hilda), quiero crear un pedido desde el portal B2B, para abastecerme sin depender completamente de un mensaje o llamada.</td>
<td><strong>Escenario 1:</strong> Dado que el cliente autenticado accede al portal, cuando inicia una nueva compra, entonces el sistema crea un pedido en estado `draft` para su propia cuenta.<br><strong>Escenario 2:</strong> Dado que el cliente intenta operar sobre una cuenta ajena, cuando crea el pedido, entonces el sistema restringe la acción al contexto autenticado.</td>
<td>EP09</td>
</tr>

<tr>
<td>US35</td>
<td>Guardar un borrador y retomarlo luego</td>
<td>Como cliente comercial (Hilda), quiero guardar un borrador y retomarlo luego, para no perder la información de una compra que aún no termino.</td>
<td><strong>Escenario 1:</strong> Dado que el pedido está en `draft`, cuando el cliente decide guardarlo sin enviarlo, entonces el sistema conserva sus líneas y datos editables.<br><strong>Escenario 2:</strong> Dado que el borrador fue enviado o cancelado, cuando el cliente vuelve a consultarlo, entonces el sistema ya no lo muestra como editable.</td>
<td>EP09</td>
</tr>

<tr>
<td>US36</td>
<td>Repetir un pedido anterior</td>
<td>Como cliente comercial (Hilda), quiero repetir un pedido anterior, para acelerar compras recurrentes de mi negocio.</td>
<td><strong>Escenario 1:</strong> Dado que el cliente tiene pedidos previos registrados, cuando elige repetir uno, entonces el sistema crea un nuevo `draft` tomando como base el pedido anterior.<br><strong>Escenario 2:</strong> Dado que alguno de los productos del pedido anterior ya no está publicado, cuando se genera el nuevo `draft`, entonces el sistema marca esa diferencia antes del envío.</td>
<td>EP09</td>
</tr>

<tr>
<td>US37</td>
<td>Enviar el pedido y recibir confirmación</td>
<td>Como cliente comercial (Hilda), quiero enviar mi pedido y recibir una confirmación clara, para saber que el distribuidor ya recibió mi solicitud.</td>
<td><strong>Escenario 1:</strong> Dado que el borrador contiene líneas válidas y no tiene bloqueo comercial, cuando el cliente lo envía, entonces el sistema cambia el estado a `submitted` y devuelve una confirmación con identificador.<br><strong>Escenario 2:</strong> Dado que el pedido está vacío o bloqueado por condición comercial, cuando el cliente intenta enviarlo, entonces el sistema no registra la solicitud.</td>
<td>EP09</td>
</tr>

<tr>
<td>US38</td>
<td>Consultar historial y detalle de pedidos</td>
<td>Como cliente comercial (Hilda), quiero consultar mi historial y el detalle de mis pedidos, para revisar compras anteriores, estados y entregas.</td>
<td><strong>Escenario 1:</strong> Dado que el cliente tiene pedidos registrados, cuando accede al historial, entonces el sistema lista únicamente los pedidos de su propia cuenta.<br><strong>Escenario 2:</strong> Dado que el cliente abre el detalle de uno de sus pedidos, cuando revisa la información, entonces el sistema muestra líneas, estado actual e historial visible del pedido seleccionado.</td>
<td>EP09</td>
</tr>

<tr>
<td><strong>EP10</strong></td>
<td><strong>Delivery Tracking &amp; Predictability</strong></td>
<td>Agrupa las historias de seguimiento, ETA, incidencias, eventos de despacho y cierre con evidencia de entrega.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US39</td>
<td>Visualizar el estado actual y la ETA del pedido</td>
<td>Como cliente comercial (Hilda), quiero visualizar el estado actual y la ETA de mi pedido, para preparar mi recepción con mayor certeza.</td>
<td><strong>Escenario 1:</strong> Dado que el pedido existe y el usuario está autorizado, cuando consulta el seguimiento, entonces el sistema muestra el estado actual y la fecha u hora de su última actualización.<br><strong>Escenario 2:</strong> Dado que el pedido ya fue despachado y existe una ETA disponible, cuando el cliente revisa el seguimiento, entonces el sistema muestra la ventana estimada de llegada.</td>
<td>EP10</td>
</tr>

<tr>
<td>US40</td>
<td>Recibir visibilidad de demoras e incidencias</td>
<td>Como cliente comercial (Hilda), quiero recibir visibilidad de demoras e incidencias, para entender cambios relevantes sin perseguir al proveedor por teléfono.</td>
<td><strong>Escenario 1:</strong> Dado que un pedido tiene una demora o incidencia registrada como visible para el cliente, cuando el cliente consulta el seguimiento, entonces el sistema muestra esa observación junto al estado del pedido.<br><strong>Escenario 2:</strong> Dado que la observación fue marcada como interna, cuando el cliente revisa el seguimiento, entonces el sistema no la expone en el portal.</td>
<td>EP10</td>
</tr>

<tr>
<td>US41</td>
<td>Actualizar estados del pedido con secuencia válida</td>
<td>Como usuaria interna autorizada, quiero actualizar los estados del pedido con una secuencia válida, para reflejar el avance real de la atención sin generar trazabilidad incoherente.</td>
<td><strong>Escenario 1:</strong> Dado que el pedido está en `submitted`, `confirmed` o `in_preparation`, cuando una usuaria autorizada registra un cambio válido, entonces el sistema permite la transición según la secuencia `submitted -> confirmed -> in_preparation -> dispatched -> delivered`.<br><strong>Escenario 2:</strong> Dado que la transición propuesta salta un estado o intenta cancelar después de `dispatched`, cuando se intenta guardar, entonces el sistema rechaza la transición por secuencia inválida.</td>
<td>EP10</td>
</tr>

<tr>
<td>US42</td>
<td>Registrar despacho y prueba de entrega</td>
<td>Como chofer de reparto o personal autorizado (Pedro), quiero registrar el despacho y la prueba de entrega, para dejar evidencia clara del cierre del pedido.</td>
<td><strong>Escenario 1:</strong> Dado que el pedido está listo para salir, cuando el usuario autorizado registra el despacho, entonces el sistema cambia el estado a `dispatched` y crea un evento de salida.<br><strong>Escenario 2:</strong> Dado que el pedido va a cerrarse como entregado, cuando no existe al menos una evidencia de entrega o confirmación explícita, entonces el sistema impide moverlo a `delivered`.</td>
<td>EP10</td>
</tr>

<tr>
<td>US43</td>
<td>Consultar evidencia y cierre de la entrega</td>
<td>Como usuaria interna autorizada, quiero consultar la evidencia y el cierre de la entrega, para resolver reclamos o confirmar qué ocurrió al final del pedido.</td>
<td><strong>Escenario 1:</strong> Dado que un pedido ya fue entregado, cuando la usuaria autorizada abre su cierre, entonces el sistema muestra la evidencia registrada, el momento del cierre y el resumen de incidencias asociadas.<br><strong>Escenario 2:</strong> Dado que parte de la información de cierre es solo interna, cuando un cliente consulta el pedido, entonces el sistema expone únicamente la porción marcada como visible para cliente.</td>
<td>EP10</td>
</tr>

<tr>
<td><strong>EP11</strong></td>
<td><strong>Inventory, Expiry &amp; Operational Control</strong></td>
<td>Agrupa las historias de inventario, lotes, vencimientos, reservas y bloqueo de productos dentro del dominio operativo.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US44</td>
<td>Visualizar stock total, comprometido y disponible</td>
<td>Como supervisora comercial u operativa, quiero visualizar stock total, comprometido y disponible, para no prometer pedidos que la empresa no puede atender.</td>
<td><strong>Escenario 1:</strong> Dado que existen productos con inventario registrado, cuando la usuaria abre la vista de stock, entonces el sistema muestra por producto o SKU la cantidad total, comprometida y disponible.<br><strong>Escenario 2:</strong> Dado que un producto se encuentra oculto o bloqueado, cuando la usuaria lo consulta internamente, entonces el sistema mantiene su registro y estado visible para control interno.</td>
<td>EP11</td>
</tr>

<tr>
<td>US45</td>
<td>Registrar lotes, vencimientos y rangos térmicos</td>
<td>Como supervisora operativa autorizada, quiero registrar lotes, vencimientos y rangos térmicos, para mejorar la trazabilidad de productos sensibles.</td>
<td><strong>Escenario 1:</strong> Dado que el producto existe y admite trazabilidad, cuando la usuaria registra lote, fecha de vencimiento y rango térmico, entonces el sistema guarda la información asociada al producto o ingreso de stock.<br><strong>Escenario 2:</strong> Dado que la fecha o la referencia del producto es inválida, cuando se intenta guardar el registro, entonces el sistema rechaza la operación.</td>
<td>EP11</td>
</tr>

<tr>
<td>US46</td>
<td>Consultar alertas FEFO y productos próximos a vencer</td>
<td>Como supervisora operativa autorizada, quiero consultar alertas FEFO y productos próximos a vencer, para priorizar rotación y evitar pérdidas.</td>
<td><strong>Escenario 1:</strong> Dado que existen lotes con fecha de vencimiento registrada, cuando la usuaria consulta las alertas, entonces el sistema lista los productos cuya vigencia está dentro de la ventana configurada.<br><strong>Escenario 2:</strong> Dado que varios lotes cumplen la condición, cuando se presentan los resultados, entonces el sistema los ordena desde el vencimiento más próximo al más lejano.</td>
<td>EP11</td>
</tr>

<tr>
<td>US47</td>
<td>Reservar y liberar stock según el estado del pedido</td>
<td>Como supervisora operativa autorizada, quiero que el stock se reserve y se libere según el estado del pedido, para mantener la disponibilidad comercial consistente con la operación.</td>
<td><strong>Escenario 1:</strong> Dado que un pedido pasa a `confirmed`, cuando el sistema procesa el cambio, entonces reserva las unidades comprometidas y ajusta el stock disponible.<br><strong>Escenario 2:</strong> Dado que un pedido confirmado se cancela antes del despacho, cuando el sistema registra la cancelación, entonces libera las unidades reservadas.</td>
<td>EP11</td>
</tr>

<tr>
<td>US48</td>
<td>Bloquear un producto sin disponibilidad o con restricción operativa</td>
<td>Como supervisora operativa autorizada, quiero bloquear un producto sin disponibilidad o con restricción operativa, para evitar que siga entrando en pedidos nuevos.</td>
<td><strong>Escenario 1:</strong> Dado que un producto no debe venderse temporalmente, cuando la usuaria activa el bloqueo, entonces el sistema impide agregarlo a nuevos pedidos.<br><strong>Escenario 2:</strong> Dado que la restricción fue resuelta, cuando la usuaria retira el bloqueo, entonces el sistema vuelve a habilitar el producto según su condición comercial vigente.</td>
<td>EP11</td>
</tr>

<tr>
<td><strong>EP12</strong></td>
<td><strong>Commercial Conditions &amp; Customer Management</strong></td>
<td>Agrupa las historias de ficha de cliente, listas de precios, crédito, morosidad y consulta consolidada por cuenta comercial.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US49</td>
<td>Registrar y mantener la ficha del cliente comercial</td>
<td>Como usuaria interna autorizada, quiero registrar y mantener la ficha del cliente comercial, para operar pedidos y seguimiento con información confiable.</td>
<td><strong>Escenario 1:</strong> Dado que la usuaria cuenta con los datos obligatorios del cliente, cuando crea o actualiza la ficha, entonces el sistema registra documento fiscal, razón social, contacto y datos de entrega.<br><strong>Escenario 2:</strong> Dado que el documento fiscal ya existe en otra ficha, cuando la usuaria intenta duplicarlo, entonces el sistema rechaza el registro.</td>
<td>EP12</td>
</tr>

<tr>
<td>US50</td>
<td>Asignar listas de precio, crédito y condiciones de pago</td>
<td>Como usuaria interna autorizada, quiero asignar listas de precio, crédito y condiciones de pago, para adaptar el comportamiento comercial de cada cliente.</td>
<td><strong>Escenario 1:</strong> Dado que el cliente existe, cuando la usuaria registra una lista de precios, una condición de pago y un límite de crédito, entonces el sistema deja esa configuración como activa para la cuenta.<br><strong>Escenario 2:</strong> Dado que el cliente ya tenía una configuración activa, cuando la usuaria guarda una nueva, entonces el sistema conserva la nueva versión como vigente y mantiene trazabilidad del cambio.</td>
<td>EP12</td>
</tr>

<tr>
<td>US51</td>
<td>Visualizar saldo vigente y morosidad del cliente</td>
<td>Como coordinadora comercial o supervisora autorizada, quiero visualizar el saldo vigente y la morosidad del cliente, para decidir si un pedido puede continuar.</td>
<td><strong>Escenario 1:</strong> Dado que la cuenta del cliente tiene información comercial registrada, cuando la usuaria abre su perfil o lo identifica por RUC/DNI, entonces el sistema muestra saldo vigente, saldo vencido y crédito disponible.<br><strong>Escenario 2:</strong> Dado que la visibilidad comercial del cliente es parcial en el portal, cuando el propio cliente revisa su cuenta, entonces el sistema expone solo la información permitida para ese rol.</td>
<td>EP12</td>
</tr>

<tr>
<td>US52</td>
<td>Bloquear un pedido por regla de crédito</td>
<td>Como sistema comercial, quiero bloquear un pedido por regla de crédito, para evitar registrar operaciones que incumplen las condiciones definidas para el cliente.</td>
<td><strong>Escenario 1:</strong> Dado que el cliente tiene saldo vencido mayor a cero o que el total del pedido supera su crédito disponible, cuando se intenta enviar o confirmar el pedido, entonces el sistema bloquea la operación.<br><strong>Escenario 2:</strong> Dado que la operación fue bloqueada por una regla comercial, cuando el sistema responde al usuario, entonces comunica explícitamente la razón del bloqueo.</td>
<td>EP12</td>
</tr>

<tr>
<td>US53</td>
<td>Consultar historial comercial y operativo por cliente</td>
<td>Como usuaria interna autorizada, quiero consultar el historial comercial y operativo por cliente, para revisar su comportamiento, incidencias y estado general.</td>
<td><strong>Escenario 1:</strong> Dado que el cliente tiene actividad previa, cuando la usuaria consulta su resumen, entonces el sistema muestra pedidos, estados relevantes e incidencias asociadas a esa cuenta.<br><strong>Escenario 2:</strong> Dado que el cliente fue deshabilitado para nuevas operaciones, cuando la usuaria consulta su ficha, entonces el sistema conserva su historial disponible.</td>
<td>EP12</td>
</tr>

<tr>
<td><strong>EP13</strong></td>
<td><strong>Identity &amp; Access</strong></td>
<td>Agrupa las historias de autenticación y gestión de cuentas internas o de cliente para el uso controlado de la plataforma.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US54</td>
<td>Iniciar sesión como colaboradora interna</td>
<td>Como usuaria interna, quiero iniciar sesión en la plataforma, para acceder únicamente a los módulos que me corresponden.</td>
<td><strong>Escenario 1:</strong> Dado que la cuenta interna está activa y las credenciales son válidas, cuando la usuaria inicia sesión, entonces el sistema la dirige a su entorno interno autorizado.<br><strong>Escenario 2:</strong> Dado que las credenciales son inválidas o la cuenta está inactiva, cuando se intenta ingresar, entonces el sistema deniega el acceso.</td>
<td>EP13</td>
</tr>

<tr>
<td>US55</td>
<td>Iniciar sesión como cliente comercial</td>
<td>Como cliente comercial (Hilda), quiero iniciar sesión en el portal, para consultar catálogo, pedidos y seguimiento de mi cuenta.</td>
<td><strong>Escenario 1:</strong> Dado que la cuenta del cliente está activa y sus credenciales son válidas, cuando inicia sesión, entonces el sistema le permite acceder a su portal B2B.<br><strong>Escenario 2:</strong> Dado que la cuenta fue deshabilitada, cuando el cliente intenta autenticarse, entonces el sistema impide el acceso a sus operaciones.</td>
<td>EP13</td>
</tr>

<tr>
<td>US56</td>
<td>Recuperar el acceso a la cuenta</td>
<td>Como usuaria interna o cliente comercial, quiero recuperar el acceso a mi cuenta, para volver a usar la plataforma cuando olvido mis credenciales.</td>
<td><strong>Escenario 1:</strong> Dado que la cuenta existe y cumple las condiciones de recuperación, cuando la usuaria solicita recuperar el acceso, entonces el sistema inicia el flujo definido de recuperación.<br><strong>Escenario 2:</strong> Dado que el token o enlace de recuperación ya expiró o es inválido, cuando la usuaria intenta usarlo, entonces el sistema rechaza el cambio de contraseña.</td>
<td>EP13</td>
</tr>

<tr>
<td>US57</td>
<td>Gestionar cuentas internas</td>
<td>Como administradora autorizada, quiero gestionar cuentas internas, para controlar quién puede ingresar al sistema y con qué rol.</td>
<td><strong>Escenario 1:</strong> Dado que la administradora tiene permisos suficientes, cuando crea, activa o desactiva una cuenta interna, entonces el sistema aplica el cambio y mantiene el rol asignado.<br><strong>Escenario 2:</strong> Dado que un usuario sin permisos intenta administrar cuentas internas, cuando ejecuta la operación, entonces el sistema la rechaza por falta de autorización.</td>
<td>EP13</td>
</tr>

<tr>
<td><strong>EP14</strong></td>
<td><strong>Technical Stories for REST API</strong></td>
<td>Agrupa las technical stories del RESTful API. Se utiliza el rol Developer y los criterios se formulan como interacciones de request / response alineadas al dominio actualizado.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US58</td>
<td>Exponer endpoint de catálogo</td>
<td>Como Developer, quiero exponer un endpoint de catálogo, para que el portal y la aplicación interna consulten los productos habilitados según el contexto autenticado.</td>
<td><strong>Escenario 1:</strong> Dado que el request autenticado es válido, cuando la aplicación consume el endpoint de catálogo, entonces el API responde con los productos habilitados para ese contexto.<br><strong>Escenario 2:</strong> Dado que los parámetros del request no cumplen el contrato, cuando el endpoint es invocado, entonces el API responde con un error de cliente definido por contrato.</td>
<td>EP14</td>
</tr>

<tr>
<td>US59</td>
<td>Exponer endpoint de detalle y ficha técnica</td>
<td>Como Developer, quiero exponer un endpoint de detalle y ficha técnica de producto, para que el portal muestre información ampliada y documentos asociados.</td>
<td><strong>Escenario 1:</strong> Dado que el identificador del producto existe y es accesible, cuando la aplicación consume el endpoint, entonces el API responde con el detalle del producto y la referencia de la ficha técnica si existe.<br><strong>Escenario 2:</strong> Dado que el identificador no corresponde a un recurso válido, cuando el endpoint es consultado, entonces el API responde con la condición de recurso inexistente.</td>
<td>EP14</td>
</tr>

<tr>
<td>US60</td>
<td>Exponer endpoint de consulta de cliente por RUC/DNI y condiciones comerciales</td>
<td>Como Developer, quiero exponer un endpoint de consulta de cliente por RUC/DNI y condiciones comerciales, para soportar el flujo asistido de captura del pedido.</td>
<td><strong>Escenario 1:</strong> Dado que la consulta es realizada por un usuario interno autorizado y el documento existe, cuando el endpoint es invocado, entonces el API responde con identidad del cliente, lista de precios, crédito disponible y saldo vencido.<br><strong>Escenario 2:</strong> Dado que la consulta proviene de un actor no autorizado, cuando se intenta consumir el endpoint, entonces el API responde con un error de acceso.</td>
<td>EP14</td>
</tr>

<tr>
<td>US61</td>
<td>Exponer endpoint de registro de pedido</td>
<td>Como Developer, quiero exponer un endpoint de registro de pedido, para que el portal B2B y la captura asistida puedan enviar solicitudes estructuradas.</td>
<td><strong>Escenario 1:</strong> Dado que el request contiene cliente, líneas y reglas comerciales válidas, cuando la aplicación invoca el endpoint, entonces el API crea el pedido en estado `submitted`.<br><strong>Escenario 2:</strong> Dado que el pedido incumple stock o crédito, cuando el request es procesado, entonces el API responde con un error de regla de negocio y no crea el pedido.</td>
<td>EP14</td>
</tr>

<tr>
<td>US62</td>
<td>Exponer endpoint de tracking y ETA</td>
<td>Como Developer, quiero exponer un endpoint de tracking y ETA, para que la aplicación muestre seguimiento actualizado del pedido.</td>
<td><strong>Escenario 1:</strong> Dado que el pedido existe y el contexto autenticado está autorizado, cuando la aplicación consulta el endpoint, entonces el API responde con estado actual, historial visible y ETA cuando existe.<br><strong>Escenario 2:</strong> Dado que el pedido no pertenece al contexto autorizado, cuando el endpoint es invocado, entonces el API responde con un error de acceso.</td>
<td>EP14</td>
</tr>

<tr>
<td>US63</td>
<td>Exponer endpoint de eventos de despacho y POD</td>
<td>Como Developer, quiero exponer un endpoint de eventos de despacho y POD, para registrar salida, incidencias y cierre de entrega desde los canales autorizados.</td>
<td><strong>Escenario 1:</strong> Dado que el pedido o envío existe y el usuario está autorizado, cuando se envía un evento válido de despacho o una prueba de entrega, entonces el API registra la evidencia y la asocia al recurso correcto.<br><strong>Escenario 2:</strong> Dado que el evento no corresponde al estado actual del pedido o el recurso no existe, cuando se procesa el request, entonces el API responde con un error de negocio o recurso inexistente.</td>
<td>EP14</td>
</tr>

<tr>
<td>US64</td>
<td>Exponer endpoint de autenticación y recuperación de acceso</td>
<td>Como Developer, quiero exponer un endpoint de autenticación y recuperación de acceso, para que usuarios internos y clientes operen con sesiones válidas y recuperación controlada.</td>
<td><strong>Escenario 1:</strong> Dado que las credenciales o el request de recuperación son válidos, cuando la aplicación consume el endpoint correspondiente, entonces el API responde con la estructura de autenticación o recuperación definida por contrato.<br><strong>Escenario 2:</strong> Dado que la cuenta está inactiva, las credenciales son incorrectas o el token de recuperación expiró, cuando se consume el endpoint, entonces el API responde con un error de autenticación o recuperación sin exponer datos sensibles.</td>
<td>EP14</td>
</tr>

</tbody>
</table>

---

*Nota.* La tabla de user stories integra el sitio público, el producto transaccional y las technical stories del API bajo una sola taxonomía coherente con la investigación y el landing page. Elaboración propia.

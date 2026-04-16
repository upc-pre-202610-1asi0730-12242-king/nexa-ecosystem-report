# Capítulo III: Requirements Specification
## 3.1.	User Stories

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

<!-- EP01 -->
<tr>
<td><strong>EP01</strong></td>
<td><strong>Landing Page &amp; Acquisition</strong></td>
<td>Agrupa los user stories relacionados con el sitio web estático (Landing Page), orientado a comunicar la propuesta de valor de Nexa, presentar sus beneficios para los dos segmentos objetivo y facilitar el primer contacto comercial.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US01</td>
<td>Ver propuesta de valor para distribuidores</td>
<td>Como visitante del segmento empresa distribuidora, deseo visualizar la propuesta de valor de la plataforma, para comprender qué problema resuelve en la distribución de productos refrigerados.</td>
<td>
<strong>Escenario 1: Visualización de propuesta central</strong><br>
• Dado que el visitante accede a la Landing Page<br>
• Cuando revisa la sección principal del sitio<br>
• Entonces el sistema presenta una explicación clara del problema, la solución y el enfoque SaaS B2B orientado a distribuidores.<br><br>
<strong>Escenario 2: Comprensión sin registro previo</strong><br>
• Dado que el visitante ingresa al sitio por primera vez<br>
• Cuando explora la información principal<br>
• Entonces el sistema permite comprender la propuesta sin requerir autenticación ni interacción previa.<br><br>
<strong>Escenario 3: Coherencia con el dominio del negocio</strong><br>
• Dado que el contenido del sitio describe la solución<br>
• Cuando el visitante revisa la propuesta de valor<br>
• Entonces el sistema la comunica en relación con pedidos B2B, control operativo, visibilidad comercial y cadena de frío, sin prometer funciones ajenas al dominio definido.
</td>
<td>EP01</td>
</tr>

<tr>
<td>US02</td>
<td>Conocer beneficios operativos del servicio</td>
<td>Como visitante del segmento empresa distribuidora, deseo conocer los beneficios operativos del servicio, para evaluar si la solución se adapta a mi operación actual.</td>
<td>
<strong>Escenario 1: Consulta de beneficios</strong><br>
• Dado que el visitante revisa la información del servicio<br>
• Cuando consulta la sección de beneficios<br>
• Entonces el sistema muestra beneficios relacionados con catálogo, pedidos, stock básico y seguimiento operativo.<br><br>
<strong>Escenario 2: Beneficios orientados al negocio</strong><br>
• Dado que el visitante busca comprender el impacto de la solución<br>
• Cuando analiza el contenido de beneficios<br>
• Entonces el sistema comunica efectos asociados a reducción de errores, mayor orden operativo y mejor trazabilidad comercial.<br><br>
<strong>Escenario 3: Beneficios alineados al MVP</strong><br>
• Dado que el sitio comunica el valor del producto<br>
• Cuando el visitante revisa los beneficios operativos<br>
• Entonces el sistema no atribuye al MVP capacidades avanzadas de ruteo, IoT o gestión integral de flota que pertenecen al roadmap futuro.
</td>
<td>EP01</td>
</tr>

<tr>
<td>US03</td>
<td>Conocer beneficios para clientes comerciales</td>
<td>Como visitante del segmento cliente comercial, deseo conocer cómo la plataforma mejora el abastecimiento B2B, para identificar el valor que tendría en mi proceso de compra.</td>
<td>
<strong>Escenario 1: Información para cliente comercial</strong><br>
• Dado que el visitante pertenece al segmento cliente comercial<br>
• Cuando consulta el contenido dirigido a su perfil<br>
• Entonces el sistema presenta beneficios relacionados con autonomía, visibilidad del catálogo y seguimiento del pedido.<br><br>
<strong>Escenario 2: Contenido diferenciado por segmento</strong><br>
• Dado que el sitio contiene contenido para ambos segmentos<br>
• Cuando el visitante explora la Landing Page<br>
• Entonces el sistema distingue la información dirigida a distribuidores y a clientes comerciales sin generar ambigüedad.<br><br>
<strong>Escenario 3: Contenido relevante para abastecimiento</strong><br>
• Dado que el visitante evalúa la utilidad del producto para su operación de compra<br>
• Cuando revisa los beneficios para clientes comerciales<br>
• Entonces el sistema comunica valor asociado a consultar productos, generar pedidos y revisar estados sin depender de un canal informal.
</td>
<td>EP01</td>
</tr>

<tr>
<td>US04</td>
<td>Visualizar módulos principales del producto</td>
<td>Como visitante, deseo visualizar los módulos principales del producto, para comprender el alcance actual de la solución.</td>
<td>
<strong>Escenario 1: Presentación del alcance actual</strong><br>
• Dado que el visitante consulta la descripción del producto<br>
• Cuando revisa las funcionalidades principales<br>
• Entonces el sistema presenta de forma clara el catálogo, el stock básico, los pedidos y el seguimiento operativo como parte del MVP.<br><br>
<strong>Escenario 2: Coherencia con el MVP</strong><br>
• Dado que el visitante explora el contenido funcional del sitio<br>
• Cuando compara lo ofrecido con el alcance actual<br>
• Entonces el sistema no presenta como implementadas funciones que pertenecen solo a la visión futura.<br><br>
<strong>Escenario 3: Relación entre módulo y valor</strong><br>
• Dado que el visitante revisa los módulos del producto<br>
• Cuando lee la explicación de cada uno<br>
• Entonces el sistema asocia cada módulo con el problema operativo que ayuda a resolver.
</td>
<td>EP01</td>
</tr>

<tr>
<td>US05</td>
<td>Conocer visión futura del producto</td>
<td>Como visitante, deseo conocer la visión futura del producto, para entender su potencial de crecimiento sin confundirla con el alcance actual.</td>
<td>
<strong>Escenario 1: Presentación de roadmap</strong><br>
• Dado que el visitante consulta la proyección del producto<br>
• Cuando revisa la sección de evolución futura<br>
• Entonces el sistema comunica que la solución podrá crecer hacia flota, rutas, monitoreo de carga e integración IoT en etapas posteriores.<br><br>
<strong>Escenario 2: Diferenciación entre presente y futuro</strong><br>
• Dado que el sitio presenta funciones actuales y futuras<br>
• Cuando el visitante analiza la información<br>
• Entonces el sistema diferencia de forma explícita el roadmap del alcance actual del proyecto.<br><br>
<strong>Escenario 3: Roadmap sin contradicción con la propuesta actual</strong><br>
• Dado que el visitante compara la visión futura con el MVP<br>
• Cuando revisa ambas secciones<br>
• Entonces el sistema mantiene consistencia entre lo actualmente ofrecido y lo proyectado para fases posteriores.
</td>
<td>EP01</td>
</tr>

<tr>
<td>US06</td>
<td>Visualizar niveles del servicio</td>
<td>Como visitante del segmento empresa distribuidora, deseo visualizar los niveles del servicio, para identificar cuál se ajusta mejor al tamaño de mi empresa.</td>
<td>
<strong>Escenario 1: Consulta de niveles</strong><br>
• Dado que el visitante revisa la oferta comercial<br>
• Cuando accede a la sección de niveles del servicio<br>
• Entonces el sistema presenta opciones con diferencias comprensibles para empresas de distintos tamaños.<br><br>
<strong>Escenario 2: Comparación básica</strong><br>
• Dado que el visitante evalúa las alternativas del servicio<br>
• Cuando compara las opciones disponibles<br>
• Entonces el sistema permite identificar diferencias de valor entre los niveles del servicio.<br><br>
<strong>Escenario 3: Información no ambigua</strong><br>
• Dado que los niveles del servicio poseen alcances distintos<br>
• Cuando el visitante revisa sus características<br>
• Entonces el sistema comunica claramente qué cambia entre niveles sin mezclar beneficios comunes con beneficios específicos.
</td>
<td>EP01</td>
</tr>

<tr>
<td>US07</td>
<td>Solicitar contacto comercial</td>
<td>Como visitante del segmento empresa distribuidora, deseo solicitar contacto comercial, para iniciar una conversación sobre la implementación del servicio.</td>
<td>
<strong>Escenario 1: Solicitud de contacto</strong><br>
• Dado que el visitante decide solicitar información<br>
• Cuando completa y envía sus datos de contacto<br>
• Entonces el sistema registra la solicitud y confirma que el contacto comercial fue recibido.<br><br>
<strong>Escenario 2: Datos obligatorios faltantes</strong><br>
• Dado que la solicitud de contacto requiere información básica<br>
• Cuando el visitante intenta enviarla incompleta<br>
• Entonces el sistema indica que faltan datos requeridos y evita registrar una solicitud incompleta.<br><br>
<strong>Escenario 3: Prevención de duplicidad inmediata</strong><br>
• Dado que el visitante ya envió correctamente la solicitud<br>
• Cuando intenta reenviarla de forma consecutiva sin cambios<br>
• Entonces el sistema evita generar registros duplicados involuntarios o comunica que la solicitud ya fue recibida.
</td>
<td>EP01</td>
</tr>

<tr>
<td>US08</td>
<td>Navegar según perfil de visitante</td>
<td>Como visitante, deseo navegar hacia la sección adecuada según mi perfil, para acceder más rápido a la información más relevante para mi caso.</td>
<td>
<strong>Escenario 1: Navegación segmentada</strong><br>
• Dado que la Landing Page contiene rutas para distintos perfiles<br>
• Cuando el visitante selecciona la opción correspondiente a su perfil<br>
• Entonces el sistema dirige al contenido asociado al segmento elegido.<br><br>
<strong>Escenario 2: Regreso a navegación general</strong><br>
• Dado que el visitante desea revisar contenido adicional<br>
• Cuando continúa explorando el sitio<br>
• Entonces el sistema permite navegar libremente entre secciones sin perder contexto.<br><br>
<strong>Escenario 3: Selección válida de rutas</strong><br>
• Dado que existen accesos directos por perfil<br>
• Cuando el visitante utiliza uno de ellos<br>
• Entonces el sistema lo dirige a una sección existente y alineada con el perfil elegido, sin redirigir a contenido irrelevante.
</td>
<td>EP01</td>
</tr>

<!-- EP02 -->
<tr>
<td><strong>EP02</strong></td>
<td><strong>Product Catalog &amp; Discovery</strong></td>
<td>Agrupa los user stories relacionados con la consulta y administración del catálogo especializado de productos, considerando atributos relevantes para la comercialización de bienes refrigerados.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US09</td>
<td>Consultar catálogo disponible</td>
<td>Como cliente comercial, deseo consultar el catálogo disponible, para identificar los productos que puedo solicitar a mi distribuidor.</td>
<td>
<strong>Escenario 1: Consulta general del catálogo</strong><br>
• Dado que el cliente comercial accede al módulo de catálogo<br>
• Cuando solicita visualizar la oferta disponible<br>
• Entonces el sistema muestra los productos comercialmente habilitados por la empresa distribuidora.<br><br>
<strong>Escenario 2: Catálogo sin productos disponibles</strong><br>
• Dado que no existen productos habilitados para el cliente<br>
• Cuando el cliente comercial intenta consultar el catálogo<br>
• Entonces el sistema informa que no hay productos disponibles para consulta.<br><br>
<strong>Escenario 3: Exclusión de productos no habilitados</strong><br>
• Dado que existen productos inactivos o no disponibles comercialmente<br>
• Cuando el cliente consulta el catálogo<br>
• Entonces el sistema no los presenta como parte de la oferta disponible.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US10</td>
<td>Buscar productos por nombre</td>
<td>Como cliente comercial, deseo buscar productos por nombre, para ubicar rápidamente los ítems que necesito.</td>
<td>
<strong>Escenario 1: Búsqueda exitosa</strong><br>
• Dado que el catálogo contiene productos registrados<br>
• Cuando el cliente comercial realiza una búsqueda por nombre<br>
• Entonces el sistema devuelve los productos que coinciden con el criterio ingresado.<br><br>
<strong>Escenario 2: Búsqueda sin coincidencias</strong><br>
• Dado que el criterio de búsqueda no coincide con productos del catálogo<br>
• Cuando el cliente comercial ejecuta la búsqueda<br>
• Entonces el sistema informa que no se encontraron resultados.<br><br>
<strong>Escenario 3: Búsqueda sobre productos habilitados</strong><br>
• Dado que existen productos registrados pero no disponibles para el cliente<br>
• Cuando el cliente realiza la búsqueda<br>
• Entonces el sistema solo devuelve resultados que forman parte de la oferta comercial habilitada.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US11</td>
<td>Filtrar productos por categoría</td>
<td>Como cliente comercial, deseo filtrar productos por categoría, para explorar el catálogo de manera más eficiente.</td>
<td>
<strong>Escenario 1: Filtrado por categoría</strong><br>
• Dado que el catálogo contiene productos agrupados por categoría<br>
• Cuando el cliente comercial aplica un filtro de categoría<br>
• Entonces el sistema muestra solo los productos correspondientes a la categoría seleccionada.<br><br>
<strong>Escenario 2: Filtro sin resultados</strong><br>
• Dado que no existen productos disponibles en la categoría filtrada<br>
• Cuando el cliente comercial aplica el filtro<br>
• Entonces el sistema informa que no hay productos para esa selección.<br><br>
<strong>Escenario 3: Combinación con búsqueda activa</strong><br>
• Dado que el cliente mantiene un criterio de búsqueda y aplica además un filtro de categoría<br>
• Cuando solicita ver los resultados<br>
• Entonces el sistema refleja únicamente los productos que cumplen ambas condiciones.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US12</td>
<td>Visualizar disponibilidad comercial</td>
<td>Como cliente comercial, deseo visualizar la disponibilidad de los productos, para evitar solicitar ítems no disponibles.</td>
<td>
<strong>Escenario 1: Disponibilidad visible</strong><br>
• Dado que el producto tiene estado de disponibilidad registrado<br>
• Cuando el cliente comercial revisa el catálogo<br>
• Entonces el sistema muestra si el producto está disponible para pedido.<br><br>
<strong>Escenario 2: Producto no disponible</strong><br>
• Dado que el producto no está disponible para solicitud<br>
• Cuando el cliente comercial revisa su información<br>
• Entonces el sistema muestra su indisponibilidad y evita interpretaciones ambiguas.<br><br>
<strong>Escenario 3: Consistencia entre detalle y listado</strong><br>
• Dado que el producto aparece en el catálogo y posee detalle consultable<br>
• Cuando el cliente revisa ambas vistas<br>
• Entonces el sistema mantiene el mismo estado de disponibilidad en ambas representaciones.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US13</td>
<td>Ver detalle del producto</td>
<td>Como cliente comercial, deseo ver el detalle de un producto, para revisar su información comercial antes de incluirlo en un pedido.</td>
<td>
<strong>Escenario 1: Acceso al detalle</strong><br>
• Dado que el producto se encuentra en el catálogo<br>
• Cuando el cliente comercial consulta su detalle<br>
• Entonces el sistema muestra información ampliada del producto seleccionado.<br><br>
<strong>Escenario 2: Detalle inexistente</strong><br>
• Dado que el producto solicitado no existe o no está habilitado<br>
• Cuando el cliente comercial intenta consultar su detalle<br>
• Entonces el sistema informa que el producto no se encuentra disponible.<br><br>
<strong>Escenario 3: Detalle de producto desactivado</strong><br>
• Dado que el producto dejó de estar habilitado después de haber sido visible previamente<br>
• Cuando el cliente intenta consultar su detalle mediante un acceso anterior<br>
• Entonces el sistema restringe la consulta o comunica que el producto ya no se encuentra disponible comercialmente.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US14</td>
<td>Visualizar atributos de conservación</td>
<td>Como cliente comercial, deseo visualizar atributos relevantes del producto, como conservación o presentación, para comprar con mayor seguridad.</td>
<td>
<strong>Escenario 1: Visualización de conservación</strong><br>
• Dado que el producto tiene atributos de conservación definidos<br>
• Cuando el cliente comercial consulta su detalle<br>
• Entonces el sistema muestra información relevante sobre conservación y presentación.<br><br>
<strong>Escenario 2: Atributos no registrados</strong><br>
• Dado que el producto no cuenta con todos sus atributos completos<br>
• Cuando el cliente comercial revisa el detalle<br>
• Entonces el sistema muestra solo la información disponible sin presentar datos inexistentes.<br><br>
<strong>Escenario 3: Persistencia de atributos actualizados</strong><br>
• Dado que los atributos del producto fueron actualizados por la empresa distribuidora<br>
• Cuando el cliente comercial vuelve a consultar el detalle<br>
• Entonces el sistema refleja la versión vigente de la información registrada.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US15</td>
<td>Visualizar formato de venta</td>
<td>Como cliente comercial, deseo visualizar unidades o formatos de venta por producto, para elegir correctamente la presentación requerida.</td>
<td>
<strong>Escenario 1: Formatos disponibles</strong><br>
• Dado que el producto cuenta con formatos de venta definidos<br>
• Cuando el cliente comercial consulta su detalle<br>
• Entonces el sistema muestra las presentaciones comerciales configuradas para el producto.<br><br>
<strong>Escenario 2: Sin formatos alternativos</strong><br>
• Dado que el producto solo tiene una presentación disponible<br>
• Cuando el cliente comercial revisa el detalle<br>
• Entonces el sistema muestra la presentación única registrada.<br><br>
<strong>Escenario 3: Formato coherente con el pedido</strong><br>
• Dado que el cliente comercial consulta un producto antes de agregarlo al pedido<br>
• Cuando revisa sus formatos de venta<br>
• Entonces el sistema presenta opciones consistentes con las presentaciones válidas para solicitud.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US16</td>
<td>Registrar nuevos productos</td>
<td>Como representante de la empresa distribuidora, deseo registrar nuevos productos en el catálogo, para mantener actualizada mi oferta comercial.</td>
<td>
<strong>Escenario 1: Registro exitoso</strong><br>
• Dado que la empresa distribuidora dispone de la información mínima del producto<br>
• Cuando el representante registra un nuevo producto<br>
• Entonces el sistema almacena el producto y lo deja disponible para gestión posterior.<br><br>
<strong>Escenario 2: Datos obligatorios incompletos</strong><br>
• Dado que el registro del producto carece de información requerida<br>
• Cuando el representante intenta registrar el producto<br>
• Entonces el sistema indica los datos faltantes y evita el registro incompleto.<br><br>
<strong>Escenario 3: Prevención de duplicado lógico</strong><br>
• Dado que ya existe un producto equivalente bajo la misma identificación comercial definida por la empresa<br>
• Cuando el representante intenta registrarlo nuevamente<br>
• Entonces el sistema informa la posible duplicidad y evita crear un registro inconsistente.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US17</td>
<td>Editar información del producto</td>
<td>Como representante de la empresa distribuidora, deseo editar la información de mis productos, para corregir o actualizar datos del catálogo.</td>
<td>
<strong>Escenario 1: Actualización exitosa</strong><br>
• Dado que el producto existe en el catálogo<br>
• Cuando el representante modifica su información<br>
• Entonces el sistema guarda los cambios y actualiza la información del producto.<br><br>
<strong>Escenario 2: Producto no encontrado</strong><br>
• Dado que el producto ya no existe o no está disponible para edición<br>
• Cuando el representante intenta modificarlo<br>
• Entonces el sistema informa que el producto no puede editarse.<br><br>
<strong>Escenario 3: Edición con valores inválidos</strong><br>
• Dado que la actualización propuesta no cumple con las reglas mínimas del negocio<br>
• Cuando el representante intenta guardarla<br>
• Entonces el sistema rechaza los cambios inválidos y mantiene la versión anterior registrada.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US18</td>
<td>Activar o desactivar productos</td>
<td>Como representante de la empresa distribuidora, deseo activar o desactivar productos del catálogo, para controlar qué ítems están disponibles comercialmente.</td>
<td>
<strong>Escenario 1: Desactivación exitosa</strong><br>
• Dado que el producto está activo en el catálogo<br>
• Cuando el representante cambia su estado a inactivo<br>
• Entonces el sistema lo retira de la oferta comercial sin eliminar su registro.<br><br>
<strong>Escenario 2: Reactivación exitosa</strong><br>
• Dado que el producto está inactivo<br>
• Cuando el representante cambia su estado a activo<br>
• Entonces el sistema vuelve a mostrarlo como disponible para operación comercial.<br><br>
<strong>Escenario 3: Coherencia con consultas del cliente</strong><br>
• Dado que el estado comercial del producto fue modificado<br>
• Cuando un cliente comercial consulta el catálogo posteriormente<br>
• Entonces el sistema refleja el cambio según la activación o desactivación vigente.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US19</td>
<td>Organizar productos por categorías</td>
<td>Como representante de la empresa distribuidora, deseo organizar mis productos por categorías, para facilitar su gestión interna y la navegación del cliente.</td>
<td>
<strong>Escenario 1: Asignación de categoría</strong><br>
• Dado que el producto existe en el catálogo<br>
• Cuando el representante define o actualiza su categoría<br>
• Entonces el sistema guarda la clasificación del producto.<br><br>
<strong>Escenario 2: Categoría inexistente</strong><br>
• Dado que la categoría elegida no está disponible en el sistema<br>
• Cuando el representante intenta asignarla<br>
• Entonces el sistema informa que la clasificación no es válida.<br><br>
<strong>Escenario 3: Repercusión en la navegación del cliente</strong><br>
• Dado que el producto ya fue clasificado correctamente<br>
• Cuando el cliente comercial filtra el catálogo por categoría<br>
• Entonces el sistema lo muestra dentro de la clasificación correspondiente.
</td>
<td>EP02</td>
</tr>

<tr>
<td>US20</td>
<td>Definir atributos comerciales y de conservación</td>
<td>Como representante de la empresa distribuidora, deseo definir atributos básicos de conservación y vida útil por producto, para reflejar información relevante del negocio.</td>
<td>
<strong>Escenario 1: Definición de atributos</strong><br>
• Dado que el producto existe en el catálogo<br>
• Cuando el representante registra atributos de conservación y vida útil<br>
• Entonces el sistema almacena la información y la asocia al producto.<br><br>
<strong>Escenario 2: Valores inconsistentes</strong><br>
• Dado que los valores registrados no cumplen reglas básicas del negocio<br>
• Cuando el representante intenta guardarlos<br>
• Entonces el sistema informa la inconsistencia y evita registrar datos inválidos.<br><br>
<strong>Escenario 3: Actualización visible en el detalle del producto</strong><br>
• Dado que el representante guardó atributos válidos de conservación<br>
• Cuando el cliente comercial consulta el detalle del producto<br>
• Entonces el sistema muestra los atributos vigentes asociados a ese producto.
</td>
<td>EP02</td>
</tr>

<!-- EP03 -->
<tr>
<td><strong>EP03</strong></td>
<td><strong>B2B Order Placement</strong></td>
<td>Agrupa los user stories relacionados con la creación, revisión y envío de pedidos B2B por parte de los clientes comerciales, desde un canal estructurado.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US21</td>
<td>Crear pedido desde el catálogo</td>
<td>Como cliente comercial, deseo crear un pedido desde el catálogo, para centralizar mis solicitudes en un canal estructurado.</td>
<td>
<strong>Escenario 1: Creación de pedido</strong><br>
• Dado que el cliente comercial tiene acceso al catálogo<br>
• Cuando inicia un nuevo pedido<br>
• Entonces el sistema crea una solicitud en estado inicial para ser completada.<br><br>
<strong>Escenario 2: Inicio sin pedido activo</strong><br>
• Dado que el cliente no tiene un pedido en edición<br>
• Cuando inicia una nueva operación de compra<br>
• Entonces el sistema habilita un pedido nuevo sin requerir procesos manuales externos.<br><br>
<strong>Escenario 3: Reanudación de pedido en curso</strong><br>
• Dado que el cliente ya mantiene un pedido en edición no enviado<br>
• Cuando intenta iniciar una nueva operación de compra<br>
• Entonces el sistema recupera el pedido en curso o aplica la regla definida para evitar duplicar pedidos activos.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US22</td>
<td>Agregar productos al pedido</td>
<td>Como cliente comercial, deseo agregar productos a un pedido, para construir una solicitud de abastecimiento completa.</td>
<td>
<strong>Escenario 1: Agregado exitoso</strong><br>
• Dado que el producto está disponible para pedido<br>
• Cuando el cliente comercial lo incorpora a la solicitud<br>
• Entonces el sistema agrega el producto al pedido con la cantidad indicada.<br><br>
<strong>Escenario 2: Producto no disponible</strong><br>
• Dado que el producto no puede ser solicitado<br>
• Cuando el cliente intenta agregarlo<br>
• Entonces el sistema impide la incorporación y comunica que no está disponible.<br><br>
<strong>Escenario 3: Agregado repetido del mismo producto</strong><br>
• Dado que el producto ya forma parte del pedido en edición<br>
• Cuando el cliente intenta agregarlo nuevamente<br>
• Entonces el sistema actualiza la línea existente o aplica la regla definida sin duplicar registros inconsistentes.<br><br>
<strong>Escenario 4: Cantidad inicial inválida</strong><br>
• Dado que el cliente ingresa una cantidad que no cumple la regla mínima definida<br>
• Cuando intenta agregar el producto al pedido<br>
• Entonces el sistema rechaza la incorporación y comunica la inconsistencia.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US23</td>
<td>Modificar cantidades del pedido</td>
<td>Como cliente comercial, deseo modificar cantidades dentro del pedido antes de enviarlo, para ajustar mi compra según mi necesidad.</td>
<td>
<strong>Escenario 1: Actualización de cantidad</strong><br>
• Dado que el pedido contiene un producto agregado<br>
• Cuando el cliente comercial modifica su cantidad<br>
• Entonces el sistema actualiza el total solicitado en el pedido.<br><br>
<strong>Escenario 2: Cantidad inválida</strong><br>
• Dado que la cantidad ingresada no cumple las reglas del sistema<br>
• Cuando el cliente intenta actualizarla<br>
• Entonces el sistema informa la invalidez y mantiene el valor anterior.<br><br>
<strong>Escenario 3: Cantidad superior a la disponibilidad permitida</strong><br>
• Dado que el producto posee una disponibilidad comercial acotada<br>
• Cuando el cliente intenta registrar una cantidad que excede la condición vigente<br>
• Entonces el sistema informa la restricción y evita confirmar una cantidad inconsistente.<br><br>
<strong>Escenario 4: Modificación sobre pedido no editable</strong><br>
• Dado que el pedido ya fue enviado o dejó de estar en edición<br>
• Cuando el cliente intenta modificar sus cantidades<br>
• Entonces el sistema impide el cambio por estado no editable.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US24</td>
<td>Eliminar productos del pedido</td>
<td>Como cliente comercial, deseo eliminar productos del pedido antes de confirmarlo, para corregir mi solicitud.</td>
<td>
<strong>Escenario 1: Eliminación exitosa</strong><br>
• Dado que el pedido contiene productos cargados<br>
• Cuando el cliente elimina uno de ellos<br>
• Entonces el sistema lo retira del pedido y actualiza el resumen.<br><br>
<strong>Escenario 2: Pedido sin productos</strong><br>
• Dado que el cliente elimina el último producto del pedido<br>
• Cuando confirma la acción<br>
• Entonces el sistema deja el pedido sin ítems o lo mantiene como borrador vacío según la regla definida.<br><br>
<strong>Escenario 3: Eliminación sobre producto inexistente en el pedido</strong><br>
• Dado que el producto ya no forma parte de la solicitud<br>
• Cuando el cliente intenta eliminarlo nuevamente<br>
• Entonces el sistema evita la operación inconsistente y mantiene el pedido sin cambios.<br><br>
<strong>Escenario 4: Eliminación sobre pedido no editable</strong><br>
• Dado que el pedido ya no se encuentra en estado de edición<br>
• Cuando el cliente intenta retirar un producto<br>
• Entonces el sistema rechaza la operación por estado inválido.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US25</td>
<td>Revisar resumen del pedido</td>
<td>Como cliente comercial, deseo revisar un resumen del pedido antes de enviarlo, para validar la información registrada.</td>
<td>
<strong>Escenario 1: Resumen visible</strong><br>
• Dado que el pedido contiene al menos un producto<br>
• Cuando el cliente solicita revisar su resumen<br>
• Entonces el sistema muestra el contenido del pedido con productos y cantidades.<br><br>
<strong>Escenario 2: Pedido incompleto</strong><br>
• Dado que el pedido no contiene información suficiente para ser enviado<br>
• Cuando el cliente revisa el resumen<br>
• Entonces el sistema evidencia que la solicitud aún no está lista para envío.<br><br>
<strong>Escenario 3: Resumen actualizado</strong><br>
• Dado que el cliente realizó cambios previos en productos o cantidades<br>
• Cuando revisa nuevamente el resumen<br>
• Entonces el sistema muestra la versión vigente del pedido y no información desactualizada.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US26</td>
<td>Enviar pedido al distribuidor</td>
<td>Como cliente comercial, deseo enviar el pedido al distribuidor, para iniciar formalmente el proceso de atención.</td>
<td>
<strong>Escenario 1: Envío exitoso</strong><br>
• Dado que el pedido cumple con las condiciones mínimas de registro<br>
• Cuando el cliente confirma su envío<br>
• Entonces el sistema registra el pedido y lo deja disponible para atención por la empresa.<br><br>
<strong>Escenario 2: Envío rechazado por inconsistencias</strong><br>
• Dado que el pedido presenta información incompleta o inválida<br>
• Cuando el cliente intenta enviarlo<br>
• Entonces el sistema rechaza el envío e informa la inconsistencia detectada.<br><br>
<strong>Escenario 3: Pedido vacío</strong><br>
• Dado que el pedido no contiene productos válidos<br>
• Cuando el cliente intenta enviarlo<br>
• Entonces el sistema impide registrar una solicitud vacía.<br><br>
<strong>Escenario 4: Reintento sobre pedido ya enviado</strong><br>
• Dado que el pedido ya fue registrado correctamente<br>
• Cuando el cliente intenta enviarlo otra vez<br>
• Entonces el sistema evita un nuevo registro duplicado del mismo pedido.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US27</td>
<td>Recibir confirmación del pedido</td>
<td>Como cliente comercial, deseo recibir confirmación del registro de mi pedido, para tener evidencia de que fue enviado correctamente.</td>
<td>
<strong>Escenario 1: Confirmación registrada</strong><br>
• Dado que el pedido fue enviado correctamente<br>
• Cuando finaliza el proceso de envío<br>
• Entonces el sistema confirma que la solicitud fue registrada.<br><br>
<strong>Escenario 2: Sin confirmación por error</strong><br>
• Dado que el pedido no logra registrarse<br>
• Cuando el cliente intenta enviarlo<br>
• Entonces el sistema informa que la operación no se completó y no genera una confirmación engañosa.<br><br>
<strong>Escenario 3: Confirmación asociada al pedido correcto</strong><br>
• Dado que el sistema registró el pedido de forma exitosa<br>
• Cuando comunica la confirmación al cliente<br>
• Entonces la evidencia entregada corresponde a la solicitud efectivamente registrada.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US28</td>
<td>Consultar historial de pedidos</td>
<td>Como cliente comercial, deseo consultar mi historial de pedidos, para revisar compras anteriores.</td>
<td>
<strong>Escenario 1: Historial disponible</strong><br>
• Dado que el cliente cuenta con pedidos previos<br>
• Cuando consulta su historial<br>
• Entonces el sistema muestra la relación de pedidos registrados.<br><br>
<strong>Escenario 2: Sin historial</strong><br>
• Dado que el cliente aún no tiene pedidos registrados<br>
• Cuando consulta el historial<br>
• Entonces el sistema informa que no existen pedidos previos.<br><br>
<strong>Escenario 3: Historial restringido al cliente autenticado</strong><br>
• Dado que existen pedidos de otros clientes comerciales<br>
• Cuando el cliente consulta su historial<br>
• Entonces el sistema muestra únicamente las solicitudes que le pertenecen.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US29</td>
<td>Ver detalle de pedido registrado</td>
<td>Como cliente comercial, deseo visualizar el detalle de un pedido enviado, para revisar su contenido y estado.</td>
<td>
<strong>Escenario 1: Detalle accesible</strong><br>
• Dado que el pedido existe y pertenece al cliente<br>
• Cuando el cliente consulta su detalle<br>
• Entonces el sistema muestra la información del pedido y su estado actual.<br><br>
<strong>Escenario 2: Pedido no accesible</strong><br>
• Dado que el pedido no existe o no pertenece al cliente<br>
• Cuando se intenta consultar su detalle<br>
• Entonces el sistema restringe el acceso y comunica que la solicitud no está disponible.<br><br>
<strong>Escenario 3: Detalle consistente con el historial</strong><br>
• Dado que el pedido figura en el historial del cliente<br>
• Cuando este accede a su detalle<br>
• Entonces el sistema presenta información consistente con el registro previamente mostrado.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US30</td>
<td>Repetir pedido anterior</td>
<td>Como cliente comercial, deseo repetir un pedido anterior, para agilizar compras recurrentes.</td>
<td>
<strong>Escenario 1: Repetición exitosa</strong><br>
• Dado que el cliente tiene pedidos previos válidos<br>
• Cuando elige repetir uno de ellos<br>
• Entonces el sistema genera un nuevo pedido tomando como referencia la solicitud anterior.<br><br>
<strong>Escenario 2: Productos no repetibles</strong><br>
• Dado que algunos productos del pedido anterior ya no están disponibles<br>
• Cuando el cliente intenta repetirlo<br>
• Entonces el sistema informa las diferencias antes de crear la nueva solicitud.<br><br>
<strong>Escenario 3: Pedido previo inexistente o no accesible</strong><br>
• Dado que la referencia del pedido anterior no corresponde a una solicitud válida del cliente<br>
• Cuando intenta repetirlo<br>
• Entonces el sistema rechaza la operación y evita crear un nuevo pedido inconsistente.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US31</td>
<td>Guardar pedido en borrador</td>
<td>Como cliente comercial, deseo guardar temporalmente un pedido en proceso, para retomarlo luego sin perder la información.</td>
<td>
<strong>Escenario 1: Guardado exitoso</strong><br>
• Dado que el pedido se encuentra en edición<br>
• Cuando el cliente decide guardarlo sin enviarlo<br>
• Entonces el sistema conserva el pedido como borrador.<br><br>
<strong>Escenario 2: Recuperación posterior</strong><br>
• Dado que el cliente tiene un borrador guardado<br>
• Cuando retoma su proceso de compra<br>
• Entonces el sistema recupera la información previamente almacenada.<br><br>
<strong>Escenario 3: Guardado sobre pedido sin cambios válidos</strong><br>
• Dado que el pedido no contiene información útil o no cumple la regla mínima para guardado<br>
• Cuando el cliente intenta almacenarlo como borrador<br>
• Entonces el sistema aplica la regla definida sin generar un registro inconsistente.
</td>
<td>EP03</td>
</tr>

<tr>
<td>US32</td>
<td>Cancelar solicitud no procesada</td>
<td>Como cliente comercial, deseo cancelar una solicitud aún no procesada, para corregir errores antes de que pase a atención operativa.</td>
<td>
<strong>Escenario 1: Cancelación permitida</strong><br>
• Dado que el pedido aún no inicia atención operativa<br>
• Cuando el cliente solicita cancelarlo<br>
• Entonces el sistema cambia el pedido a estado cancelado.<br><br>
<strong>Escenario 2: Cancelación no permitida</strong><br>
• Dado que el pedido ya se encuentra en una etapa operativa posterior<br>
• Cuando el cliente intenta cancelarlo<br>
• Entonces el sistema informa que la solicitud ya no puede cancelarse desde este canal.<br><br>
<strong>Escenario 3: Cancelación de pedido inexistente o ajeno</strong><br>
• Dado que la solicitud no pertenece al cliente o no existe<br>
• Cuando intenta cancelarla<br>
• Entonces el sistema restringe la operación y no altera registros ajenos.
</td>
<td>EP03</td>
</tr>

<!-- EP04 -->
<tr>
<td><strong>EP04</strong></td>
<td><strong>Order Tracking &amp; Operational Visibility</strong></td>
<td>Agrupa los user stories relacionados con la visibilidad del estado del pedido y la gestión operativa de su avance por parte de la empresa distribuidora.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US33</td>
<td>Visualizar estado actual del pedido</td>
<td>Como cliente comercial, deseo visualizar el estado actual de mi pedido, para conocer el avance de atención.</td>
<td>
<strong>Escenario 1: Visualización de estado</strong><br>
• Dado que el pedido fue registrado correctamente<br>
• Cuando el cliente consulta su seguimiento<br>
• Entonces el sistema muestra el estado actual del pedido.<br><br>
<strong>Escenario 2: Pedido sin avance posterior</strong><br>
• Dado que el pedido aún no cambia de estado<br>
• Cuando el cliente revisa el seguimiento<br>
• Entonces el sistema mantiene visible el estado vigente sin mostrar información inconsistente.<br><br>
<strong>Escenario 3: Acceso restringido al pedido propio</strong><br>
• Dado que el pedido no pertenece al cliente autenticado<br>
• Cuando se intenta consultar su seguimiento<br>
• Entonces el sistema restringe la visualización del estado.
</td>
<td>EP04</td>
</tr>

<tr>
<td>US34</td>
<td>Revisar historial de estados</td>
<td>Como cliente comercial, deseo revisar el historial de estados del pedido, para comprender su trazabilidad operativa.</td>
<td>
<strong>Escenario 1: Historial disponible</strong><br>
• Dado que el pedido ha atravesado varios estados<br>
• Cuando el cliente consulta su trazabilidad<br>
• Entonces el sistema muestra la secuencia de estados registrada.<br><br>
<strong>Escenario 2: Historial mínimo</strong><br>
• Dado que el pedido solo cuenta con su estado inicial<br>
• Cuando el cliente revisa el historial<br>
• Entonces el sistema muestra únicamente la información disponible sin generar estados ficticios.<br><br>
<strong>Escenario 3: Orden cronológico consistente</strong><br>
• Dado que existen varios cambios de estado sobre el pedido<br>
• Cuando el cliente revisa la trazabilidad<br>
• Entonces el sistema presenta la secuencia en un orden coherente con la operación registrada.
</td>
<td>EP04</td>
</tr>

<tr>
<td>US35</td>
<td>Actualizar estado del pedido</td>
<td>Como representante de la empresa distribuidora, deseo actualizar el estado de un pedido, para reflejar el avance real de la operación.</td>
<td>
<strong>Escenario 1: Actualización válida</strong><br>
• Dado que el pedido existe en el sistema<br>
• Cuando el representante cambia su estado<br>
• Entonces el sistema registra la transición y actualiza el seguimiento.<br><br>
<strong>Escenario 2: Transición inválida</strong><br>
• Dado que el cambio de estado no respeta la lógica operativa definida<br>
• Cuando el representante intenta registrarlo<br>
• Entonces el sistema rechaza la transición y comunica la inconsistencia.<br><br>
<strong>Escenario 3: Pedido inexistente</strong><br>
• Dado que el pedido no existe o no se encuentra disponible para gestión<br>
• Cuando el representante intenta actualizar su estado<br>
• Entonces el sistema impide la operación.<br><br>
<strong>Escenario 4: Registro en historial</strong><br>
• Dado que la transición fue aceptada<br>
• Cuando el sistema actualiza el estado del pedido<br>
• Entonces conserva la trazabilidad correspondiente en el historial operativo.
</td>
<td>EP04</td>
</tr>

<tr>
<td>US36</td>
<td>Marcar pedido en preparación</td>
<td>Como representante de la empresa distribuidora, deseo marcar un pedido como en preparación, para comunicar internamente el inicio del armado.</td>
<td>
<strong>Escenario 1: Marcado correcto</strong><br>
• Dado que el pedido fue recibido y está listo para ser atendido<br>
• Cuando el representante lo marca en preparación<br>
• Entonces el sistema actualiza el estado del pedido.<br><br>
<strong>Escenario 2: Pedido no apto para preparación</strong><br>
• Dado que el pedido no cumple condiciones para iniciar armado<br>
• Cuando el representante intenta marcarlo<br>
• Entonces el sistema impide el cambio y comunica la razón operativa.<br><br>
<strong>Escenario 3: Pedido ya en preparación</strong><br>
• Dado que el pedido ya se encuentra en estado en preparación<br>
• Cuando el representante intenta registrarlo nuevamente<br>
• Entonces el sistema evita una transición redundante.
</td>
<td>EP04</td>
</tr>

<tr>
<td>US37</td>
<td>Marcar pedido como despachado</td>
<td>Como representante de la empresa distribuidora, deseo marcar un pedido como despachado, para registrar su salida operativa.</td>
<td>
<strong>Escenario 1: Despacho registrado</strong><br>
• Dado que el pedido ya fue preparado<br>
• Cuando el representante lo marca como despachado<br>
• Entonces el sistema registra la salida operativa del pedido.<br><br>
<strong>Escenario 2: Despacho no permitido</strong><br>
• Dado que el pedido aún no fue preparado<br>
• Cuando el representante intenta marcarlo como despachado<br>
• Entonces el sistema rechaza la transición por secuencia inválida.<br><br>
<strong>Escenario 3: Pedido cancelado o cerrado</strong><br>
• Dado que el pedido se encuentra cancelado o ya fue entregado<br>
• Cuando el representante intenta marcarlo como despachado<br>
• Entonces el sistema rechaza la operación por estado incompatible.
</td>
<td>EP04</td>
</tr>

<tr>
<td>US38</td>
<td>Marcar pedido como entregado</td>
<td>Como representante de la empresa distribuidora, deseo marcar un pedido como entregado, para cerrar su ciclo de atención.</td>
<td>
<strong>Escenario 1: Entrega confirmada</strong><br>
• Dado que el pedido se encuentra despachado<br>
• Cuando el representante lo marca como entregado<br>
• Entonces el sistema cierra el ciclo operativo del pedido.<br><br>
<strong>Escenario 2: Entrega inconsistente</strong><br>
• Dado que el pedido no cuenta con un despacho previo registrado<br>
• Cuando el representante intenta marcarlo como entregado<br>
• Entonces el sistema informa que la transición no es válida.<br><br>
<strong>Escenario 3: Pedido ya cerrado</strong><br>
• Dado que el pedido ya fue marcado como entregado<br>
• Cuando el representante intenta registrar nuevamente la entrega<br>
• Entonces el sistema evita duplicar el cierre del ciclo operativo.
</td>
<td>EP04</td>
</tr>

<tr>
<td>US39</td>
<td>Registrar observaciones operativas</td>
<td>Como representante de la empresa distribuidora, deseo registrar observaciones operativas sobre un pedido, para dejar evidencia de incidencias o validaciones.</td>
<td>
<strong>Escenario 1: Registro de observación</strong><br>
• Dado que el pedido se encuentra en atención<br>
• Cuando el representante agrega una observación<br>
• Entonces el sistema la asocia al pedido y la conserva en su historial.<br><br>
<strong>Escenario 2: Observación vacía o inválida</strong><br>
• Dado que la información ingresada no cumple condiciones mínimas<br>
• Cuando el representante intenta registrarla<br>
• Entonces el sistema impide almacenar un comentario inválido.<br><br>
<strong>Escenario 3: Observación sobre pedido inexistente</strong><br>
• Dado que el pedido no existe o no está disponible para gestión<br>
• Cuando el representante intenta registrar una observación<br>
• Entonces el sistema rechaza la operación por inconsistencia.<br><br>
<strong>Escenario 4: Diferenciación de visibilidad</strong><br>
• Dado que la observación queda registrada en el sistema<br>
• Cuando se define su alcance de visualización<br>
• Entonces el sistema conserva la distinción entre observaciones internas y observaciones visibles para el cliente.
</td>
<td>EP04</td>
</tr>

<tr>
<td>US40</td>
<td>Visualizar observaciones relevantes del pedido</td>
<td>Como cliente comercial, deseo visualizar observaciones relevantes de mi pedido, para entender posibles cambios o incidencias en su atención.</td>
<td>
<strong>Escenario 1: Visualización autorizada</strong><br>
• Dado que el pedido contiene observaciones visibles para el cliente<br>
• Cuando éste consulta su seguimiento<br>
• Entonces el sistema muestra la información relevante asociada al pedido.<br><br>
<strong>Escenario 2: Sin observaciones visibles</strong><br>
• Dado que el pedido no contiene observaciones para el cliente<br>
• Cuando este revisa su seguimiento<br>
• Entonces el sistema indica que no existen observaciones registradas para mostrar.<br><br>
<strong>Escenario 3: Exclusión de observaciones internas</strong><br>
• Dado que el pedido posee comentarios de uso exclusivamente interno<br>
• Cuando el cliente consulta sus observaciones<br>
• Entonces el sistema no expone información que no haya sido marcada como visible para ese cliente.
</td>
<td>EP04</td>
</tr>

<!-- EP05 -->
<tr>
<td><strong>EP05</strong></td>
<td><strong>Basic Inventory &amp; Internal Operations</strong></td>
<td>Agrupa los user stories relacionados con la visibilidad y administración básica del inventario, así como su relación con la operación comercial.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US41</td>
<td>Visualizar stock disponible</td>
<td>Como representante de la empresa distribuidora, deseo visualizar el stock disponible por producto, para evitar comprometer pedidos que no puedan atenderse.</td>
<td>
<strong>Escenario 1: Consulta general del inventario</strong><br>
• Dado que existen productos activos con cantidades registradas<br>
• Cuando el representante consulta la vista de stock<br>
• Entonces el sistema muestra la disponibilidad actual por producto y unidad de medida.<br><br>
<strong>Escenario 2: Producto sin stock disponible</strong><br>
• Dado que un producto se encuentra registrado pero sin unidades disponibles<br>
• Cuando el representante revisa su disponibilidad<br>
• Entonces el sistema lo muestra como sin stock y evita presentarlo como atendible.<br><br>
<strong>Escenario 3: Diferenciación entre stock disponible y comprometido</strong><br>
• Dado que existen pedidos en proceso que reservan unidades<br>
• Cuando el representante consulta el inventario<br>
• Entonces el sistema diferencia la cantidad total, la comprometida y la realmente disponible.<br><br>
<strong>Escenario 4: Producto inactivo en inventario</strong><br>
• Dado que un producto fue deshabilitado comercialmente<br>
• Cuando el representante revisa el inventario<br>
• Entonces el sistema mantiene su registro operativo pero lo identifica como inactivo.
</td>
<td>EP05</td>
</tr>

<tr>
<td>US42</td>
<td>Registrar ingresos de stock</td>
<td>Como representante de la empresa distribuidora, deseo registrar ingresos de stock, para mantener actualizada la disponibilidad operativa del inventario.</td>
<td>
<strong>Escenario 1: Ingreso válido de unidades</strong><br>
• Dado que el producto existe y se encuentra habilitado para operación interna<br>
• Cuando el representante registra una cantidad de ingreso válida<br>
• Entonces el sistema incrementa el stock y deja trazabilidad del movimiento.<br><br>
<strong>Escenario 2: Ingreso con cantidad no válida</strong><br>
• Dado que la cantidad ingresada es cero, negativa o no cumple el formato esperado<br>
• Cuando el representante intenta guardar el movimiento<br>
• Entonces el sistema rechaza el registro y no altera el inventario.<br><br>
<strong>Escenario 3: Ingreso sobre producto inexistente</strong><br>
• Dado que el identificador del producto no corresponde a un registro válido<br>
• Cuando el representante intenta registrar el ingreso<br>
• Entonces el sistema impide la operación por inconsistencia del recurso.<br><br>
<strong>Escenario 4: Ingreso con información complementaria</strong><br>
• Dado que el movimiento incluye observación, fecha o referencia operativa<br>
• Cuando el representante confirma el registro<br>
• Entonces el sistema asocia dicha información al movimiento realizado.
</td>
<td>EP05</td>
</tr>

<tr>
<td>US43</td>
<td>Ajustar stock manualmente</td>
<td>Como representante de la empresa distribuidora, deseo ajustar manualmente el stock de un producto, para corregir diferencias detectadas entre la operación y el sistema.</td>
<td>
<strong>Escenario 1: Ajuste positivo justificado</strong><br>
• Dado que el producto existe y el representante identifica una diferencia a favor<br>
• Cuando registra un ajuste positivo con motivo válido<br>
• Entonces el sistema actualiza el stock y conserva la razón del ajuste.<br><br>
<strong>Escenario 2: Ajuste negativo permitido</strong><br>
• Dado que el producto tiene disponibilidad suficiente<br>
• Cuando el representante registra un ajuste negativo justificado<br>
• Entonces el sistema descuenta la cantidad correspondiente sin generar saldo negativo.<br><br>
<strong>Escenario 3: Ajuste que produciría saldo inválido</strong><br>
• Dado que la cantidad a descontar supera la disponibilidad registrada<br>
• Cuando el representante intenta guardar el ajuste<br>
• Entonces el sistema rechaza la operación y mantiene el stock sin cambios.<br><br>
<strong>Escenario 4: Ajuste sin motivo</strong><br>
• Dado que la política operativa exige registrar una justificación<br>
• Cuando el representante intenta guardar el ajuste sin motivo<br>
• Entonces el sistema solicita completar la razón antes de confirmar la operación.
</td>
<td>EP05</td>
</tr>

<tr>
<td>US44</td>
<td>Bloquear producto sin disponibilidad</td>
<td>Como representante de la empresa distribuidora, deseo bloquear temporalmente un producto sin disponibilidad, para evitar que siga apareciendo como ofertable en el portal B2B.</td>
<td>
<strong>Escenario 1: Bloqueo comercial exitoso</strong><br>
• Dado que el producto no debe seguir recibiendo pedidos<br>
• Cuando el representante activa el bloqueo comercial<br>
• Entonces el sistema lo excluye de la oferta disponible para nuevos pedidos.<br><br>
<strong>Escenario 2: Producto ya bloqueado</strong><br>
• Dado que el producto ya se encuentra bloqueado<br>
• Cuando el representante intenta volver a bloquearlo<br>
• Entonces el sistema conserva el estado actual sin duplicar la operación.<br><br>
<strong>Escenario 3: Reactivación del producto</strong><br>
• Dado que el producto recuperó disponibilidad o autorización comercial<br>
• Cuando el representante retira el bloqueo<br>
• Entonces el sistema vuelve a habilitarlo para consulta y pedido.
</td>
<td>EP05</td>
</tr>

<tr>
<td>US45</td>
<td>Vincular stock con pedidos</td>
<td>Como representante de la empresa distribuidora, deseo que el stock se vincule con los pedidos registrados, para mantener consistencia entre inventario, reserva y atención comercial.</td>
<td>
<strong>Escenario 1: Reserva al registrar pedido atendible</strong><br>
• Dado que el pedido contiene productos con disponibilidad suficiente<br>
• Cuando la solicitud se registra correctamente<br>
• Entonces el sistema refleja la afectación del stock comprometido según las reglas del proceso.<br><br>
<strong>Escenario 2: Intento de pedido con disponibilidad insuficiente</strong><br>
• Dado que la cantidad solicitada supera lo disponible para al menos un producto<br>
• Cuando se intenta registrar o confirmar el pedido<br>
• Entonces el sistema informa la inconsistencia antes de consolidar la atención.<br><br>
<strong>Escenario 3: Liberación de stock comprometido</strong><br>
• Dado que un pedido reservado es cancelado o rechazado antes de su despacho<br>
• Cuando el sistema actualiza su estado a una condición no atendible<br>
• Entonces las unidades comprometidas dejan de contarse como reservadas.<br><br>
<strong>Escenario 4: Consistencia frente a cambios del pedido</strong><br>
• Dado que un pedido en edición modifica cantidades o elimina ítems<br>
• Cuando el representante o el cliente guarda el cambio permitido<br>
• Entonces el sistema recalcula la afectación de stock correspondiente.
</td>
<td>EP05</td>
</tr>

<tr>
<td>US46</td>
<td>Consultar productos próximos a vencer</td>
<td>Como representante de la empresa distribuidora, deseo consultar productos próximos a vencer, para tomar decisiones preventivas de rotación y abastecimiento.</td>
<td>
<strong>Escenario 1: Consulta con información de vigencia disponible</strong><br>
• Dado que existen productos con fechas de vigencia registradas<br>
• Cuando el representante consulta los próximos vencimientos<br>
• Entonces el sistema lista los productos cuya vigencia se encuentra dentro del rango definido.<br><br>
<strong>Escenario 2: Orden por prioridad de vencimiento</strong><br>
• Dado que varios productos cumplen la condición de proximidad<br>
• Cuando el sistema presenta el resultado<br>
• Entonces los muestra priorizando los vencimientos más cercanos.<br><br>
<strong>Escenario 3: Productos sin fecha registrada</strong><br>
• Dado que ciertos productos no tienen información de vigencia completa<br>
• Cuando el representante realiza la consulta<br>
• Entonces el sistema no inventa fechas y solo muestra los registros que cuentan con información suficiente.
</td>
<td>EP05</td>
</tr>

<tr>
<td>US47</td>
<td>Visualizar stock comprometido</td>
<td>Como representante de la empresa distribuidora, deseo visualizar el stock comprometido por pedidos en proceso, para mejorar la planificación operativa y evitar sobre promesas comerciales.</td>
<td>
<strong>Escenario 1: Visualización de reservas activas</strong><br>
• Dado que existen pedidos en estados que comprometen inventario<br>
• Cuando el representante revisa el módulo correspondiente<br>
• Entonces el sistema muestra el stock reservado por producto.<br><br>
<strong>Escenario 2: Sin reservas activas</strong><br>
• Dado que no hay pedidos que afecten inventario comprometido<br>
• Cuando el representante consulta dicha vista<br>
• Entonces el sistema informa que no existen reservas por mostrar.<br><br>
<strong>Escenario 3: Detalle asociado a la reserva</strong><br>
• Dado que un producto tiene unidades comprometidas por más de un pedido<br>
• Cuando el representante revisa el detalle del stock comprometido<br>
• Entonces el sistema permite identificar que la reserva proviene de pedidos aún en proceso.
</td>
<td>EP05</td>
</tr>

<tr>
<td>US48</td>
<td>Registrar información básica de lote o vigencia</td>
<td>Como representante de la empresa distribuidora, deseo registrar información básica de lote o vigencia cuando corresponda, para mejorar la trazabilidad operativa del inventario.</td>
<td>
<strong>Escenario 1: Registro válido de lote o vigencia</strong><br>
• Dado que el producto admite información complementaria de lote o fecha<br>
• Cuando el representante registra datos válidos<br>
• Entonces el sistema asocia la información al producto o al movimiento correspondiente.<br><br>
<strong>Escenario 2: Fecha inconsistente</strong><br>
• Dado que la fecha ingresada no cumple la lógica esperada del registro<br>
• Cuando el representante intenta guardarla<br>
• Entonces el sistema rechaza el dato por inconsistencia.<br><br>
<strong>Escenario 3: Dato duplicado según regla interna</strong><br>
• Dado que ya existe un registro igual para el mismo contexto operativo<br>
• Cuando el representante intenta guardarlo nuevamente<br>
• Entonces el sistema advierte la duplicidad definida por la operación.<br><br>
<strong>Escenario 4: Producto sin uso de trazabilidad básica</strong><br>
• Dado que el producto no utiliza lote o vigencia en esta etapa del MVP<br>
• Cuando el representante intenta registrar ese tipo de información<br>
• Entonces el sistema limita la operación según la configuración aplicable.
</td>
<td>EP05</td>
</tr>

<!-- EP06 -->
<tr>
<td><strong>EP06</strong></td>
<td><strong>Commercial Customer Management</strong></td>
<td>Agrupa los user stories relacionados con la gestión básica de clientes comerciales B2B por parte de la empresa distribuidora.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US49</td>
<td>Registrar clientes comerciales</td>
<td>Como representante de la empresa distribuidora, deseo registrar clientes comerciales en la plataforma, para organizar y habilitar mi cartera B2B.</td>
<td>
<strong>Escenario 1: Alta exitosa de cliente</strong><br>
• Dado que el representante cuenta con los datos mínimos requeridos del cliente comercial<br>
• Cuando registra una nueva ficha<br>
• Entonces el sistema crea el cliente y lo deja disponible para gestión operativa.<br><br>
<strong>Escenario 2: Faltan datos obligatorios</strong><br>
• Dado que la solicitud de registro no contiene la información mínima exigida<br>
• Cuando el representante intenta guardarla<br>
• Entonces el sistema impide crear una ficha incompleta.<br><br>
<strong>Escenario 3: Cliente ya registrado</strong><br>
• Dado que ya existe un cliente con el mismo identificador comercial definido por la empresa<br>
• Cuando el representante intenta registrarlo nuevamente<br>
• Entonces el sistema advierte la duplicidad y evita crear un registro redundante.<br><br>
<strong>Escenario 4: Estado inicial del nuevo cliente</strong><br>
• Dado que el cliente fue creado correctamente<br>
• Cuando finaliza el registro<br>
• Entonces el sistema lo deja con el estado inicial que corresponda según la regla configurada.
</td>
<td>EP06</td>
</tr>

<tr>
<td>US50</td>
<td>Editar información del cliente comercial</td>
<td>Como representante de la empresa distribuidora, deseo editar la información del cliente comercial, para mantener actualizada su ficha operativa y comercial.</td>
<td>
<strong>Escenario 1: Actualización válida de datos</strong><br>
• Dado que el cliente existe y se encuentra disponible para gestión<br>
• Cuando el representante modifica información permitida y guarda los cambios<br>
• Entonces el sistema actualiza la ficha del cliente.<br><br>
<strong>Escenario 2: Edición parcial</strong><br>
• Dado que solo algunos campos requieren corrección<br>
• Cuando el representante actualiza esa parte de la información<br>
• Entonces el sistema conserva los demás datos sin alterarlos.<br><br>
<strong>Escenario 3: Cliente inexistente o no accesible</strong><br>
• Dado que la ficha solicitada no existe o no puede gestionarse<br>
• Cuando el representante intenta editarla<br>
• Entonces el sistema rechaza la operación por inconsistencia del recurso.<br><br>
<strong>Escenario 4: Dato inválido en edición</strong><br>
• Dado que uno de los campos editados no cumple la validación definida<br>
• Cuando el representante intenta guardar la ficha<br>
• Entonces el sistema informa el error y evita aplicar cambios inválidos.
</td>
<td>EP06</td>
</tr>

<tr>
<td>US51</td>
<td>Habilitar o deshabilitar cliente comercial</td>
<td>Como representante de la empresa distribuidora, deseo habilitar o deshabilitar clientes comerciales, para controlar quién puede operar en la plataforma según la relación comercial vigente.</td>
<td>
<strong>Escenario 1: Deshabilitar cliente para nuevas operaciones</strong><br>
• Dado que el cliente no debe seguir generando nuevas solicitudes<br>
• Cuando el representante lo deshabilita<br>
• Entonces el sistema restringe su acceso operativo para nuevas acciones comerciales.<br><br>
<strong>Escenario 2: Conservación del historial</strong><br>
• Dado que el cliente fue deshabilitado<br>
• Cuando el representante revisa su ficha o sus pedidos anteriores<br>
• Entonces el sistema mantiene el historial asociado sin eliminar registros previos.<br><br>
<strong>Escenario 3: Rehabilitación posterior</strong><br>
• Dado que el cliente vuelve a estar autorizado para operar<br>
• Cuando el representante reactiva su condición<br>
• Entonces el sistema restablece su capacidad de uso según corresponda.<br><br>
<strong>Escenario 4: Intento sobre cliente inexistente</strong><br>
• Dado que el cliente seleccionado no existe o no puede ser gestionado<br>
• Cuando el representante intenta cambiar su estado<br>
• Entonces el sistema impide la operación y comunica la inconsistencia.
</td>
<td>EP06</td>
</tr>

<tr>
<td>US52</td>
<td>Asignar condiciones comerciales básicas</td>
<td>Como representante de la empresa distribuidora, deseo asignar condiciones comerciales básicas a un cliente, para adaptar su operación dentro de la plataforma.</td>
<td>
<strong>Escenario 1: Asignación válida de condiciones</strong><br>
• Dado que el cliente existe y puede tener configuración comercial diferenciada<br>
• Cuando el representante registra condiciones válidas<br>
• Entonces el sistema las asocia a la ficha del cliente.<br><br>
<strong>Escenario 2: Reemplazo de configuración previa</strong><br>
• Dado que el cliente ya tenía condiciones registradas<br>
• Cuando el representante actualiza esa configuración<br>
• Entonces el sistema conserva la versión vigente según la operación definida.<br><br>
<strong>Escenario 3: Configuración inconsistente</strong><br>
• Dado que las condiciones ingresadas contradicen las reglas básicas del negocio<br>
• Cuando el representante intenta guardarlas<br>
• Entonces el sistema rechaza la configuración inválida.
</td>
<td>EP06</td>
</tr>

<tr>
<td>US53</td>
<td>Consultar historial por cliente</td>
<td>Como representante de la empresa distribuidora, deseo consultar el historial de pedidos por cliente, para revisar su comportamiento comercial y operativo.</td>
<td>
<strong>Escenario 1: Historial con registros disponibles</strong><br>
• Dado que el cliente posee pedidos asociados<br>
• Cuando el representante consulta su historial<br>
• Entonces el sistema muestra las solicitudes registradas para ese cliente.<br><br>
<strong>Escenario 2: Cliente sin historial todavía</strong><br>
• Dado que el cliente aún no tiene operaciones previas<br>
• Cuando el representante revisa su historial<br>
• Entonces el sistema informa que no existen pedidos asociados.<br><br>
<strong>Escenario 3: Consulta de un cliente no válido</strong><br>
• Dado que el identificador consultado no corresponde a una ficha gestionable<br>
• Cuando el representante intenta revisar su historial<br>
• Entonces el sistema impide la consulta por recurso inexistente o no disponible.
</td>
<td>EP06</td>
</tr>

<tr>
<td>US54</td>
<td>Visualizar resumen operativo por cliente</td>
<td>Como representante de la empresa distribuidora, deseo visualizar un resumen operativo por cliente, para dar seguimiento rápido a su actividad dentro de la plataforma.</td>
<td>
<strong>Escenario 1: Resumen consolidado disponible</strong><br>
• Dado que el cliente cuenta con actividad registrada en el sistema<br>
• Cuando el representante consulta su resumen<br>
• Entonces el sistema presenta información consolidada relevante para seguimiento.<br><br>
<strong>Escenario 2: Cliente con actividad mínima</strong><br>
• Dado que el cliente existe pero aún tiene poca información acumulada<br>
• Cuando el representante solicita su resumen<br>
• Entonces el sistema muestra solo los datos que se encuentren realmente disponibles.<br><br>
<strong>Escenario 3: Coherencia con el historial</strong><br>
• Dado que el cliente tiene operaciones registradas<br>
• Cuando el representante compara el resumen con su historial<br>
• Entonces la información consolidada mantiene correspondencia con los registros del sistema.
</td>
<td>EP06</td>
</tr>

<!-- EP07 -->
<tr>
<td><strong>EP07</strong></td>
<td><strong>Access &amp; Account Basics</strong></td>
<td>Agrupa los user stories relacionados con acceso y cuentas, considerados como soporte del sistema y no como prioridad inicial del negocio.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US55</td>
<td>Iniciar sesión como colaborador interno</td>
<td>Como representante de la empresa distribuidora, deseo iniciar sesión en la plataforma, para acceder al panel interno según mi rol.</td>
<td>
<strong>Escenario 1: Acceso exitoso al entorno interno</strong><br>
• Dado que el representante cuenta con credenciales válidas y una cuenta habilitada<br>
• Cuando inicia sesión correctamente<br>
• Entonces el sistema le permite ingresar al entorno interno correspondiente a su perfil.<br><br>
<strong>Escenario 2: Credenciales incorrectas</strong><br>
• Dado que el correo o la contraseña no corresponden a una combinación válida<br>
• Cuando el representante intenta autenticarse<br>
• Entonces el sistema rechaza el acceso sin iniciar sesión.<br><br>
<strong>Escenario 3: Cuenta inactiva o deshabilitada</strong><br>
• Dado que la cuenta existe pero no se encuentra habilitada para operar<br>
• Cuando el representante intenta iniciar sesión<br>
• Entonces el sistema deniega el acceso e informa la condición aplicable.<br><br>
<strong>Escenario 4: Acceso redirigido según rol</strong><br>
• Dado que el representante inició sesión correctamente<br>
• Cuando el sistema determina su perfil interno<br>
• Entonces lo dirige a la vista que corresponda según sus permisos básicos.
</td>
<td>EP07</td>
</tr>

<tr>
<td>US56</td>
<td>Iniciar sesión como cliente comercial</td>
<td>Como cliente comercial, deseo iniciar sesión en el portal, para consultar mis pedidos y operar de forma segura.</td>
<td>
<strong>Escenario 1: Inicio de sesión válido del cliente</strong><br>
• Dado que el cliente cuenta con credenciales activas y autorización vigente<br>
• Cuando inicia sesión correctamente<br>
• Entonces el sistema habilita el acceso a su entorno B2B.<br><br>
<strong>Escenario 2: Cliente deshabilitado</strong><br>
• Dado que la cuenta del cliente fue suspendida para nuevas operaciones<br>
• Cuando intenta autenticarse<br>
• Entonces el sistema deniega el acceso y no permite ingresar al portal.<br><br>
<strong>Escenario 3: Intento con datos erróneos</strong><br>
• Dado que los datos ingresados no coinciden con una autenticación válida<br>
• Cuando el cliente intenta iniciar sesión<br>
• Entonces el sistema rechaza el acceso sin exponer información sensible.
</td>
<td>EP07</td>
</tr>

<tr>
<td>US57</td>
<td>Recuperar acceso a la cuenta</td>
<td>Como representante de la empresa distribuidora o cliente comercial, deseo recuperar mi acceso cuando lo olvido, para volver a utilizar la plataforma sin depender de soporte manual en los casos previstos por el sistema.</td>
<td>
<strong>Escenario 1: Solicitud válida de recuperación</strong><br>
• Dado que el usuario ingresa una cuenta registrada y apta para recuperación<br>
• Cuando solicita restablecer su acceso<br>
• Entonces el sistema inicia el proceso definido para recuperación.<br><br>
<strong>Escenario 2: Cuenta no reconocida</strong><br>
• Dado que los datos proporcionados no corresponden a una cuenta válida<br>
• Cuando el usuario solicita recuperar el acceso<br>
• Entonces el sistema informa que no puede iniciar el proceso con esa información.<br><br>
<strong>Escenario 3: Solicitud expirada o no vigente</strong><br>
• Dado que el usuario intenta continuar una recuperación fuera del tiempo permitido<br>
• Cuando el sistema valida la operación<br>
• Entonces la solicitud deja de ser aceptada y debe iniciarse nuevamente.<br><br>
<strong>Escenario 4: Nueva contraseña inválida</strong><br>
• Dado que el usuario llegó al paso de restablecimiento<br>
• Cuando intenta registrar una clave que no cumple la política definida<br>
• Entonces el sistema rechaza el cambio hasta que se cumplan las validaciones.
</td>
<td>EP07</td>
</tr>

<tr>
<td>US58</td>
<td>Gestionar accesos internos básicos</td>
<td>Como representante autorizado de la empresa distribuidora, deseo gestionar accesos básicos de usuarios internos, para controlar quién utiliza el sistema y con qué vigencia operativa.</td>
<td>
<strong>Escenario 1: Creación o habilitación de acceso interno</strong><br>
• Dado que el representante cuenta con permisos para administrar usuarios internos<br>
• Cuando registra o habilita un acceso válido<br>
• Entonces el sistema deja disponible la cuenta según la configuración definida.<br><br>
<strong>Escenario 2: Deshabilitación de acceso interno</strong><br>
• Dado que un usuario ya no debe utilizar el sistema<br>
• Cuando el representante autorizado cambia su condición de acceso<br>
• Entonces el sistema restringe su ingreso posterior.<br><br>
<strong>Escenario 3: Gestión sin privilegios suficientes</strong><br>
• Dado que el usuario que intenta administrar accesos no posee los permisos requeridos<br>
• Cuando ejecuta la operación<br>
• Entonces el sistema la rechaza por falta de autorización.<br><br>
<strong>Escenario 4: Usuario interno inexistente</strong><br>
• Dado que el registro seleccionado no corresponde a un usuario válido<br>
• Cuando se intenta modificar su acceso<br>
• Entonces el sistema impide la operación por inconsistencia del recurso.
</td>
<td>EP07</td>
</tr>

<!-- EP08 -->
<tr>
<td><strong>EP08</strong></td>
<td><strong>Technical Stories for REST API</strong></td>
<td>Agrupa technical stories para el RESTful API. En estas historias se utiliza el rol Developer y los criterios de aceptación se redactan como escenarios de interacción request/response.</td>
<td>—</td>
<td>—</td>
</tr>

<tr>
<td>US59</td>
<td>Exponer endpoint de catálogo</td>
<td>Como Developer, deseo exponer un endpoint para consultar el catálogo de productos, para que la aplicación web pueda mostrar la oferta disponible.</td>
<td>
<strong>Escenario 1: Consulta exitosa del catálogo</strong><br>
• Dado que el servicio se encuentra disponible y la solicitud es válida<br>
• Cuando la aplicación cliente consume el endpoint de catálogo<br>
• Entonces el API responde con la colección de productos habilitados según la consulta.<br><br>
<strong>Escenario 2: Consulta válida sin resultados</strong><br>
• Dado que no existen productos que cumplan las condiciones de la solicitud<br>
• Cuando la aplicación cliente realiza una consulta válida<br>
• Entonces el API responde de forma consistente con una colección vacía o el resultado definido por el contrato.<br><br>
<strong>Escenario 3: Parámetros de consulta inválidos</strong><br>
• Dado que la solicitud incluye filtros o parámetros con formato no permitido<br>
• Cuando la aplicación cliente invoca el endpoint<br>
• Entonces el API rechaza la operación con el estado y mensaje definidos para request inválido.<br><br>
<strong>Escenario 4: Acceso no autorizado al recurso</strong><br>
• Dado que la consulta requiere autenticación o contexto válido y este no se encuentra presente<br>
• Cuando la aplicación cliente intenta consumir el endpoint<br>
• Entonces el API responde con la condición de autorización correspondiente.
</td>
<td>EP08</td>
</tr>

<tr>
<td>US60</td>
<td>Exponer endpoint de detalle de producto</td>
<td>Como Developer, deseo exponer un endpoint para consultar el detalle de un producto, para que la aplicación web pueda mostrar información específica de cada ítem.</td>
<td>
<strong>Escenario 1: Detalle obtenido correctamente</strong><br>
• Dado que el identificador solicitado corresponde a un producto accesible<br>
• Cuando la aplicación cliente consume el endpoint de detalle<br>
• Entonces el API responde con la información del producto solicitado.<br><br>
<strong>Escenario 2: Producto inexistente</strong><br>
• Dado que el identificador no corresponde a un recurso válido<br>
• Cuando la aplicación cliente realiza la consulta<br>
• Entonces el API responde con la condición definida para recurso inexistente.<br><br>
<strong>Escenario 3: Identificador con formato inválido</strong><br>
• Dado que el request no cumple el formato esperado por el endpoint<br>
• Cuando la aplicación cliente intenta consultar el detalle<br>
• Entonces el API rechaza la solicitud con el estado correspondiente para datos inválidos.
</td>
<td>EP08</td>
</tr>

<tr>
<td>US61</td>
<td>Exponer endpoint de registro de pedidos</td>
<td>Como Developer, deseo exponer un endpoint para registrar pedidos, para que el portal B2B pueda enviar solicitudes estructuradas al sistema.</td>
<td>
<strong>Escenario 1: Registro exitoso de pedido</strong><br>
• Dado que el request contiene la información mínima requerida y cumple las reglas básicas del proceso<br>
• Cuando la aplicación cliente envía la solicitud al endpoint de pedidos<br>
• Entonces el API registra el pedido y responde con la confirmación correspondiente.<br><br>
<strong>Escenario 2: Payload incompleto o inválido</strong><br>
• Dado que faltan campos obligatorios o existen datos con formato no aceptado<br>
• Cuando la aplicación cliente intenta registrar el pedido<br>
• Entonces el API rechaza la operación con la respuesta definida para request inválido.<br><br>
<strong>Escenario 3: Regla de negocio no cumplida</strong><br>
• Dado que el pedido contiene productos no atendibles o condiciones incompatibles con la operación<br>
• Cuando la aplicación cliente envía el request<br>
• Entonces el API no registra la solicitud y comunica la causa de negocio correspondiente.<br><br>
<strong>Escenario 4: Cliente no autorizado para registrar</strong><br>
• Dado que el contexto de autenticación no permite operar sobre esa cuenta o recurso<br>
• Cuando la aplicación cliente intenta crear el pedido<br>
• Entonces el API responde con la condición de autorización definida por el servicio.
</td>
<td>EP08</td>
</tr>

<tr>
<td>US62</td>
<td>Exponer endpoint de seguimiento de pedido</td>
<td>Como Developer, deseo exponer un endpoint para consultar el estado de un pedido, para que la aplicación web pueda mostrar seguimiento operativo al cliente y a la empresa.</td>
<td>
<strong>Escenario 1: Seguimiento obtenido correctamente</strong><br>
• Dado que el pedido existe y la solicitud cumple las validaciones del servicio<br>
• Cuando la aplicación cliente consulta el endpoint de seguimiento<br>
• Entonces el API responde con el estado actual y la información de trazabilidad disponible.<br><br>
<strong>Escenario 2: Pedido inexistente</strong><br>
• Dado que el identificador solicitado no corresponde a un pedido registrado<br>
• Cuando la aplicación cliente realiza la consulta<br>
• Entonces el API responde con la condición definida para recurso inexistente.<br><br>
<strong>Escenario 3: Pedido no accesible para el solicitante</strong><br>
• Dado que el pedido existe pero no pertenece al contexto autorizado de la solicitud<br>
• Cuando la aplicación cliente intenta consultarlo<br>
• Entonces el API rechaza la operación por falta de permisos.<br><br>
<strong>Escenario 4: Request inválido</strong><br>
• Dado que la solicitud no cumple el formato o los parámetros exigidos por el endpoint<br>
• Cuando la aplicación cliente consume el servicio<br>
• Entonces el API responde con el estado definido para datos inválidos.
</td>
<td>EP08</td>
</tr>

</tbody>
</table>

---

*Nota*. Tabla de análisis competitivo. Elaboración propia.

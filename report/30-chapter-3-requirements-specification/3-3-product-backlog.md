## 3.3. Product Backlog

<p align="justify">
El Product Backlog de Nexa organiza el universo de requerimientos en una secuencia lógica de implementación, priorizando la visibilidad pública del producto y el flujo transaccional central antes que los sistemas de soporte técnico. Siguiendo los criterios de la rúbrica académica, este backlog se ordena por <strong>valor de negocio</strong>, <strong>dependencia funcional</strong> y <strong>peso técnico temprano</strong>, de modo que los frentes más visibles y más costosos de destrabar aparezcan antes dentro de cada bloque del roadmap.
</p>

<p align="justify">
La priorización no responde únicamente a facilidad de implementación. Se construye sobre cuatro criterios combinados: visibilidad temprana del producto para validación comercial, reducción inmediata de fricción en el flujo de pedido, habilitación progresiva de reglas de negocio críticas y preparación de contratos técnicos que sostengan la evolución del MVP. Por eso el orden no es puramente descendente por Story Points: primero manda el valor del bloque, y dentro de ese bloque se adelantan las historias de mayor peso o mayor capacidad de desbloqueo.
</p>

*Criterios de priorización del Product Backlog*

| Criterio | Qué evalúa | Aplicación en Nexa |
| :--- | :--- | :--- |
| Valor de negocio inmediato | Qué tan rápido la historia reduce un dolor visible o genera validación comercial | El sitio público y la solicitud de demo se ubican al inicio para habilitar exposición, comprensión del producto y captación temprana. |
| Dependencia funcional | Qué historias habilitan otras historias posteriores | Catálogo, condiciones comerciales, captura del pedido y autenticación anteceden a seguimiento avanzado y funciones complementarias. |
| Riesgo operativo | Qué tan crítica es la historia para evitar errores de stock, crédito, trazabilidad o cierre | Reserva de stock, alertas de validación, gestión de estados y POD se priorizan antes que mejoras accesorias. |
| Coherencia técnica | Qué tanto conviene consolidar contratos y reglas compartidas antes de expandir interfaces | Las historias de API se ubican en una fase técnica específica, pero derivan directamente del flujo ya priorizado. |

### 3.3.1. Detalle del Product Backlog (Full Backlog)

*Product Backlog — Ordenamiento, Valor y Estimación*

| # Orden | User Story Id | Título | Descripción | Story Points |
| :--- | :--- | :--- | :--- | :--- |
| **1** | US18 | Envío de contacto | Como visitante bilingüe del sitio, quiero enviar mis datos a través del formulario, para abrir una línea de conversación oficial sobre Nexa. | 3 |
| **2** | US19 | Validación Feedback | Como visitante del sitio, quiero recibir validaciones instantáneas, para corregir errores de formato antes de intentar enviar el formulario. | 3 |
| **3** | US03 | Cambio de idioma | Como visitante bilingüe, quiero cambiar el idioma del sitio entre EN y ES, para revisar el contenido sin perder el contexto de navegación. | 3 |
| **4** | US05 | Propuesta en Hero | Como visitante, quiero ver la propuesta principal de Nexa desde la Home, para entender rápidamente qué problema operativo resuelve. | 2 |
| **5** | US08 | Solicitar demo | Como visitante comercial, quiero iniciar una solicitud de demo desde la Home, para abrir una conversación sobre el producto. | 2 |
| **6** | US01 | Navegar entre páginas | Como visitante del sitio, quiero navegar entre Home, Platform, Company y FAQ desde el navbar, para revisar el proyecto Nexa sin fricción. | 2 |
| **7** | US12 | Hub de Solutions | Como visitante del sitio, quiero explorar el hub de Solutions, para identificar el segmento comercial con el que más coincido. | 2 |
| **8** | US02 | Dropdown de Solutions | Como visitante del sitio, quiero abrir el menú Solutions y escoger un segmento comercial, para acceder rápidamente a la propuesta de mi interés. | 2 |
| **9** | US13 | Propuesta Distribuidores | Como visitante distribuidor, quiero ver una propuesta específica para mi operación, para evaluar si Nexa resuelve mis problemas de coordinación. | 2 |
| **10** | US14 | Propuesta Importadores | Como visitante importador o mayorista, quiero ver una propuesta conectada con mi realidad, para entender si Nexa aporta visibilidad a mi empresa. | 2 |
| **11** | US15 | Propuesta Cámaras Frías | Como visitante de cámaras frías, quiero ver la propuesta para almacenamiento, para evaluar si aplica a mi inventario y trazabilidad. | 2 |
| **12** | US09 | Módulos en Platform | Como visitante del sitio, quiero revisar los módulos visibles de la página Platform, para entender el alcance funcional comunicado. | 2 |
| **13** | US10 | Cambio operativo | Como visitante del sitio, quiero comprender cómo cambia la operación diaria con Nexa, para evaluar si el producto encaja con mi flujo real. | 2 |
| **14** | US11 | MVP vs Expansión | Como visitante del sitio, quiero distinguir entre capacidades del MVP y expansión futura, para no confundir el producto disponible con el roadmap. | 2 |
| **15** | US06 | Problema operativo | Como visitante del sitio, quiero entender el problema operativo que Nexa busca corregir, para comparar la situación actual con el valor propuesto. | 2 |
| **16** | US07 | Capacidades clave | Como visitante del sitio, quiero visualizar las capacidades centrales de Nexa desde la Home, para relacionarlas con mis problemas operativos concretos. | 2 |
| **17** | US16 | Narrativa Company | Como visitante del sitio, quiero conocer la narrativa de Company, para entender quién impulsa Nexa y por qué existe el producto. | 2 |
| **18** | US17 | Soporte Humano | Como visitante del sitio, quiero identificar cómo funciona el soporte e implementación, para saber si Nexa complementa la relación comercial. | 2 |
| **19** | US20 | FAQ por Categorías | Como visitante del sitio, quiero navegar el FAQ por categorías, para revisar respuestas según el tipo específico de duda. | 2 |
| **20** | US21 | Expandir FAQ | Como visitante del sitio, quiero expandir y colapsar preguntas dentro del FAQ, para leer una respuesta específica sin abandonar la página. | 2 |
| **21** | US22 | Soporte Flotante | Como visitante del sitio, quiero abrir el panel flotante de soporte, para acceder rápidamente a ayuda sin perder el contexto actual. | 2 |
| **22** | US04 | Navegación en Footer | Como visitante del sitio, quiero usar los enlaces del footer, para moverme a contenido adicional o puntos de contacto desde el final de la página. | 1 |
| **23** | US23 | Acceso público al portal en preparación | Como visitante del sitio, quiero entender qué ocurre al pulsar Log in, para no perderme si el portal todavía no está disponible. | 1 |
| **24** | US29 | Pedido Asistido | Como coordinadora comercial, quiero crear un pedido asistido para un cliente, para registrar su solicitud sin depender de canales informales. | 5 |
| **25** | US30 | Carga de Condiciones | Como coordinadora comercial, quiero identificar al cliente por RUC/DNI y cargar sus condiciones, para no validar crédito ni precios manualmente. | 5 |
| **26** | US32 | Alertas de Validación | Como coordinadora comercial, quiero visualizar alertas de stock y crédito antes de enviar, para evitar prometer entregas incumplibles. | 5 |
| **27** | US24 | Catálogo personalizado | Como cliente comercial, quiero consultar un catálogo personalizado, para ver únicamente los productos que puedo comprar según mi cuenta. | 5 |
| **28** | US34 | Compra B2B | Como cliente comercial, quiero crear un pedido desde el portal B2B, para abastecerme de forma autónoma sin depender de llamadas. | 5 |
| **29** | US28 | Mantenimiento Catálogo | Como supervisora autorizada, quiero publicar u ocultar productos del catálogo, para controlar qué ve el cliente en cada momento. | 5 |
| **30** | US36 | Repetir Pedido | Como cliente comercial, quiero repetir un pedido anterior como base, para acelerar compras recurrentes y reducir tiempo. | 5 |
| **31** | US31 | Registro en Campo | Como coordinadora comercial, quiero registrar productos y capturar evidencia en campo, para digitalizar pedidos en tiempo real. | 3 |
| **32** | US33 | Confirmación Trazable | Como coordinadora comercial, quiero enviar el pedido asistido y recibir confirmación, para que la operación tenga evidencia del origen. | 3 |
| **33** | US25 | Búsqueda SKU/Nombre | Como cliente comercial, quiero buscar productos por nombre o código SKU, para ubicar rápidamente lo que necesito pedir. | 3 |
| **34** | US26 | Filtros de Categoría | Como cliente comercial, quiero filtrar el catálogo por categoría y conservación, para explorar la oferta de forma más precisa. | 3 |
| **35** | US27 | Ficha Técnica | Como cliente comercial, quiero ver el detalle, disponibilidad y ficha técnica de un producto, para tomar decisiones de compra confiables. | 3 |
| **36** | US35 | Borradores B2B | Como cliente comercial, quiero guardar un borrador y retomarlo luego, para no perder información de una compra en proceso. | 3 |
| **37** | US37 | Envío & Confirmación | Como cliente comercial, quiero enviar mi pedido desde el portal y recibir confirmación clara, para saber que el distribuidor ya recibió la solicitud. | 3 |
| **38** | US38 | Historial de Pedidos | Como cliente comercial, quiero consultar mi historial y detalle de pedidos, para revisar compras anteriores y estados actuales. | 3 |
| **39** | US47 | Reserva Automática | Como sistema de inventario, quiero reservar y liberar stock según el estado del pedido, para mantener la disponibilidad consistente. | 8 |
| **40** | US39 | Seguimiento & ETA | Como cliente comercial, quiero visualizar el estado actual y la ETA de mi pedido, para preparar la recepción de mercadería con certeza. | 5 |
| **41** | US41 | Gestión de Estados | Como usuaria autorizada, quiero actualizar los estados del pedido en secuencia válida, para reflejar el avance real de la operación. | 5 |
| **42** | US42 | Registro POD | Como transportista autorizado, quiero registrar el despacho y generar el POD, para cerrar la trazabilidad con evidencia digital. | 5 |
| **43** | US44 | Monitor Stock | Como supervisora, quiero visualizar el stock total y comprometido por SKU, para no prometer pedidos que la empresa no puede cubrir. | 5 |
| **44** | US45 | Gestión de Lotes | Como supervisora operativa, quiero registrar lotes y vencimientos por SKU, para habilitar rotación FEFO y mejorar la trazabilidad. | 5 |
| **45** | US46 | Alertas FEFO | Como supervisora operativa, quiero consultar alertas de vencimiento próximo, para priorizar la rotación y evitar pérdidas. | 5 |
| **46** | US48 | Bloqueo Producto | Como supervisora operativa, quiero bloquear productos con restricciones, para evitar que ingresen en pedidos con observaciones. | 5 |
| **47** | US40 | Visibilidad de Incidencias | Como cliente comercial, quiero recibir visibilidad de demoras e incidencias, para entender cambios relevantes en la entrega. | 3 |
| **48** | US43 | Consulta de Cierre | Como usuaria autorizada, quiero consultar la evidencia y el cierre de la entrega, para resolver reclamos y confirmar la trazabilidad. | 3 |
| **49** | US52 | Bloqueo por Crédito | Como sistema comercial, quiero bloquear pedidos que incumplen reglas de crédito o mora, para evitar operaciones inviables. | 8 |
| **50** | US49 | Ficha de Cliente | Como usuaria interna, quiero registrar y mantener la ficha del cliente comercial, para operar pedidos con información confiable. | 5 |
| **51** | US50 | Condiciones de Venta | Como usuaria interna, quiero asignar listas de precio y crédito a un cliente, para diferenciar el comportamiento comercial por cuenta. | 5 |
| **52** | US51 | Saldo & Morosidad | Como supervisora autorizada, quiero visualizar el saldo vigente y morosidad al operar, para decidir si un pedido puede continuar. | 5 |
| **53** | US57 | Gestión de Cuentas | Como administradora, quiero crear y desactivar cuentas internas, para controlar quién puede ingresar al sistema y sus permisos. | 5 |
| **54** | US56 | Recuperar Acceso | Como usuaria del sistema, quiero recuperar mi acceso mediante un flujo controlado, para volver a operar de forma segura. | 5 |
| **55** | US53 | Historial Comercial | Como usuaria interna, quiero consultar el historial comercial y operativo por cliente, para revisar el comportamiento de la relación. | 3 |
| **56** | US54 | Login Interno | Como usuaria interna, quiero iniciar sesión en la plataforma, para acceder únicamente a los módulos que corresponden a mi rol. | 3 |
| **57** | US55 | Login B2B | Como cliente comercial, quiero iniciar sesión en el portal, para gestionar mi catálogo y pedidos de forma privada. | 3 |
| **58** | US60 | API Cliente & Crédito | Como Developer, quiero un endpoint (GET /customers), para soportar el flujo asistido con carga automática de condiciones comerciales. | 8 |
| **59** | US61 | API Registro Pedido | Como Developer, quiero un endpoint (POST /orders), para recibir solicitudes estructuradas desde el portal o captura asistida. | 8 |
| **60** | US58 | API Catálogo | Como Developer, quiero un endpoint de catálogo (GET /products), para que el portal consulte productos según el contexto. | 5 |
| **61** | US59 | API Ficha Producto | Como Developer, quiero un endpoint de detalle (GET /products/{id}), para mostrar info ampliada y documentos técnicos. | 5 |
| **62** | US62 | API Tracking & ETA | Como Developer, quiero un endpoint (GET /shipments/{id}), para mostrar el estado actualizado y la predictibilidad de entrega. | 5 |
| **63** | US63 | API POD & Eventos | Como Developer, quiero un endpoint (POST /shipments/{id}/pod), para registrar salida y cierre con evidencia digital. | 5 |
| **64** | US64 | API Auth & Recover | Como Developer, quiero endpoints de autenticación (/auth), para que las aplicaciones operen con sesiones seguras y controladas. | 5 |

### 3.3.2. Resumen de Estimación y Release Map

*Resumen de Estimación por Épica y Roadmap de Lanzamiento*

| Épica | Historias Incluidas | SP Total | Sprint Sugerido | Prioridad Negocio |
| :--- | :--- | :--- | :--- | :--- |
| EP01-EP06 | US01-US23 | 43 | Sprint 1 | Crítica (Landing) |
| EP07-EP09 | US24-US38 | 65 | Sprint 2 | Alta (Ventas) |
| EP10-EP11 | US39-US48 | 51 | Sprint 3 | Alta (Logística) |
| EP12-EP13 | US49-US57 | 39 | Sprint 4 | Media (Soporte) |
| EP14 | US58-US64 | 41 | Sprint 5 | Técnica (Backend) |

**Total de Story Points del Proyecto: 238**

<p align="justify">
La secuencia del roadmap sigue una lógica deliberada. El <strong>Sprint 1</strong> concentra el frente público porque permite validar entendimiento del problema, foco de segmento y captación comercial sin bloquear todavía el núcleo transaccional. Dentro de ese bloque se adelantan primero las historias de mayor peso ligadas a contacto, validación y accesibilidad básica del sitio. El <strong>Sprint 2</strong> incorpora el corazón del valor prometido a Valeria y Hilda: catálogo, condiciones y captura o registro del pedido, abriendo antes con las historias más costosas de destrabar. El <strong>Sprint 3</strong> extiende ese valor hacia seguimiento, despacho, inventario y cierre; el <strong>Sprint 4</strong> consolida datos comerciales y control de acceso; y el <strong>Sprint 5</strong> formaliza contratos técnicos del API como capa de integración consistente con los flujos ya definidos funcionalmente.
</p>

<p align="justify">
Aunque varias historias de inventario y control recaen sobre supervisión operativa, ese frente no se modela como un segmento protagónico independiente dentro del backlog. Se trata, más bien, de un soporte transversal que habilita a Valeria, Hilda y Pedro a operar con reglas confiables. Mantener esa distinción mejora la coherencia del capítulo y evita que la priorización se disperse en actores adicionales sin justificación narrativa o metodológica.
</p>

*Relación entre incrementos, actor dominante y riesgo mitigado*

| Incremento | Actor dominante | Dolor que atiende primero | Riesgo que reduce |
| :--- | :--- | :--- | :--- |
| Sprint 1 - Validación comercial | Prospectos cercanos a S1 y S2 | Falta de claridad sobre el problema, el alcance y la propuesta de valor | Construir un producto sin validación comercial ni narrativa coherente |
| Sprint 2 - Pedido y autoservicio inicial | Valeria y Hilda | Captura manual del pedido, revisión tardía de condiciones y dependencia del canal informal | Doble digitación, retrabajo y fricción en el abastecimiento |
| Sprint 3 - Seguimiento e inventario | Hilda, Pedro y supervisión operativa | Baja visibilidad del despacho, poca predictibilidad y trazabilidad incompleta | Reclamos, promesas incumplidas y mala coordinación de stock |
| Sprint 4 - Soporte comercial y acceso | Roles internos autorizados | Información comercial dispersa y control débil de usuarios | Operación inconsistente entre cuentas, reglas y permisos |
| Sprint 5 - Contratos técnicos | Aplicaciones cliente y backend | Necesidad de integrar sin duplicar reglas de negocio | Fragmentación técnica y divergencia entre interfaces |

---

### 3.3.3. Evidencias del Backlog en Herramienta de Gestión

<p align="justify">
A continuación se presenta la evidencia visual del backlog cargado en la herramienta Jira, siguiendo la priorización por valor de negocio y el roadmap de lanzamientos definido.
</p>

[**Enlace Público al Product Backlog (Jira)**](https://team-nexa.atlassian.net/jira/software/projects/NX/boards/1/backlog?epics=visible)

<p align="justify">
La evidencia principal de esta subsección es el enlace público al backlog cargado en Jira, donde puede verificarse la organización por épicas, el orden relativo de historias y la consistencia entre estimación y roadmap. Dado que el backlog es una herramienta viva de gestión, el informe conserva aquí la referencia directa al tablero para transparentar la priorización utilizada en el proyecto, en lugar de depender exclusivamente de una captura estática que podría quedar desactualizada.
</p>

---

La elaboración del backlog prioriza la validación comercial y el flujo principal del pedido por encima de funcionalidades de soporte, manteniendo consistencia con el Impact Mapping y con la evidencia levantada en el Capítulo 2. Elaboración propia.

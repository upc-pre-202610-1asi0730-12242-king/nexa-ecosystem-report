## 4.6. Domain-Driven Software Architecture

> **Nota de alcance**: Las secciones 4.6, 4.7 y 4.8 documentan la arquitectura objetivo del sistema. En el corte TB1, la webapp opera con Fake API (JSON Server) para simular integración; el backend real y la base de datos normalizada son planificación arquitectónica, no implementación desplegada. Esta distinción es importante para no confundir diseño de dominio con evidencia de producción.

La arquitectura de Nexa se apoya en Domain-Driven Design para ordenar el dominio antes de bajar a clases, tablas o detalles de implementación. El punto de partida fue el workshop de EventStorming; a partir de esa sesión, el equipo fue separando eventos, reglas, vistas de lectura y límites funcionales hasta llegar a una estructura más clara del sistema.

En esta sección el foco está en el vínculo entre workshop y arquitectura. La separación más fina del dominio se desarrolla después en las secciones 4.7 y 4.8, donde se presentan los diagramas de clases y persistencia por bounded context.

### 4.6.1. Design-Level EventStorming

El Design-Level EventStorming permitió pasar de un flujo general del pedido a una lectura más ordenada del dominio. Las primeras tres etapas (Exploration, Timeline y Pain Points) se documentan en la sección 2.4 como parte del entendimiento del negocio. Las capturas siguientes corresponden al desarrollo técnico posterior usado por el equipo. Como respaldo adicional se mantiene el board de Miro: [Design-Level EventStorming en Miro](https://miro.com/welcomeonboard/OC95SW9ySW9zY3Q5QURlWWFpTlN4NmVuY2xHWVRYdTBkd3hZR2FHcEZ1cDRBYm5SY1NYMkpvNFdYSmc1T1hLZ2lsQko3Z2RKUDdlbWF6ZmRRU21EalNzSEZqc2NKT2l6MTc2TXBFbjFUTTM2L3phOTVDWktNeTVnY1hVZGVEZjZBd044SHFHaVlWYWk0d3NxeHNmeG9BPT0hdjE=?share_link_id=419986690457).

*Design-Level EventStorming — Step 4: Pivotal Points*
![DDD Step 4](../assets/images/chapter-4/architecture/ddd/ddd-step-4.png)
La cuarta vista resaltó los puntos de decisión. Aquí se identificaron momentos donde una confirmación, una alerta o un retraso cambia el recorrido esperado del proceso.

*Design-Level EventStorming — Step 5: Commands*
![DDD Step 5](../assets/images/chapter-4/architecture/ddd/ddd-step-5.png)
Con el flujo más claro, el workshop pasó a las acciones que disparan esos eventos. Aparecen operaciones como registrar pedido, validar disponibilidad, programar entrega o actualizar catálogo.

*Design-Level EventStorming — Step 6: Policies*
![DDD Step 6](../assets/images/chapter-4/architecture/ddd/ddd-step-6.png)
Las políticas permitieron fijar reglas del negocio que no dependen de una sola pantalla. Aquí se volvieron más explícitas las validaciones previas, restricciones de operación y condiciones de coordinación entre áreas.

*Design-Level EventStorming — Step 7: Read Models*
![DDD Step 7](../assets/images/chapter-4/architecture/ddd/ddd-step-7.png)
La séptima vista se concentró en qué información necesita ver cada actor para operar sin fricción. Esto dejó más claras salidas como listas de pedidos, paneles de inventario y vistas de seguimiento.

El board exportado no conserva una captura separada del paso 8. La consolidación visible continúa en las vistas 9 y 10.

*Design-Level EventStorming — Step 9: Consolidated Flow by Context*
![DDD Step 9](../assets/images/chapter-4/architecture/ddd/ddd-step-9.png)
La novena vista reorganiza el flujo en bloques más estables. Aquí ya se empieza a ver qué eventos y decisiones permanecen juntos dentro de una misma área funcional.

*Design-Level EventStorming — Step 10: Bounded Contexts*
![DDD Step 10](../assets/images/chapter-4/architecture/ddd/ddd-step-10.png)
La última captura resume los bounded contexts resultantes. En el workshop todavía aparecen bloques amplios como Product Catalog, Order, Inventory, Shipment y Billing, pero esa salida fue un punto de transición y no el cierre final del modelo.

La traducción posterior del workshop refinó esos bloques para el informe. Product Catalog pasó a leerse como **Catalog**; Order como **Orders**; Shipment como **Traceability**; Billing quedó absorbido como soporte de reglas comerciales e integración; y el diseño terminó separando además **Identity** y **Customer Management** como contextos necesarios para mantener límites más claros.

### 4.6.2. Software Architecture Context Diagram

Para las vistas C4 utilizamos Structurizr como herramienta de modelado, manteniendo los diagramas y sus archivos de definición dentro del repositorio. La vista de contexto ubica a Nexa frente a sus usuarios y sistemas externos; la vista de contenedores separa landing page, webapp, Fake API y componentes objetivo de backend/plataforma; y la vista de componentes detalla la distribución esperada de responsabilidades dentro de la arquitectura objetivo.

En TB1, la webapp consume Fake API como simulación, por lo que los elementos de backend, persistencia e integraciones externas se documentan como diseño objetivo y no como implementación productiva. Los archivos `c4-context-structurizr-code.txt` y `c4-container-structurizr-code.txt` quedan como evidencia de soporte del modelado en el repositorio.

*Tabla. Relación entre vistas C4 y alcance TB1*

| Vista C4 | Elementos documentados | Alcance TB1 |
|---|---|---|
| Context | Usuarios, Nexa, operación B2B e integraciones externas consideradas en el ecosistema | Representa la ubicación del sistema y sus actores principales |
| Container | Landing page, webapp, Fake API, backend/plataforma objetivo y almacenamiento objetivo | Landing y webapp desplegadas; Fake API usada como simulación; backend y persistencia como diseño objetivo |
| Component | Responsabilidades internas esperadas por módulo o contexto funcional | Referencia arquitectónica para la evolución posterior del backend/plataforma |
| Supporting files | Archivos Structurizr almacenados en el repositorio | Evidencia documental del modelado C4 usado para generar las vistas |

> *Nota:* Elaboración propia. La tabla distingue la evidencia operativa TB1 de la arquitectura objetivo.

El diagrama de contexto muestra a Nexa como sistema central dentro de dos frentes de uso: el frente público del sitio y el frente operativo del producto. También ubica integraciones externas que acompañan el ecosistema, como autenticación, notificaciones, almacenamiento documental, calendario y pagos.

*Diagrama de Contexto del Sistema Nexa (C4 — Nivel 1)*

![Diagrama de Contexto C4 — Sistema Nexa](../assets/images/chapter-4/architecture/c4/c4-context-diagram.svg)

Nota. Elaboración propia mediante Structurizr.

*Leyenda del diagrama C4 de contexto*

![Leyenda del diagrama C4 de contexto](../assets/images/chapter-4/architecture/c4/c4-context-diagram-key.svg)

Nota. Elaboración propia mediante Structurizr.

El contexto deja ver que el sistema no se limita a un solo actor. Hay visitantes que exploran la propuesta de valor, personal de la distribuidora que coordina la operación y clientes B2B que consultan catálogo, registran pedidos y siguen su estado. Las integraciones externas se entienden como apoyo del ecosistema, no como el núcleo del dominio.

### 4.6.3. Software Architecture Container Diagrams

La vista de contenedores separa el sitio público, la web application transaccional, el Fake API usado para TB1 y la plataforma/backend objetivo. Esa separación permite distinguir mejor el frente comercial del frente operativo y evita mezclar en una sola pieza la experiencia pública, la lógica de negocio simulada y la persistencia planificada.

*Diagrama de Contenedores del Sistema Nexa (C4 — Nivel 2)*

![Diagrama de Contenedores C4 — Sistema Nexa](../assets/images/chapter-4/architecture/c4/c4-container-diagram.svg)

Nota. Elaboración propia mediante Structurizr.

*Leyenda del diagrama C4 de contenedores*

![Leyenda del diagrama C4 de contenedores](../assets/images/chapter-4/architecture/c4/c4-container-diagram-key.svg)

Nota. Elaboración propia mediante Structurizr.

En esta versión del C4, el sitio público se representa como una capa en HTML, CSS y JavaScript; la aplicación transaccional aparece como un cliente web separado; el Fake API se mantiene como soporte de simulación para TB1; y el backend/plataforma, la persistencia y las integraciones externas quedan como arquitectura objetivo. También se muestran servicios externos de soporte como pagos, notificaciones, autenticación, calendario y almacenamiento documental.

> **Nota de alcance TB1:** Este diagrama representa la arquitectura objetivo del sistema Nexa. En TB1, la entrega incluye únicamente la aplicación web (Vue 3 SPA) conectada a una API simulada mediante JSON Server. El backend en ASP.NET Core, la base de datos MySQL y las integraciones externas (Stripe, OAuth, Calendar, Cloud Storage) forman parte del diseño de la arquitectura objetivo y están previstas para etapas posteriores de implementación.

### 4.6.4. Software Architecture Components Diagrams

La vista de componentes baja un nivel más y muestra cómo se reparte la responsabilidad entre interfaz, backend y servicios de apoyo. No todos los bounded contexts aparecen con la misma granularidad en esta lámina, por lo que su lectura debe complementarse con 4.7 y 4.8.

*Diagrama de Componentes del Sistema Nexa (C4 — Nivel 3)*

![Diagrama de Componentes C4 — Sistema Nexa](../assets/images/chapter-4/architecture/c4/c4-component-diagram.png)

Nota. Elaboración propia. El diagrama representa la arquitectura objetivo; en TB1 la integración se valida mediante Fake API.

En la imagen aparecen piezas visibles como Auth, Catalog, Order, Inventory y Customer dentro del backend objetivo, además de componentes de soporte como Payment Integration y Notification. Para mantener coherencia con el dominio consolidado, el informe conserva como núcleo los contextos **Identity & Access**, **Catalog**, **Orders & Commercial Management**, **Inventory** y **Dispatch & Traceability**. En esa lectura, **Auth** se alinea con **Identity & Access**, **Order** con **Orders & Commercial Management**, y los servicios de pago o notificación se tratan como apoyo transversal, no como bounded contexts principales.

Esta decisión evita forzar una correspondencia literal entre cada caja del C4 y cada bloque del dominio. El C4 resume capas e integraciones; los capítulos siguientes afinan la separación interna del modelo. Por eso Commercial Conditions y Traceability se desarrollan con más precisión en las secciones 4.7 y 4.8, donde la lógica del dominio se documenta con mayor detalle.

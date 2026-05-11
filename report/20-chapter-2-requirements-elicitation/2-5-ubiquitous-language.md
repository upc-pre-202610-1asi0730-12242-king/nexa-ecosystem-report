## 2.5. Ubiquitous Language

El siguiente glosario establece el vocabulario compartido del proyecto Nexa. Su objetivo es que el equipo, los usuarios de negocio y los evaluadores lean los mismos términos con el mismo significado, sin depender de instrucciones técnicas, nombres internos de herramientas o jerga innecesaria.

La selección de términos se alinea con los tres segmentos del producto: coordinación comercial, jefatura logística y compradores comerciales B2B. También conecta entrevistas, needfinding, user stories, diseño UX/UI y arquitectura del dominio.

*Glosario de Lenguaje Ubicuo — Dominio: Distribución B2B de productos refrigerados*

| Término | Definición |
| --- | --- |
| **Nexa** | Plataforma propuesta para ordenar pedidos B2B, inventario, despacho y trazabilidad en empresas que distribuyen productos refrigerados. |
| **SaaS** | Modelo de software al que se accede por internet, normalmente mediante una suscripción, sin que el cliente tenga que instalar o mantener servidores propios. |
| **B2B** | Relación comercial entre empresas. En Nexa, representa pedidos de negocios como bodegas, minimarkets, restaurantes u hoteles hacia una distribuidora. |
| **Cadena de frío** | Conjunto de cuidados necesarios para mantener un producto dentro de una temperatura segura desde almacén hasta entrega. |
| **Producto refrigerado** | Producto que necesita conservarse en frío para mantener su calidad, inocuidad y valor comercial. |
| **Inventario** | Registro de productos disponibles, reservados o no aptos para venta dentro de la operación. |
| **Lote** | Grupo de unidades de un mismo producto recibido o producido bajo una misma referencia, útil para controlar vencimiento y trazabilidad. |
| **Vencimiento** | Fecha límite en la que un producto puede venderse o usarse de forma segura. |
| **FEFO** | Regla de rotación que prioriza vender o despachar primero el lote que vence antes. Ayuda a reducir merma en productos perecibles. |
| **FIFO** | Regla de rotación que prioriza vender o despachar primero lo que ingresó primero al inventario. Se usa cuando el vencimiento no es la principal restricción. |
| **Pedido asistido** | Pedido registrado por coordinación comercial en nombre del cliente, especialmente cuando la solicitud llegó por WhatsApp, llamada u otro canal externo. |
| **Cliente B2B** | Negocio que compra productos a una distribuidora para revenderlos o usarlos en su propia operación. |
| **Coordinación comercial** | Rol que recibe pedidos, valida información del cliente, revisa condiciones comerciales y encamina la solicitud hacia operación. |
| **Jefatura logística** | Rol que supervisa inventario, preparación, despacho, incidencias y cierre operativo del pedido. |
| **Despacho** | Proceso mediante el cual el pedido sale de la distribuidora hacia el cliente. |
| **Trazabilidad** | Capacidad de reconstruir qué pasó con un pedido, producto o lote desde su registro hasta su entrega. |
| **POD / prueba de entrega** | Evidencia que respalda que un pedido fue entregado. Puede ser una confirmación, documento, firma o registro asociado al cierre. |
| **Condición comercial** | Regla asignada a un cliente, como forma de pago, límite de crédito, lista de precios o restricción de compra. |
| **Crédito** | Monto o plazo aprobado para que un cliente compre y pague después según condiciones acordadas. |
| **Catálogo** | Lista organizada de productos disponibles para consulta o compra, con información relevante como presentación, precio, conservación y disponibilidad. |
| **Portal B2B** | Superficie web pensada para que el cliente comercial revise catálogo, envíe pedidos y consulte el estado de sus compras. |
| **Landing Page** | Página pública que explica la propuesta de valor de Nexa y permite iniciar contacto comercial. |
| **Web Application** | Aplicación web usada desde un navegador para realizar tareas como gestionar pedidos, revisar inventario o consultar reportes. |
| **User Flow** | Secuencia de pasos que una persona sigue para cumplir una meta concreta dentro del producto. |
| **Wireflow** | Representación que combina pantallas y flujo de navegación para mostrar cómo cambia la experiencia cuando el usuario avanza o decide. |
| **Wireframe** | Boceto estructural de una pantalla. Sirve para definir contenido, jerarquía y navegación antes del diseño visual final. |
| **Mock-up** | Representación visual de alta fidelidad de una pantalla, con estilo, distribución y componentes cercanos al diseño final. |
| **Prototype** | Versión navegable o demostrable de una experiencia, usada para validar recorrido, comprensión y flujo antes de construir una versión completa. |
| **Fake API** | Servicio simulado de datos usado para probar pantallas y flujos sin depender todavía de un backend productivo. |
| **Mock data** | Datos de prueba que representan casos reales de forma simulada para validar diseño, navegación o comportamiento del sistema. |
| **Bounded Context** | Límite del dominio donde un conjunto de términos y reglas mantiene un significado claro. Por ejemplo, inventario y pedidos pueden tener reglas propias aunque estén conectados. |
| **DDD** | Enfoque de diseño que organiza el software a partir del conocimiento del negocio, sus reglas y su lenguaje común. |
| **C4 Model** | Forma de explicar la arquitectura de un sistema en distintos niveles: contexto, contenedores, componentes y, si hace falta, código. |
| **ERD** | Diagrama que muestra las entidades principales de datos y sus relaciones, útil para entender cómo se estructura la información del sistema. |

Este lenguaje ubicuo debe usarse de forma consistente en entrevistas, análisis, historias de usuario, diagramas y diseño de la solución. Elaboración propia.

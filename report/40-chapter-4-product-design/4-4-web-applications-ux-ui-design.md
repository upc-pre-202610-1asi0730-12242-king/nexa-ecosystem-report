## 4.4. Web Applications UX/UI Design.

<p align="justify">
El diseño de la web application de Nexa debe leerse como la continuación operativa de la landing page pública. Mientras el sitio público comunica el problema y la propuesta de valor, la aplicación autenticada resuelve el trabajo cotidiano mediante módulos de pedidos, inventario, despacho, trazabilidad y cierre de entrega. Por ello, su UX/UI se construye sobre un criterio distinto al marketing: <strong>claridad operativa, lectura rápida del estado del negocio y reducción de fricción en tareas repetitivas</strong>.
</p>

<p align="justify">
En esta capa del producto, la interfaz deja de priorizar la conversión comercial y pasa a enfocarse en la toma de decisiones operativas rápidas. Cada pantalla debe ayudar a responder una pregunta concreta del dominio: qué pedido está en riesgo, qué producto necesita atención, qué validación bloquea la operación, qué unidad está en ruta y qué evidencia respalda el cierre. Bajo esa lógica, la documentación se organiza en cuatro partes esenciales: wireframes, wireflows, mock-ups y user flows detallados. Los artefactos se trabajaron colaborativamente en Figma y luego se exportaron para documentar todo el recorrido funcional del MVP.

</p>

### 4.4.1. Web Applications Wireframes.

<p align="justify">
Los wireframes de la aplicación web fueron elaborados en Figma para ordenar la estructura funcional antes de entrar en alta fidelidad. Su valor no está en el acabado visual, sino en definir jerarquías, zonas de información, módulos persistentes y rutas de interacción. En Nexa, esta etapa fue clave porque el problema no consiste solo en “dibujar pantallas”, sino en traducir flujos complejos del dominio a superficies que puedan usarse bajo presión operativa.
</p>

<p align="justify">
Las diez vistas siguientes cubren el recorrido principal del MVP transaccional: control general, gestión de órdenes, captura asistida, inventario, analítica FEFO, despacho, seguimiento, detalle de pedido y cierre con evidencia. Cada wireframe modela primero la lógica de trabajo y luego la visualización final.
</p>

*Cobertura funcional de wireframes de la web application*

| Wireframe | Módulo | Decisión principal que habilita |
|---|---|---|
| Dashboard Operativo Total Control | Vista general del sistema | Priorizar alertas, revisar KPIs y detectar riesgos inmediatos |
| B2B Orders Hub | Gestión de órdenes | Ordenar estados, filtrar pedidos y decidir acciones de seguimiento |
| Creación de Pedido Asistido | Captura comercial | Registrar pedidos con validaciones antes del envío |
| Inventory Management | Inventario | Revisar stock, riesgo térmico y rotación visible |
| Confirmación de Despacho & Asignación de Flota | Despacho | Asignar transporte y liberar salida con contexto operativo |
| FEFO Intelligence & Analytics | Analítica de rotación | Priorizar lotes y anticipar vencimientos |
| Active Shipments & Routes | Seguimiento | Monitorear entregas activas e incidencias de ruta |
| Cierre de Entrega (POD) & Certificación | Cierre operativo | Registrar evidencia y certificar cumplimiento |
| Inventory Detail | Detalle de inventario | Profundizar en estado térmico y disponibilidad de un SKU |
| Order Detail & Traceability | Trazabilidad por pedido | Reconstruir historial y validar cadena de custodia |

#### Dashboard Operativo Total Control

![Wireframe Dashboard Operativo Total Control](../assets/images/webapp-wireframes/webapp-wireframe-dashboard-operativo-total-control.png)

<p align="justify">
Este wireframe define la superficie de entrada para usuarios internos que necesitan leer rápidamente el estado del negocio. La composición concentra KPIs, alertas y accesos directos a módulos críticos, evitando que la supervisión tenga que saltar entre pantallas para detectar riesgos. Su función dentro del MVP es convertir una operación fragmentada en una vista centralizada de decisión.
</p>

#### B2B Orders Hub

![Wireframe B2B Orders Hub](../assets/images/webapp-wireframes/webapp-wireframe-b2b-orders-hub.png)

<p align="justify">
La vista de órdenes organiza el flujo comercial en una bandeja operable, con estados visibles, filtros y acceso al detalle de cada pedido. Aquí la prioridad de diseño no es “mostrar una tabla”, sino permitir lectura rápida de cola de trabajo, excepciones y prioridades. Esto responde directamente al problema de desorden entre pedidos informales, confirmaciones tardías y seguimiento manual.
</p>

#### Creación de Pedido Asistido

![Wireframe Creación de Pedido Asistido](../assets/images/webapp-wireframes/webapp-wireframe-creacion-pedido-asistido.png)

<p align="justify">
Este wireframe estructura el momento más sensible del flujo: la captura del pedido por coordinación comercial. El layout reserva zonas claras para identificación del cliente, selección de productos, condiciones comerciales y validaciones visibles, reduciendo el riesgo de doble digitación o ambigüedad. Su aporte es demostrar que la captura puede nacer ordenada desde el origen.
</p>

#### Inventory Management

![Wireframe Inventory Management](../assets/images/webapp-wireframes/webapp-wireframe-inventory-management.png)

<p align="justify">
La gestión de inventario fue diseñada como una vista de control y no solo de registro. El wireframe prioriza disponibilidad, riesgo, clasificación y acceso a detalle, porque el inventario en Nexa debe sostener decisiones comerciales y no limitarse a listar cantidades. Por eso la navegación permite pasar de visión agregada a intervención puntual sin romper el contexto.
</p>

#### Confirmación de Despacho & Asignación de Flota

![Wireframe Confirmación de Despacho y Asignación de Flota](../assets/images/webapp-wireframes/webapp-wireframe-confirmacion-despacho-asignacion-flota.png)

<p align="justify">
Esta pantalla modela la transición entre pedido confirmado y ejecución física. Su estructura visibiliza unidades listas para salir, asignación de transporte y condiciones necesarias para despachar, evitando que ese paso dependa de coordinación verbal dispersa. El wireframe muestra que despacho y planeamiento deben quedar dentro de la misma lógica operativa del sistema.
</p>

#### FEFO Intelligence & Analytics

![Wireframe FEFO Intelligence & Analytics](../assets/images/webapp-wireframes/webapp-wireframe-fefo-intelligence-analytics.png)

<p align="justify">
El módulo FEFO fue planteado como una vista analítica especializada para convertir vencimientos y rotación en decisiones visibles. El wireframe ordena señales de riesgo, lotes prioritarios y lectura de tendencias, reforzando que Nexa no solo administra pedidos, sino que también ayuda a prevenir pérdida de producto. Esta pantalla conecta directamente con la necesidad de reducir merma y sostener trazabilidad de inventario perecedero.
</p>

#### Active Shipments & Routes

![Wireframe Active Shipments & Routes](../assets/images/webapp-wireframes/webapp-wireframe-active-shipments-routes.png)

<p align="justify">
El seguimiento de rutas se diseñó como tablero de operación viva. Aquí la interfaz debe soportar lectura rápida de estado, ETA, incidencias y entregas activas, porque el usuario en esta fase necesita reaccionar y no navegar sin rumbo. La estructura apunta a reducir llamadas y mejorar visibilidad compartida entre operación, coordinación y cliente.
</p>

#### Cierre de Entrega (POD) & Certificación

![Wireframe Cierre de Entrega POD y Certificación](../assets/images/webapp-wireframes/webapp-wireframe-cierre-entrega-pod-certificacion.png)

<p align="justify">
El cierre del pedido no se resolvió como un formulario aislado, sino como una interfaz de certificación de cumplimiento. Este wireframe hace visibles los campos de evidencia, conformidad y validación final, porque el objetivo es reducir reclamos posteriores y sostener un historial trazable. Su diseño responde al problema recurrente de cierres débiles, pruebas dispersas y documentación poco defendible.
</p>

#### Inventory Detail

![Wireframe Inventory Detail](../assets/images/webapp-wireframes/webapp-wireframe-inventory-detail-premium-artisan-organic-milk.png)

<p align="justify">
El detalle de inventario baja al nivel de un SKU concreto para mostrar información que no cabe en la vista agregada: estado térmico, disponibilidad, riesgo y contexto del producto. Esta profundidad es importante porque muchos problemas de cadena de frío no se detectan en una vista general, sino al revisar condiciones específicas de un ítem. Por ello, el wireframe fue planteado como apoyo a decisiones finas y no solo como ficha informativa.
</p>

#### Order Detail & Traceability

![Wireframe Order Detail & Traceability](../assets/images/webapp-wireframes/webapp-wireframe-order-detail-traceability.png)

<p align="justify">
El detalle del pedido organiza la historia completa de una orden en una sola superficie: datos comerciales, estados, eventos logísticos y evidencia asociada. Esta pantalla resulta crítica para reclamos, auditoría interna y seguimiento operativo porque traduce la promesa de trazabilidad en una vista concreta. Su función es evitar que la explicación de “qué pasó con el pedido” vuelva a depender de mensajes sueltos o reconstrucciones manuales.
</p>

### 4.4.2. Web Applications Wireflow Diagrams.

<p align="justify">
El wireflow sintetiza cómo se conectan entre sí las superficies principales de la aplicación. A diferencia del wireframe, que se enfoca en la estructura interna de una vista, el wireflow muestra continuidad entre acceso, captura, validación, seguimiento y cierre. En Nexa, esta lectura es indispensable porque el valor del sistema depende precisamente de no romper el flujo entre áreas y estados.
</p>

#### Wireflow 1 — Pedido end-to-end

- **User Goal:** Como coordinación comercial (S1) o cliente B2B (S2), necesito llevar un pedido desde el acceso hasta el cierre con evidencia sin perder continuidad entre áreas.
- **Segmentos vinculados:** S1 (captura), S2 (abastecimiento), S3 (despacho).
- **Problema de dominio que atiende:** fragmentación entre captura, validación, despacho y cierre; hoy el pedido pierde estado al saltar entre WhatsApp, ERP y operación.
- **Happy path:** login → dashboard/catálogo según rol → pedido asistido o autónomo → validación de stock y crédito OK → confirmación → seguimiento/ETA → POD y cierre.
- **Unhappy path:** si la validación detecta bloqueo de crédito o stock insuficiente, el flujo se desvía a <em>Alerta y corrección</em> y vuelve a la captura; ningún pedido avanza a confirmación sin validación OK.

*Wireflow del pedido Nexa desde acceso hasta cierre operativo*

```mermaid
graph LR
    A[Login] --> B{Tipo de usuario}
    B -->|Coordinacion interna| C[Dashboard operativo]
    B -->|Cliente B2B| D[Portal catalogo y carrito]
    C --> E[Pedido asistido]
    D --> F[Pedido autonomo]
    E --> G[Validacion de stock y credito]
    F --> G
    G -->|OK| H[Confirmacion del pedido]
    G -->|Bloqueo| I[Alerta y correccion]
    H --> J[Seguimiento y ETA]
    J --> K[POD y cierre]
```

Elaboración propia. El flujo concentra la continuidad entre captura, validación, seguimiento y cierre, evitando que el pedido quede fragmentado en herramientas paralelas.

#### Wireflow 2 — Captura asistida y validación comercial

- **User Goal:** Como coordinación comercial (S1), quiero capturar un pedido en representación del cliente verificando stock y crédito antes de comprometerlo.
- **Segmento priorizado:** S1 (captura y validación).
- **Problema de dominio:** validación tardía de crédito y stock que deriva en promesas inviables y retrabajo.
- **Happy path:** bandeja → pedido asistido → identificar cliente → condiciones comerciales → líneas de pedido → sin alertas → envío para confirmación → pedido listo para preparación.
- **Unhappy path:** si aparecen alertas de stock o crédito, el flujo regresa a las líneas para corregir cantidades, SKU o condición comercial; si no se pueden resolver, el pedido se detiene y queda registrado como bloqueado.

*Wireflow de captura asistida y validación comercial*

```mermaid
flowchart LR
    A["Bandeja de pedidos o Dashboard"] --> B["Abrir pedido asistido"]
    B --> C["Identificar cliente"]
    C --> D["Cargar condiciones comerciales"]
    D --> E["Agregar productos y cantidades"]
    E --> F{"¿Hay alertas de stock o crédito?"}
    F -->|Sí| G["Corregir pedido o detener envío"]
    G --> E
    F -->|No| H["Enviar para confirmación"]
    H --> I["Pedido listo para preparación"]
```

Elaboración propia. Este wireflow muestra el recorrido interno de coordinación comercial, donde el valor está en detectar problemas antes de comprometer el pedido.

#### Wireflow 3 — Cliente B2B desde acceso hasta seguimiento

- **User Goal:** Como cliente comercial B2B (S2), quiero comprar de forma autónoma, confirmar mi pedido y saber cuándo llegará sin tener que perseguir por WhatsApp al vendedor.
- **Segmento priorizado:** S2 (cliente B2B y abastecimiento recurrente).
- **Problema de dominio:** opacidad del abastecimiento y ausencia de ETA confiable.
- **Happy path:** login → catálogo personalizado → detalle de producto → carrito → revisión → envío y confirmación → historial → seguimiento/ETA → cierre con evidencia visible.
- **Unhappy path:** si el pedido no puede confirmarse por stock o crédito, el sistema muestra alerta explícita con motivo y acción sugerida (reducir cantidad, cambiar SKU o contactar soporte), evitando que el cliente quede en silencio.

*Wireflow del cliente B2B desde acceso hasta seguimiento*

```mermaid
flowchart LR
    A["Log in"] --> B["Catálogo personalizado"]
    B --> C["Detalle de producto"]
    C --> D["Carrito o borrador"]
    D --> E["Revisión del pedido"]
    E --> F["Envío y confirmación"]
    F --> G["Historial del pedido"]
    G --> H["Seguimiento y ETA"]
    H --> I["Cierre con evidencia visible"]
```

Elaboración propia. Aquí se resume el recorrido del cliente comercial cuando compra, revisa el estado del pedido y necesita entender cómo avanza la entrega.

### 4.4.3. Web Applications Mock-ups.

<p align="justify">
Los mock-ups de la web application desarrollan en alta fidelidad la lógica ya probada en wireframes. Su función no es “decorar” el sistema, sino validar que la jerarquía visual, los componentes y la lectura operativa sigan siendo claros cuando se incorporan color, densidad informativa, estados y patrones definitivos de interfaz. En este proyecto, las diez capturas cubren el mismo recorrido funcional del MVP y permiten explicar cómo la solución se presentaría ante usuarios reales. También fueron consolidadas en Figma antes de documentarse en el informe.
</p>

#### Dashboard Operativo Total Control

![Mock-up Dashboard Operativo Total Control](../assets/images/webapp-mockups/webapp-dashboard-operativo-total-control.png)

<p align="justify">
La versión de alta fidelidad del dashboard confirma que la pantalla puede operar como centro de mando del sistema. KPIs, alertas y bloques operativos comparten una composición que privilegia lectura rápida, con énfasis en desviaciones críticas y accesos inmediatos. Visualmente, esta vista sostiene la promesa de centralización que en el proceso actual se pierde entre múltiples herramientas.
</p>

#### B2B Orders Hub

![Mock-up B2B Orders Hub](../assets/images/webapp-mockups/webapp-b2b-orders-hub.png)

<p align="justify">
El mock-up del hub de órdenes transforma la bandeja de pedidos en una vista ejecutiva y accionable. El uso de estados, filtros y tarjetas permite identificar con rapidez qué pedidos requieren seguimiento, corrección o continuidad. Su principal aporte es hacer visible que el pedido deja de ser un mensaje informal y se convierte en un objeto gestionable.
</p>

#### Creación de Pedido Asistido

![Mock-up Creación de Pedido Asistido](../assets/images/webapp-mockups/webapp-creacion-pedido-asistido.png)

<p align="justify">
Esta pantalla demuestra cómo la captura asistida puede combinar contexto de cliente, catálogo y validación sin saturar al usuario. La alta fidelidad deja ver mejor la separación entre datos del cliente, líneas de pedido y retroalimentación del sistema, reduciendo el riesgo de error. El resultado esperado es una experiencia comercial guiada, pero todavía ágil.
</p>

#### Inventory Management

![Mock-up Inventory Management](../assets/images/webapp-mockups/webapp-inventory-management.png)

<p align="justify">
En alta fidelidad, la gestión de inventario se vuelve una vista de control operacional con mayor riqueza de lectura: disponibilidad, clasificación, indicadores y señales de riesgo. Esto es importante porque el inventario en Nexa no es un backoffice aislado, sino una pieza que alimenta la promesa comercial y la trazabilidad del pedido. El mock-up refuerza esa conexión entre stock visible y decisión de negocio.
</p>

#### Confirmación de Despacho & Asignación de Flota

![Mock-up Confirmación de Despacho y Asignación de Flota](../assets/images/webapp-mockups/webapp-confirmacion-despacho-asignacion-flota.png)

<p align="justify">
La pantalla de despacho aterriza el momento donde la orden deja el estado interno y pasa a ejecución física. La composición hace visibles unidades, asignación y condiciones de salida en una misma vista, reduciendo dependencias externas para destrabar la operación. Así, el mock-up traduce una coordinación históricamente manual en una acción estructurada dentro del sistema.
</p>

#### FEFO Intelligence & Analytics

![Mock-up FEFO Intelligence & Analytics](../assets/images/webapp-mockups/webapp-fefo-intelligence-analytics.png)

<p align="justify">
La analítica FEFO muestra cómo Nexa podría convertir vencimientos y rotación en una capa de inteligencia operativa. La alta fidelidad ayuda a leer prioridades, tendencias y alertas sin necesidad de interpretar datos dispersos. Su valor argumental es demostrar que la plataforma no solo registra inventario, sino que ayuda a protegerlo.
</p>

#### Active Shipments & Routes

![Mock-up Active Shipments & Routes](../assets/images/webapp-mockups/webapp-active-shipments-routes.png)

<p align="justify">
El seguimiento en ruta mantiene el mismo principio del wireframe, pero ahora con mayor densidad visual y mejor señalización de estados. Esta vista está orientada a monitoreo vivo, por lo que la jerarquía de colores, incidentes y estados en tránsito cumple una función operativa clara. El mock-up respalda la idea de visibilidad compartida durante despacho.
</p>

#### Cierre de Entrega (POD) & Certificación

![Mock-up Cierre de Entrega POD y Certificación](../assets/images/webapp-mockups/webapp-cierre-entrega-pod-certificacion.png)

<p align="justify">
La captura final del cierre muestra cómo la evidencia de entrega se integra a una interfaz formal y defendible. Firma, conformidad y certificación aparecen como parte del flujo normal y no como anexos improvisados. Esto fortalece la propuesta de Nexa en un punto donde hoy suelen aparecer reclamos, debilidad documental y cierre inconsistente.
</p>

#### Inventory Detail Premium Artisan Organic Milk

![Mock-up Inventory Detail Premium Artisan Organic Milk](../assets/images/webapp-mockups/webapp-inventory-detail-premium-artisan-organic-milk.png)

<p align="justify">
Esta pantalla profundiza en un producto concreto para mostrar que el sistema puede bajar de la visión agregada a la condición específica del SKU. La alta fidelidad expone mejor variables como temperatura, capacidad, riesgo y vencimiento, todas relevantes para cadena de frío. Su inclusión es importante porque demuestra que el diseño no se queda en tableros generales.
</p>

#### Order Detail & Traceability

![Mock-up Order Detail & Traceability](../assets/images/webapp-mockups/webapp-order-detail-traceability.png)

<p align="justify">
El detalle de trazabilidad en alta fidelidad reconstruye el historial del pedido como una narrativa operativa completa. La vista combina eventos, estado, evidencia y contexto de la orden, reforzando la idea de continuidad entre captura, despacho y cierre. En términos de valor, esta pantalla es una de las más importantes para sostener trazabilidad y respuesta ante incidencias.
</p>

### 4.4.4. Web Applications User Flow Diagrams.

<p align="justify">
El user flow complementa wireframes y mock-ups porque modela la interacción secuencial entre usuario y sistema. En Nexa, el flujo crítico es el reabastecimiento B2B con validaciones de negocio, ya que ahí se expresa con más claridad la promesa central del producto: hacer visible lo que hoy se valida tarde o de forma dispersa.
</p>

#### User Flow 1 — Reabastecimiento B2B con validación de negocio

- **User Goal:** Como cliente B2B (S2) o coordinadora (S1), quiero que la plataforma me deje confirmar el pedido solo cuando el sistema ya validó stock real, lote FEFO y crédito disponible.
- **Segmento:** S2 (autonomía) + S1 (asistido).
- **Problema atendido:** promesas comerciales inviables por falta de validación temprana.
- **Happy path:** login → catálogo con contexto → carrito → consulta de stock y lotes → consulta de crédito/mora → reglas OK → confirmación con seguimiento activo.
- **Unhappy path:** si mora o stock no dan, el sistema corta el flujo en la validación y devuelve un mensaje explícito con acción correctiva (ajustar cantidad, regularizar crédito o escalar a soporte).

*User Flow del reabastecimiento B2B con validación de negocio*

```mermaid
sequenceDiagram
    participant U as Cliente o Coordinadora
    participant S as Sistema Nexa
    participant I as Inventario
    participant C as Reglas comerciales
    U->>S: Inicia sesion o abre pedido asistido
    S->>U: Muestra catalogo y contexto del cliente
    U->>S: Agrega productos y cantidades
    S->>I: Consulta stock y lotes disponibles
    I-->>S: Stock real y restricciones
    S->>C: Consulta credito, mora y condiciones
    C-->>S: Reglas de aprobacion
    alt Stock y credito validos
        S->>U: Pedido listo para confirmar
        U->>S: Confirma envio
        S->>U: Estado Submitted y seguimiento activo
    else Mora o Falta Crédito
        S->>U: Alerta explicita y accion correctiva
    end
```

Elaboración propia. El flujo refleja tanto la ruta esperada como la rama de bloqueo comercial, ambas necesarias para defender la lógica del MVP transaccional.

#### User Flow 2 — Coordinadora comercial con rama de corrección

- **User Goal:** Como coordinación comercial (S1), quiero corregir un pedido cuando la validación detecta inconsistencias, sin perder la información ya capturada.
- **Segmento:** S1.
- **Problema atendido:** retrabajo manual y pérdida de datos cuando el pedido se rechaza.
- **Happy path:** pedido asistido → validación OK → confirmación.
- **Unhappy path:** validación detecta problema → rama de corrección (ajustar SKU, cantidad, condición comercial) → revalidación → confirmación o bloqueo registrado.

*User Flow de la coordinadora comercial con rama de corrección*

```mermaid
flowchart TD
    A["La coordinadora abre un pedido asistido"] --> B["Identifica al cliente"]
    B --> C["Carga condiciones y selecciona productos"]
    C --> D{"¿El sistema muestra una alerta?"}
    D -->|Sí| E["Revisa stock, crédito o datos del pedido"]
    E --> F["Corrige información y vuelve a validar"]
    F --> D
    D -->|No| G["Envía el pedido"]
    G --> H["Recibe confirmación trazable"]
    H --> I["Entrega el pedido a preparación"]
```

Elaboración propia. Este user flow enfatiza el punto de corrección temprana, que es donde Nexa busca reducir retrabajo y promesas inviables.

#### User Flow 3 — Cliente B2B con seguimiento e incidencia

- **User Goal:** Como cliente B2B (S2), quiero seguir mi pedido y reportar una incidencia sin tener que llamar ni escribir por WhatsApp.
- **Segmento:** S2 con interacción de S3 (despacho).
- **Problema atendido:** falta de visibilidad del despacho y ausencia de canal formal para reportar incidencias.
- **Happy path:** historial → seguimiento → ETA → entrega → cierre con POD disponible.
- **Unhappy path:** si hay incidencia de ruta, el cliente recibe notificación automática, puede registrar reclamo formal y ver la bitácora del pedido con evidencia asociada.

*User Flow del cliente B2B con seguimiento e incidencia*

```mermaid
flowchart TD
    A["El cliente inicia sesión"] --> B["Explora catálogo y arma su pedido"]
    B --> C["Confirma el envío"]
    C --> D["Recibe confirmación del pedido"]
    D --> E["Consulta estado y ETA"]
    E --> F{"¿Aparece una incidencia?"}
    F -->|No| G["Espera la entrega"]
    F -->|Sí| H["Revisa actualización o aviso"]
    H --> E
    G --> I["Recibe pedido y valida cierre"]
```

Elaboración propia. Este recorrido pone el foco en la necesidad de previsibilidad del cliente y en la forma en que una incidencia debe ser visible sin obligarlo a volver al canal informal.

### 4.4.5. Web Applications Mobile UX/UI Design.

<p align="justify">
Para garantizar una experiencia verdaderamente ubicua y accesible para los usuarios en movimiento (como conductores y personal en planta), las interfaces principales de la aplicación web de Nexa se adaptaron bajo principios <strong>mobile-first</strong>. Todo este trabajo de diseño estructural y visual se llevó a cabo utilizando la herramienta <strong>Figma</strong>.
</p>

#### A. Mobile Wireframes

<p align="justify">
Los wireframes para dispositivos móviles se diseñaron en Figma priorizando la densidad de información justa para pantallas compactas y reduciendo la complejidad visual sin comprometer la funcionalidad operativa.
</p>

*Estructura base del diseño móvil en Figma*

![Mobile Wireframes Overview](../assets/images/mobile-browser/landing-wireframes-mobile-overview.png)

Elaboración propia. Los wireframes móviles simplifican la lectura y aseguran que los botones de acción principal estén al alcance del pulgar del usuario.

#### B. Mobile Mock-ups

<p align="justify">
Posteriormente, los mock-ups de alta fidelidad en Figma trasladaron el sistema de diseño definitivo a los flujos móviles clave, asegurando coherencia visual y usabilidad bajo condiciones de operación logística.
</p>

*Mock-ups de alta fidelidad móviles en Figma*

![Mobile Mockups Overview](../assets/images/mobile-browser/landing-mockups-mobile-overview.png)

![Mobile Mockups Sections](../assets/images/mobile-browser/landing-mockups-mobile-sections.png)

![Mobile Mockups Usage](../assets/images/mobile-browser/landing-mockups-mobile-usage.png)

![Mobile Mockups CTA and Footer](../assets/images/mobile-browser/landing-mockups-mobile-cta-footer.png)

Elaboración propia. Muestras de alta fidelidad móvil que validan la interfaz adaptativa para el MVP de Nexa.


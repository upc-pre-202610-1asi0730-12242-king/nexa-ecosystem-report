## 4.4. Web Applications UX/UI Design.

<p align="justify">
El diseño de la aplicación web de Nexa (Portal B2B y Dashboard Operativo) se rige por el principio de <strong>Minimalismo Operativo</strong>. A diferencia del sitio público, donde el objetivo es la persuasión y el marketing, la aplicación web busca maximizar la eficiencia del usuario mediante la reducción de la carga cognitiva. Se prioriza el contraste de datos críticos (stock, temperatura, crédito) y la velocidad de ejecución de tareas repetitivas.
</p>

### 4.4.1. Web Applications Wireframes.

<p align="justify">
Los wireframes de la aplicación web se diseñaron bajo una estructura de <strong>Layout de Panel Lateral</strong>, permitiendo una navegación persistente entre los módulos de Inventario, Pedidos y Trazabilidad. Esta disposición facilita que la supervisora logística mantenga el contexto global mientras profundiza en detalles específicos de una orden o lote.
</p>

**Ilustración 37**

*Diagrama de Bloques Funcionales — Dashboard B2B y Gestión Operativa*

```mermaid
graph LR
    subgraph "Navegación"
        A[Sidebar]
    end
    subgraph "Área de Trabajo"
        B[Header: Perfil y Alertas]
        C[Body: Grillas de Datos / Formularios]
    end
    A --> B
    A --> C
```

*Nota. Elaboración propia. Esquema lógico de la disposición de componentes para asegurar una baja curva de aprendizaje y alta eficiencia operativa.*

### 4.4.2. Web Applications Wireflow Diagrams.

<p align="justify">
El Wireflow de la aplicación describe la secuencia de pantallas y estados por los que transita un pedido desde su captura hasta su despacho. Este flujo asegura que no existan callejones sin salida y que el usuario siempre reciba retroalimentación visual sobre el estado del sistema (visibilidad del estado del sistema, según las heurísticas de Nielsen).
</p>

**Ilustración 38**

*Wireflow del Proceso de Gestión de Pedidos — Secuencia de Pantallas*

```mermaid
graph LR
    A(Login) --> B(Dashboard)
    B --> C{Módulo}
    C -->|Inventario| D(Lista de Stock)
    C -->|Pedidos| E(Listado de Órdenes)
    E --> F(Crear/Editar Pedido)
    F --> G(Validación de Crédito/Stock)
    G --> H(Confirmación/Envío)
```

*Nota. Elaboración propia. Mapa de navegación interna que garantiza la coherencia en la transición entre los módulos de venta y logística.*

### 4.4.3. Web Applications User Flow Diagrams.

<p align="justify">
El User Flow se centra en el camino crítico del usuario (Happy Path) para completar una tarea fundamental: el reabastecimiento B2B. El diagrama a continuación detalla las decisiones y acciones que toma el cliente comercial para asegurar el stock en su establecimiento, integrando validaciones automáticas de negocio definidas en el backlog.
</p>

**Ilustración 39**

*User Flow: Proceso de Compra B2B Asistida y Autónoma*

```mermaid
sequenceDiagram
    participant U as Cliente / Coordinadora
    participant S as Sistema Nexa
    participant I as Inventario ERP
    U->>S: Inicia Pedido
    S->>I: Valida Stock Real
    I-->>S: Stock Disponible
    S->>U: Muestra Catálogo Filtrado
    U->>S: Agrega Productos al Carrito
    S->>S: Calcula Crédito Disponible
    U->>S: Confirma Envío
    alt Crédito OK
        S->>U: Pedido Confirmado (Submitted)
    else Mora o Falta Crédito
        S->>U: Alerta de Bloqueo Comercial
    end
```

*Nota. Elaboración propia. Flujo de interacción que minimiza los pasos de captura y automatiza las validaciones de crédito y stock identificadas como puntos de dolor.*

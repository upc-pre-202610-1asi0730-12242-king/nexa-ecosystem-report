## 4.2. Information Architecture

### 4.2.1. Organization Systems

<p align="justify">
El sistema de organización de Nexa es jerárquico y temático. La información se agrupa según el perfil del usuario (distribuidor vs. cliente comercial) y la funcionalidad de la plataforma B2B. Desde una perspectiva de Domain-Driven Design (DDD), cada módulo de la aplicación corresponde a un Bounded Context independiente con su propio modelo de dominio, lenguaje ubicuo y responsabilidades delimitadas.
</p>

**Bounded Contexts de la plataforma Nexa:**

| Bounded Context | Responsabilidad | Recursos REST (plural) |
|-----------------|-----------------|------------------------|
| **Catalog** | Gestión del catálogo de productos (SKU, lotes, rangos térmicos) | `/products`, `/products/{id}` |
| **Inventory** | Control de stock en tiempo real con política FEFO | `/inventory`, `/inventory/{skuId}` |
| **Orders** | Ciclo de vida del pedido B2B (creación, confirmación, despacho) | `/orders`, `/orders/{id}` |
| **Traceability** | Seguimiento térmico y logístico del pedido hasta entrega | `/shipments`, `/shipments/{id}/events` |
| **Identity** | Autenticación y autorización de distribuidores y clientes | `/users`, `/users/{id}` |

**Organización del Sitio Web (Ecosistema B2B):**

| Página | Contenido principal |
|--------|---------------------|
| `index.html` (Home) | Propuesta de valor central y visión general (Hero, ecosystem bento grid, trust rows) |
| `platform.html` (Platform) | Arquitectura técnica del producto (Technical Catalog, Live Inventory, End-to-End Traceability) |
| `solutions.html` (Solutions) | Casos de uso segmentados (Importers, Distributors/HORECA, Cold Storage Operators) |
| `company.html` (Company) | Visión de la empresa, principios, roadmap futuro y contacto |
| `faq.html` (FAQ) | Resolución de objeciones mediante un sistema de acordeón organizado por temas |

**Organización de la Aplicación Web (Dashboard B2B):**

<p align="justify">
El dashboard está organizado en torno a cinco módulos que reflejan directamente los Bounded Contexts del dominio:
</p>

1. **Technical Catalog** — Catálogo especializado con SKU, lote y condiciones de temperatura.
2. **Live Inventory** — Control de stock en tiempo real con rotación FEFO.
3. **B2B Portal** — Portal de pedidos para clientes comerciales.
4. **Mobile Telemetry** — Telemetría de temperatura en campo (fase posterior).
5. **End-to-End Traceability** — Seguimiento completo del pedido desde la toma hasta el despacho.

---

### 4.2.2. Labeling Systems

<p align="justify">
El sistema de etiquetado de Nexa mantiene un enfoque corporativo, formal y específico a la logística B2B. La interfaz (UI) está íntegramente en inglés, utilizando terminología estándar de la industria logística.
</p>

**Reglas de Etiquetado:**

- **Claridad operativa:** Se evitan términos genéricos de marketing. En lugar de "Dashboard" o "Features", se utilizan etiquetas precisas como "Technical Catalog", "Mobile Telemetry" o "End-to-End Traceability".

- **Estados del sistema (Status Tags):** Las etiquetas de estado no dependen solo de colores, sino de texto explícito en mayúsculas: `OPTIMAL`, `ALERT`, `CRITICAL`, `LIVE`, `VERIFIED`.

- **Términos B2B estándar:** Conceptos como `FEFO` (First Expired, First Out), `POD` (Proof of Delivery), `SKU` y `SLA` se mantienen en inglés sin traducción, por su uso universal en el sector.

- **Labels UI:** Las microetiquetas (eyebrows y cabeceras de tabla) usan la fuente Inter, 12px, negrita (700), todo en mayúsculas (uppercase) y con un espaciado de letras (*tracking*) de `0.06em`.

---

### 4.2.3. SEO Tags and Meta Tags

<p align="justify">
El posicionamiento de la plataforma está optimizado para captar pymes y grandes distribuidoras de alimentos refrigerados buscando soluciones SaaS. Las etiquetas SEO y Meta Tags siguen el sistema de etiquetado en inglés y las palabras clave de la marca.
</p>

**Title Tags (`<title>`):** Estructurados con la fórmula `[Nombre de Página] | Nexa - Cold-Chain Operations Platform`.

> Ejemplo: `<title>Platform | Nexa - Cold-Chain Operations Platform</title>`

**Meta Descriptions (`<meta name="description">`):** Enfocadas en el problema resuelto (reducción de fricción B2B, control de frío). No superan los 155 caracteres.

> Ejemplo: *"Your cold chain, finally visible. Nexa is the unified B2B architecture for catalog, inventory, orders, and temperature tracking. Built for cold-chain nodes."*

**Open Graph (OG Tags):** Utilizados para compartir la herramienta en entornos corporativos (LinkedIn, Slack).

- `og:title` prioriza claims fuertes: *"Every module connects to a live data layer."*
- `og:image` enlaza a una imagen del UI shell o dashboard mockup que transmita profesionalismo enterprise.

---

### 4.2.4. Searching Systems

<p align="justify">
El sistema de búsqueda está diseñado para operar tanto a nivel de adquisición de información (sitio web) como a nivel transaccional (portal de clientes).
</p>

**En el portal de clientes (B2B Portal):**

- **Búsqueda predictiva y técnica:** Los usuarios (ej. bodegueros) pueden buscar directamente por nombre del producto o identificadores técnicos (SKU o ID).
- **Filtros lógicos:** Se permite filtrar el catálogo por categorías (ej. lácteos, cárnicos) y cruzar resultados por "Disponibilidad Comercial" (`In Stock` / `Out of Stock`).

**En el sitio web informativo (FAQ):**

- Se utiliza un patrón de **Jump Nav** (navegación por anclas) y un sidebar pegajoso (*sticky*) en desktop para saltar directamente entre categorías de preguntas frecuentes sin necesidad de una barra de búsqueda compleja.

---

### 4.2.5. Navigation Systems

<p align="justify">
El sistema de navegación de Nexa adopta una estructura enterprise plana, sólida y accesible, priorizando la claridad sobre la decoración.
</p>

**Navbar (Navegación Principal):**

Altura fija de 64px, fondo blanco puro (#FFFFFF). Utiliza una transición que añade una ligera sombra (`shadow-sm`) solo al hacer scroll más de 8px hacia abajo (`.scrolled`). Los enlaces centrales son: Home, Platform, Solutions, Company y FAQ; el enlace activo se destaca mediante peso tipográfico (600) y un color más intenso.

**Dropdown "Solutions":**

Funciona mediante *click-to-open* (no hover, para garantizar accesibilidad). Despliega un panel de 288px e incluye un recubrimiento (*overlay*) oscuro al 5% sobre el resto de la página para concentrar el foco. Puede cerrarse haciendo clic fuera de él, presionando Escape, o mediante el mismo botón.

**Scroll Strip Horizontal:**

Para mostrar la trazabilidad técnica (*protocol strip*), se utiliza un sistema de navegación horizontal (`ScrollBy +/-360px`) controlado mediante botones tipo `.btn-icon` circulares.

**Footer:**

Funciona como ancla final y directorio. Ubicado en una zona oscura (fondo `--c-footer-dark`, #0B1120), está estructurado en una grilla asimétrica (1.4fr + 3 columnas), con enlaces en texto blanco a un 50% de opacidad y hover al 90%.

*(Imagen pendiente de agregar)*

*Figura 6. Comportamiento del Navbar (estado base vs scrolled) y el Dropdown de Solutions.*

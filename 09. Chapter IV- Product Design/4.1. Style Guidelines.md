# Capítulo IV: Product Design

## 4.1. Style Guidelines

### 4.1.1. General Style Guidelines

<p align="justify">
A nivel de marca y percepción general, Nexa se rige por un conjunto de principios visuales y conceptuales diseñados para transmitir confianza técnica y control operativo:
</p>

- **Percepción objetivo:** La marca debe percibirse como confiable, ordenada, limpia, enterprise premium, técnicamente creíble y cercana.

- **Palabras clave de marca:** Claridad, control, trazabilidad, operación, confianza, fluidez, precisión, modularidad, resiliencia, visibilidad térmica y ejecución B2B.

- **Narrativa:** *De visibilidad operacional a control.* El diseño guía al usuario a través del problema real, los módulos, el protocolo, la trazabilidad, el roadmap y, finalmente, la conversión.

- **Lenguaje visual:** Se priorizan los datos, estados operativos, tablas, chips, cards y mockups de dashboards con información verosímil (SKU, lotes, temperatura, FEFO) por encima de ilustraciones puramente decorativas.

---

### 4.1.2. Web Style Guidelines

<p align="justify">
El sistema visual web de Nexa está estructurado en un ecosistema estático multipágina, construido con HTML, CSS modular (basado en tokens) y JavaScript vanilla. A continuación, se detallan los lineamientos técnicos de la interfaz web:
</p>

#### Sistema de Color

<p align="justify">
La paleta de Nexa sigue la regla 60-30-10: 60% para fondos claros, 30% para superficies y tonos neutrales, y 10% para el color azul de marca/acento.
</p>

**Colores Principales:**

- **Primary CTA & Brand:** `--c-primary` (#2554DF). Usado en botones principales, links activos y estados seleccionados. Su hover es `--c-primary-hover` (#1A42BD).

- **Superficies Claras:** Fondo general `--c-base` (#FBFCFD), bandas y paneles secundarios `--c-surface` (#F3F5F7), y cards elevadas `--c-white` (#FFFFFF).

- **Superficies Oscuras:** Reservadas para aportar peso narrativo (ej. roadmap, terminal mockups). Fondo `--c-dark-base` (#070A10) y cards oscuras `--c-dark-surface` (#0F1523).

**Estados (Status Colors):**

| Estado | Color principal | Color hover |
|--------|----------------|-------------|
| Optimal / Active | #22C55E | #16A34A |
| Alert / Warning | #F59E0B | #D97706 |
| Critical / Pain | #EF4444 | #DC2626 |

*(Imagen de paleta de colores pendiente de agregar)*

---

#### Tipografía

<p align="justify">
La interfaz está en idioma inglés y utiliza tres familias tipográficas específicas que no deben mezclarse:
</p>

- **Display / Headings** (`--font-display`): **Plus Jakarta Sans.** Utilizada para el Hero (`clamp(44px, 5.5vw, 80px)` en peso 800) y headings de secciones.

- **Body** (`--font-body`): **Inter.** Usada para párrafos, FAQ, formularios y descripciones. Tamaño base de 16px con line-height de 1.6–1.7 (peso 400–500).

- **Mono** (`--font-mono`): **SF Mono o Fira Code.** Exclusivo para datos técnicos, IDs, SKU, especificaciones de temperatura y métricas de mockups (10–13px).

*(Imágenes de muestra tipográfica pendientes de agregar)*

---

#### Espaciado, Layout y Componentes

- **Grilla:** Todo el sistema se basa en una grilla múltiplo de 4px (ej. `--space-4` = 16px para botones; `--space-6` = 24px para cards).

- **Contenedores:** El contenedor principal tiene un ancho máximo de 1280px (`.container`), y el ritmo principal entre secciones está definido por un padding de 96px (`.section`).

**Botones:**

| Clase | Estilo | Altura |
|-------|--------|--------|
| `.btn-primary` | Fondo #2554DF, texto blanco, sombra azul | 56px (lg) / 48px (md) / 40px (sm) |
| `.btn-secondary` | Blanco, borde medio (`rgba(0,0,0,0.08)`), sombra suave | 56px (lg) / 48px (md) / 40px (sm) |

Radio de borde (border-radius) predominante de 12px.

- **Superficies:** Las cards principales utilizan `surface-elevated` (fondo blanco, borde ligero, sombra grande `--shadow-lg` y `radius-xl`).

*(Imágenes de componentes UI pendientes de agregar)*

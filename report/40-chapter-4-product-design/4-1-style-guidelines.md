# Capítulo IV: Product Design

El Capítulo IV representa la transición desde la fase de descubrimiento hacia la materialización visual y arquitectónica de la plataforma. En esta sección se documentan los criterios estéticos, las estructuras de información y las decisiones de diseño que permiten transformar los Bounded Contexts identificados en el dominio en una solución digital coherente. Nexa se construye como un ecosistema de tres superficies complementarias: una landing page pública, una webapp operativa interna y un portal B2B para compradores comerciales. Cada superficie comparte un lenguaje visual común pero se adapta al contexto de uso específico.

---

## 4.1. Style Guidelines

Nexa utiliza un sistema visual unificado que se adapta según la superficie del producto. Las tres superficies comparten ADN visual (familia cromática, tipografía, espaciado y patrones de componentes), pero difieren intencionalmente en densidad, escala y tono comunicacional:

- **Landing Page** — superficie editorial y de conversión. Usa tipografía de mayor escala, CTAs promocionales y composiciones de baja densidad para comunicar valor.
- **Webapp Operativa (Ops)** — superficie de trabajo interno para coordinación comercial y logística. Usa controles compactos, tablas, formularios, drawers y dashboards con alta densidad informativa.
- **Portal B2B** — superficie para compradores comerciales. Combina claridad de catálogo con funcionalidad transaccional para pedidos y seguimiento.

La relación entre superficies es **consistente pero adaptada al contexto**: comparten identidad de marca sin ser pantallas idénticas.

---

### 4.1.1. Visual System Overview

El sistema visual de Nexa se implementa mediante Design Tokens en CSS nativo (`tokens.css`), lo que permite gestionar cambios globales desde un único punto de verdad. Los tokens cubren color, tipografía, espaciado, radios y sombras, y se consumen tanto en la landing como en la webapp.

La arquitectura de tokens facilita:

- Cambios de marca o contraste sin tocar componentes individuales.
- Coherencia automática entre superficies al compartir la misma fuente de valores.
- Escalabilidad hacia el portal B2B sin duplicar definiciones.

---

### 4.1.2. Color Palette

La paleta se organiza en cinco grupos funcionales: marca primaria, base/superficie, texto, estados semánticos y acentos de interacción.

*Sistema de Colorimetría Nexa*

![Colorimetry](../assets/images/style-guidelines/style-colors.png)

Especificación de Brand Colors, Text Colors y Status Colors. Elaboración propia.

| Grupo | Propósito | Landing | Webapp/Portal | Observación |
|---|---|---|---|---|
| Primary Blue | Marca, CTAs, estados activos | Hero buttons, enlaces principales | Botones de acción, sidebar activo, badges | Misma familia cromática |
| Warm Off-White | Fondo base, descanso visual | Background de secciones claras | Background de contenido principal | Base cálida compartida |
| Neutral Grey | Texto secundario, bordes sutiles | Subtítulos, separadores | Labels, bordes de tabla, texto guía | Escalas similares |
| Dark Surface | Navbar, footer, contraste | Header y footer del sitio | Sidebar colapsado, overlays | Tono oscuro compartido |
| Status: Optimal | Confirmación, éxito | Badges de disponibilidad | Stock OK, pedido confirmado, entrega exitosa | Verde semántico |
| Status: Critical | Error, ruptura, alerta | — | Stock agotado, validación fallida, temperatura fuera de rango | Rojo semántico |
| Status: Warning | Atención, riesgo moderado | — | Lote próximo a vencer, crédito limitado | Ámbar semántico |
| Status: Info | Información neutral, progreso | — | Pedido en tránsito, estado informativo | Azul claro semántico |

La diferencia principal entre superficies no está en los valores cromáticos sino en su frecuencia de uso: la landing emplea primordialmente la familia primaria y bases claras; la webapp y el portal incorporan además toda la gama de estados semánticos para comunicar condiciones operativas.

---

### 4.1.3. Typography

Nexa emplea **Inter** como familia tipográfica principal para interfaz y cuerpo de texto, seleccionada por su legibilidad en pantalla, soporte amplio de pesos y optimización para tamaños pequeños en contextos de alta densidad. Para datos técnicos, códigos de lote, SKUs y telemetría se utiliza **Fira Code** como familia monoespaciada.

*Sistema Tipográfico Nexa*

![Typography](../assets/images/style-guidelines/style-typography.png)

Definición de jerarquías para Display, Headings, Body y Mono. Elaboración propia.

| Nivel | Familia | Uso en Landing | Uso en Webapp |
|---|---|---|---|
| Display / Hero | Inter (700–800) | Títulos hero, `clamp(46px, 5.8vw, 84px)` | — |
| Heading | Inter (600–700) | Títulos de sección | Títulos de módulo, encabezados de card |
| Body | Inter (400) | Párrafos, descripciones | Labels, contenido de tabla, descripciones |
| Label / Caption | Inter (500) | Micro-copy de CTA | Badges, estados, metadata |
| Mono / Technical | Fira Code (400) | — | Códigos de lote, SKU, timestamps |

La landing utiliza escalas tipográficas más amplias (hero hasta 84px) porque su objetivo es captar atención; la webapp comprime la escala (headings de 18–24px, body de 14–16px) porque prioriza densidad informativa y lectura rápida de múltiples elementos simultáneos.

---

### 4.1.4. Components and UI Patterns

El sistema de componentes se construye sobre patrones reutilizables que varían en escala y densidad según la superficie.

*Botones y Componentes Nexa*

![Buttons](../assets/images/style-guidelines/Buttons.jpeg)

Variantes de botones primarios, secundarios y estados. Elaboración propia.

#### Patrones compartidos

| Patrón | Comportamiento común |
|---|---|
| Botón primario | Fondo azul primario, texto blanco, border-radius consistente |
| Botón secundario | Borde azul, fondo transparente o claro |
| Cards / Surfaces | Fondo blanco, border-radius redondeado, sombra sutil |
| Form fields | Borde gris, texto guía en gris medio, focus ring azul |
| Status badges | Color semántico + texto en contraste |

#### Variaciones por superficie

| Componente | Landing | Webapp |
|---|---|---|
| CTA principal | Botón alto (48–56px), texto promocional, a veces con icono | Botón compacto (36–40px), texto de acción operativa |
| Cards | Comunican valor, beneficios, propuesta | Muestran métricas, KPIs, resumen de entidad |
| Navegación | Navbar horizontal con dropdown de soluciones | Sidebar vertical con módulos agrupados por dominio |
| Tablas | No aplica | Componente central: filas densas, filtros, ordenamiento |
| Drawers/Modals | No aplica | Detalle de entidad, formularios de edición rápida |
| Badges/Estados | Mínimo (disponibilidad) | Frecuente (estados de pedido, stock, temperatura, crédito) |

---

### 4.1.5. Responsive and Surface Adaptation

El sistema de diseño opera sobre una rejilla de 12 columnas con breakpoints para Desktop HD (1440px), Desktop (1024px), Tablet (768px) y Mobile (375px).

*Sistema de Rejilla y Breakpoints*

![Grid System](../assets/images/style-guidelines/grid-system.jpeg)

Dimensionamiento para Desktop HD, Desktop y Tablet. Elaboración propia.

*Escala de Espaciado*

![Spacing](../assets/images/style-guidelines/Spacing.jpeg)

Escala basada en múltiplos de 4px, desde 4px hasta 96px. Elaboración propia.

**Comportamiento responsive por superficie:**

- **Landing**: responsive completo con menú mobile colapsable, hero adaptativo y secciones que pasan de multi-columna a stack vertical.
- **Webapp**: diseñada primariamente para desktop/tablet en contexto de estación de trabajo; en mobile, el sidebar colapsa y las tablas adoptan scroll horizontal o vista de tarjeta compacta.
- **Portal B2B**: responsive orientado a tablet y mobile para compradores que consultan desde dispositivo.

Los componentes interactivos respetan una altura mínima de 44px en superficies táctiles, anticipando uso con guantes en entornos refrigerados. La evidencia visual se concentra en los paneles de estilo y en los artefactos de wireframes/mockups documentados en las secciones siguientes.

---

### 4.1.6. Iconography

El sistema iconográfico utiliza trazos lineales consistentes (stroke-based) para mantener ligereza visual sin competir con la lectura de datos operativos.

*Iconografía Nexa*

![Iconography](../assets/images/style-guidelines/Iconography.jpeg)

Biblioteca de iconos vectoriales para navegación y soporte. Elaboración propia.

---

### 4.1.7. Accessibility (WCAG 2.1 AA)

El sistema cumple con el estándar AA de WCAG 2.1 en ambas superficies:

| Criterio WCAG | Implementación | Estado |
|---|---|---|
| 1.4.3 Contrast (Minimum) | Ratio 4.5:1 en textos sobre fondos claros y oscuros | Pass |
| 2.1.1 Keyboard Accessible | Navegación completa por tabulación en landing y webapp | Pass |
| 2.4.4 Link Purpose | Uso de `aria-label` descriptivos en botones y enlaces | Pass |
| 1.4.11 Non-text Contrast | Bordes y estados focales con ratio 3:1 mínimo | Pass |

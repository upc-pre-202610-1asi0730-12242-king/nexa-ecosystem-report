# Capítulo IV: Product Design

<p align="justify">
El Capítulo IV representa la transición técnica desde la fase de descubrimiento hacia la materialización visual y arquitectónica de la plataforma. En este apartado se documentan los criterios estéticos, las estructuras de información y las decisiones de diseño que permiten transformar los <strong>Bounded Contexts</strong> identificados en el dominio en una solución digital de grado empresarial (Enterprise B2B). Nexa no se construye como una interfaz tradicional, sino como un sistema operativo de decisiones logísticas.
</p>

---

## 4.1. Style Guidelines

> *"Estableciendo el lenguaje visual para el control absoluto de la cadena de frío."*

## 4.1.1. General Style Guidelines (Design Ethos)

<p align="justify">
Nexa se rige por el principio de <strong>"Calm-Tech"</strong>: la interfaz debe actuar como un soporte invisible que facilite el control absoluto sobre la cadena de frío sin generar fatiga cognitiva. En un entorno de distribución primaria, la precisión es más valiosa que la estética decorativa.
</p>

> [!IMPORTANT]
> **Filosofía B2B Precision**: La interfaz de Nexa está diseñada para minimizar el error humano mediante la jerarquización estricta de datos críticos (SKU, grados de temperatura, estados de pedido) utilizando el contraste y el espacio en blanco como herramientas de gestión.

- **Percepción Objetivo:** <span style="color: #2554df; font-weight: bold;">Confiable</span>, <span style="color: #2554df; font-weight: bold;">Ordenada</span>, <span style="color: #2554df; font-weight: bold;">Técnica</span> y de grado <span style="color: #2554df; font-weight: bold;">Enterprise</span>.
- **Lenguaje Visual:** Priorización de densidades de información controladas. El sistema de diseño se aleja de las tendencias efímeras para adoptar una estética que resista el uso intensivo en estaciones de despacho y almacenes.

---

## 4.1.2. Web Style Guidelines

#### 01. Colorimetry: El Sistema HSL Dinámico

<p align="justify">
La paleta se fundamenta en un sistema <strong>HSL (Hue, Saturation, Lightness)</strong> que permite una gestión dinámica del contraste y la adaptabilidad ante diversas condiciones lumínicas en centros logísticos.
</p>

*Sistema de Colorimetría Nexa*

![Colorimetry](../assets/images/style-guidelines/Colorimetry.jpeg)

Especificación de Brand Colors y Text Colors. Elaboración propia.

<table style="width: 100%; border-collapse: collapse; margin-top: 20px; font-size: 14px;">
  <thead>
    <tr style="background-color: #f1f5f9;">
      <th style="padding: 12px; border: 1px solid #e2e8f0; text-align: left;">Semaforización</th>
      <th style="padding: 12px; border: 1px solid #e2e8f0; text-align: left;">Propósito Operativo</th>
      <th style="padding: 12px; border: 1px solid #e2e8f0; text-align: left;">HSL / HEX Baseline</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 12px; border: 1px solid #e2e8f0;"><span style="display: inline-block; width: 20px; height: 20px; background-color: #2554df; border-radius: 4px; vertical-align: middle; margin-right: 8px;"></span> Primary Blue</td>
      <td style="padding: 12px; border: 1px solid #e2e8f0;">Acciones de mando, confirmación y jerarquía de marca.</td>
      <td style="padding: 12px; border: 1px solid #e2e8f0;"><code>221, 72%, 45%</code> | <code>#2554DF</code></td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #e2e8f0;"><span style="display: inline-block; width: 20px; height: 20px; background-color: #16a34a; border-radius: 4px; vertical-align: middle; margin-right: 8px;"></span> Optimal State</td>
      <td style="padding: 12px; border: 1px solid #e2e8f0;">Trazabilidad dentro de parámetros térmicos seguros.</td>
      <td style="padding: 12px; border: 1px solid #e2e8f0;"><code>160, 80%, 32%</code> | <code>#16A34A</code></td>
    </tr>
    <tr>
      <td style="padding: 12px; border: 1px solid #e2e8f0;"><span style="display: inline-block; width: 20px; height: 20px; background-color: #dc2626; border-radius: 4px; vertical-align: middle; margin-right: 8px;"></span> Critical Alert</td>
      <td style="padding: 12px; border: 1px solid #e2e8f0;">Ruptura de cadena de frío o error en procesamiento.</td>
      <td style="padding: 12px; border: 1px solid #e2e8f0;"><code>2, 70%, 49%</code> | <code>#DC2626</code></td>
    </tr>
  </tbody>
</table>

#### 02. Typography: Legibilidad en Pantalla

<p align="justify">
Se ha estandarizado el uso de <strong>Inter</strong> como familia tipográfica universal. Esta decisión técnica (no solo estética) garantiza que la información se mantenga legible incluso en condiciones de baja resolución o alta fatiga ocular.
</p>

*Sistema Tipográfico Nexa*

![Typography](../assets/images/style-guidelines/Typography.jpeg)

Definición de jerarquías para Display, Headings, Body y Mono. Elaboración propia.

> **Matriz Tipográfica Técnica**
>
> - **Hero Titles:** <code>clamp(46px, 5.8vw, 84px)</code> | Letter-spacing: -0.065em (Compresión para impacto visual).
> - **Data Subtitles:** <code>18px - 21px</code> | Weight: 600 (Énfasis estructural).
> - **Operational Body:** <code>16px</code> | Line-height: 1.68 (Optimizado para lectura prolongada).
> - **Monospace Data:** <code>12px - 14px</code> | **Fira Code** (Para lotes, SKUs y telemetría).

#### 03. Iconography: Linealidad y Fluidez

<p align="justify">
El sistema iconográfico utiliza trazos lineales consistentes para mantener la ligereza visual del portal, evitando que el peso de las imágenes compita con la lectura de los datos operativos.
</p>

*Iconografía Nexa*

![Iconography](../assets/images/style-guidelines/Iconography.jpeg)

Biblioteca de iconos vectoriales para navegación y soporte. Elaboración propia.

#### 04. Grid Systems & Technical Layout

<p align="justify">
Nexa utiliza una rejilla de <strong>12 columnas</strong> con un ancho de contenedor maestro de <strong>1440px</strong>. El diseño responde a la necesidad de visualizar dashboards de control en monitores de almacén, mientras que los flujos de consumo rápido se adaptan a tablets y smartphones.
</p>

*Sistema de Rejilla y Breakpoints*

![Grid System](../assets/images/style-guidelines/grid-system.jpeg)

Dimensionamiento para Desktop HD, Desktop y Tablet. Elaboración propia.

#### 05. Spacing & Rhythm System

<p align="justify">
El ritmo visual se basa en una escala de múltiplos de <strong>4px</strong>, un estándar de la industria que garantiza que cada elemento de la interfaz tenga una separación armónica y predecible.
</p>

*Escala de Espaciado Nexa*

![Spacing](../assets/images/style-guidelines/Spacing.jpeg)

Niveles de espaciado desde 4px hasta 96px. Elaboración propia.

---

## 4.1.3. Micro-Interactions & Motion Principles

<p align="justify">
El movimiento en Nexa está diseñado para dar sensación de <strong>Relatividad Operativa</strong> y fluidez sistémica. No se trata de efectos visuales, sino de retroalimentación de estado.
</p>

- **Perception Performance:** Las transiciones de 150ms a 250ms comunican que el sistema es "ligero" y "rápido", factores críticos en la percepción de eficiencia B2B.
- **Easing Curve:** Uso de <code>cubic-bezier(0.25, 0.46, 0.45, 0.94)</code>. Esta curva simula el inicio rápido y desaceleración suave, transmitiendo precisión técnica.

---

## 4.1.4. Accessibility & Compliance (WCAG 2.1)

<p align="justify">
La inclusividad es un requisito funcional. El sistema cumple con el estándar <strong>AA de las WCAG 2.1</strong>, asegurando que cualquier operario pueda utilizar la plataforma sin importar sus capacidades visuales o motrices.
</p>

<table style="width: 100%; border-collapse: collapse; margin-top: 15px; font-size: 13px;">
  <thead>
    <tr style="border-bottom: 2px solid #e2e8f0; background-color: #f8fafc;">
      <th style="padding: 12px; text-align: left;">Criterio WCAG</th>
      <th style="padding: 12px; text-align: left;">Implementación Nexa</th>
      <th style="padding: 12px; text-align: left;">Estado</th>
    </tr>
  </thead>
  <tbody>
    <tr style="border-bottom: 1px solid #e2e8f0;">
      <td style="padding: 12px;">1.4.3 Contrast (Minimum)</td>
      <td style="padding: 12px;">Ratio de contraste 4.5:1 en todos los textos sobre fondos claros y oscuros.</td>
      <td style="padding: 12px; color: #16a34a; font-weight: bold;">✓ Pass</td>
    </tr>
    <tr style="border-bottom: 1px solid #e2e8f0;">
      <td style="padding: 12px;">2.1.1 Keyboard Accessible</td>
      <td style="padding: 12px;">Navegación completa por tabulación en el selector de idiomas y soporte técnico.</td>
      <td style="padding: 12px; color: #16a34a; font-weight: bold;">✓ Pass</td>
    </tr>
    <tr style="border-bottom: 1px solid #e2e8f0;">
      <td style="padding: 12px;">2.4.4 Link Purpose</td>
      <td style="padding: 12px;">Uso de <code>aria-label</code> descriptivos en botones de solución y enlaces externos.</td>
      <td style="padding: 12px; color: #16a34a; font-weight: bold;">✓ Pass</td>
    </tr>
  </tbody>
</table>

---

## 4.1.5. Design Tokens Architecture

<p align="justify">
La mantenibilidad del diseño se asegura mediante una arquitectura de <strong>Design Tokens</strong> implementada en CSS nativo a través de variables de entorno. Esto facilita la escalabilidad del proyecto, permitiendo cambios globales (como rebranding o ajustes de contraste para visión reducida) modificando una única línea de código en el archivo <code>tokens.css</code>.
</p>

> [!NOTE]
> **Ventaja de Ingeniería**: Esta arquitectura reduce la carga de archivos CSS redundantes, mejorando la velocidad de carga de la plataforma en redes móviles de almacenes y zonas rurales donde la conectividad puede ser limitada.

## 4.1.6. Mobile-First & Cross-Platform Strategy

<p align="justify">
Aunque Nexa es una herramienta B2B orientada al escritorio para la gestión masiva de datos, su diseño contempla el <strong>consumo en movilidad</strong> para operarios de campo. Los componentes interactivos cumplen con una altura mínima de <strong>44px</strong> para garantizar una superficie de contacto apta para dedos, anticipando el uso de tabletas rugerizadas en condiciones de baja temperatura (donde el uso de guantes puede dificultar el toque preciso).
</p>

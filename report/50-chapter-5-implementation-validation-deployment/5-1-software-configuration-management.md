# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

<p align="justify">
La gestión de la configuración del software en Nexa se documenta a partir de la evidencia verificable disponible en el corte AV1: el tablero de trabajo en Jira, los repositorios GitHub del informe y del sitio público, el despliegue de la landing page y los artefactos de diseño y arquitectura elaborados durante la iteración. Esta sección distingue entre <strong>configuración efectivamente observable</strong> y <strong>capacidad planificada</strong>, evitando atribuir como desplegado aquello que en este hito aún permanece en backlog o en diseño técnico.
</p>

### 5.1.1. Software Development Environment Configuration

<p align="justify">
Para estandarizar el trabajo colaborativo del equipo y asegurar trazabilidad entre investigación, diseño, implementación y documentación, se configuró el siguiente ecosistema base:
</p>

**Gestión ágil y documentación**

- **Jira Software:** Herramienta central para la planificación Scrum, priorización del Product Backlog, definición de Sprint Backlogs y asignación de responsabilidades. La evidencia del tablero se encuentra publicada en [Nexa Product Backlog (Jira)](https://team-nexa.atlassian.net/jira/software/projects/NX/boards/1/backlog?epics=visible).
- **GitHub:** Plataforma de control de versiones utilizada para separar artefactos por repositorio y mantener trazabilidad documental y técnica. En el corte AV1, la evidencia verificable se concentra en `nexa-report` y `nexa-website`.
- **Markdown bajo enfoque Docs-as-Code:** Formato de redacción del informe técnico, organizado por capítulos numerados, activos relativos y ensamblado posterior a PDF.

**Diseño, prototipado y modelado**

- **Figma:** Utilizado para wireframes, mockups y prototipos de alta fidelidad del sitio público y de la web application.
- **UXPressia:** Utilizada para consolidar personas, journey maps y artefactos de needfinding.
- **Visual Paradigm:** Empleado para diagramas C4, modelado de dominio y diseño de base de datos.

**Entorno de implementación observable en AV1**

- **Visual Studio Code:** Editor utilizado para la maquetación del landing site y la edición del repositorio documental.
- **HTML5 + CSS modular + JavaScript vanilla:** Stack efectivamente visible en `nexa-website`, incluyendo navegación multipágina, internacionalización EN/ES y componentes de interacción sin frameworks de frontend.
- **Capacidad técnica planificada:** El backlog ya contempla scaffolding del backend en ASP.NET Core, documentación Swagger y componentes del portal transaccional; sin embargo, esa capacidad todavía no constituye evidencia de despliegue final en este workspace al cierre de AV1.

### 5.1.2. Source Code Management

<p align="justify">
El control de versiones se organiza bajo una convención GitFlow y una disciplina de integración incremental que prioriza trazabilidad por artefacto y por tipo de cambio. La configuración declarada del proyecto distingue las siguientes ramas:
</p>

- **`main`:** rama estable para artefactos validados y listos para exposición o entrega.
- **`develop`:** rama de integración prevista para consolidar avances del equipo.
- **`feature/*`:** ramas efímeras para contenido o capacidades específicas.
- **`release/*` y `hotfix/*`:** ramas reservadas para preparación de entregables y correcciones críticas.

<p align="justify">
En la práctica, el repositorio académico y el repositorio del sitio público funcionan como dos flujos sincronizados: el primero preserva la narrativa, trazabilidad y justificación ingenieril; el segundo concentra la implementación visible del MVP público. Esta separación reduce ruido entre documentación y código, y hace más clara la evidencia de contribución por commit, archivo y sprint.
</p>

### 5.1.3. Source Code Style Guide & Conventions

<p align="justify">
Para garantizar mantenibilidad y lectura homogénea del proyecto, el equipo adopta convenciones explícitas tanto para el código fuente como para los artefactos documentales:
</p>

**Convención de commits (Conventional Commits):** Los mensajes siguen el patrón `type(scope): description`, en minúsculas y sin punto final.

- **feat:** para nuevas características o Historias de Usuario.
- **fix:** para la corrección de errores funcionales.
- **docs:** para actualizaciones exclusivas en documentación.
- **refactor:** para cambios de estructura sin modificar comportamiento.
- **ci:** para configuración de integración continua.

**Convenciones de repositorio y documentación**

- Prefijos numéricos por capítulo para asegurar orden de ensamblado.
- Rutas relativas para activos visuales dentro de `report/assets/images/`.
- Uso de títulos, subtítulos y numeración académica alineados al template UPC.
- Historias de usuario redactadas con criterios Gherkin y vinculadas a claves Jira del tipo `NX-###`.

**Convenciones de implementación visible**

- El sitio público mantiene una organización multipágina con archivos HTML por sección y assets desacoplados por responsabilidad.
- Los nombres de clases e identificadores del frontend siguen `kebab-case`.
- La lógica de internacionalización se centraliza en un módulo propio de JavaScript.

**Convenciones REST API planificadas**

Aunque el API no forma parte del despliegue activo de AV1, el capítulo 4 y el backlog ya fijan la convención REST basada en recursos en plural y sustantivos:

- `GET /orders` — listado de pedidos
- `GET /orders/{id}` — detalle de un pedido
- `POST /orders` — creación de pedido
- `GET /products` — catálogo de productos
- `GET /products/{id}` — detalle de producto
- `GET /inventory` — estado del inventario

**Convenciones de backend previstas:** PascalCase para clases y métodos; camelCase para parámetros y variables locales en el contexto de C# / ASP.NET Core.

### 5.1.4. Software Deployment Configuration

<p align="justify">
La evidencia de despliegue de AV1 se concentra en el sitio público y en la publicación de artefactos de colaboración. Por ello, la configuración debe leerse en dos niveles: <strong>despliegue activo</strong> y <strong>despliegue proyectado</strong>.
</p>

- **Landing Page (`nexa-website`):** Desplegada en GitHub Pages y verificada en la URL pública [https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/](https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/). El sitio ofrece navegación multipágina, selector EN/ES, CTA de demostración, FAQ y secciones por segmento operativo.
- **Backlog y planificación Scrum:** Publicados en Jira como evidencia de gestión colaborativa, priorización y evolución incremental.
- **Informe técnico (`nexa-report`):** Conservado como repositorio Docs-as-Code, desde el cual se genera el entregable PDF.

- **Backend, web application y base de datos:** Permanecen como alcance técnico modelado y backlog priorizado, pero no como despliegue verificable de AV1 dentro del workspace inspeccionado. Esta frontera es importante para la honestidad del informe: el hito actual demuestra sitio público, backlog, arquitectura y coordinación ágil; el flujo transaccional end-to-end aún pertenece a la siguiente fase de implementación.

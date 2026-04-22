# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

<p align="justify">
La gestión de la configuración del software establece las bases técnicas, herramientas y normativas que el equipo de Ingeniería de Software utilizará para garantizar la integridad, calidad y versionado de los artefactos de la plataforma Nexa durante todo su ciclo de vida.
</p>

### 5.1.1. Software Development Environment Configuration

<p align="justify">
Para estandarizar el desarrollo y asegurar la compatibilidad entre las estaciones de trabajo de los miembros del equipo, se ha definido el siguiente ecosistema de herramientas:
</p>

**Gestión de Proyecto y Documentación:**

- **Jira Software:** Utilizado para la gestión estricta del Product Backlog, seguimiento de los Sprints y asignación de responsabilidades bajo el marco de trabajo ágil Scrum.

- **Markdown / Microsoft Word:** Empleados para la redacción de la documentación académica oficial y la estructuración del repositorio.

**Diseño y Experiencia de Usuario (UX/UI):**

- **Figma:** Herramienta principal para el prototipado de alta fidelidad, creación de Wireframes y gestión de la biblioteca de componentes visuales (Style Guidelines).

- **UXPressia:** Plataforma utilizada para el modelado de User Personas y Customer Journey Maps.

**Desarrollo Integrado (IDE) y Arquitectura:**

- **Visual Studio 2022:** Entorno de desarrollo principal para la construcción del Backend y el API RESTful utilizando C# y ASP.NET Core.

- **Visual Studio Code:** Editor de código ligero estandarizado para la maquetación de la Landing Page (HTML/CSS/JS) y el desarrollo del Frontend (Vue.js).

- **Structurizr / Lucidchart / Miro:** Empleados para la diagramación de la arquitectura de software bajo el modelo C4, diagramas de base de datos y modelado de dominio (EventStorming).

### 5.1.2. Source Code Management

<p align="justify">
Para garantizar la mantenibilidad y legibilidad del código fuente, el equipo obedece convenciones de codificación estandarizadas por la industria:
</p>

- **Rama main (Principal):** Contiene el código en estado de producción. Cada confirmación de cambios (commit) en esta rama representa una versión estable y validada.

- **Rama develop (Desarrollo):** Rama de integración principal donde se consolida el trabajo de todos los desarrolladores del equipo.

- **Ramas feature/ (Características):** Ramas efímeras creadas a partir de develop para trabajar en Historias de Usuario específicas (ej. feature/US05-login-b2b).

- **Ramas hotfix/ (Correcciones):** Ramas de contingencia utilizadas para solucionar errores críticos detectados en el entorno de producción.

<p align="justify">
Todas las integraciones hacia las ramas principales se realizan estrictamente mediante solicitudes de extracción (Pull Requests), requiriendo la revisión y aprobación (Code Review) de al menos un miembro distinto al autor del código.
</p>

### 5.1.3. Source Code Style Guide & Conventions

<p align="justify">
Para garantizar la mantenibilidad y legibilidad del código fuente, el equipo obedece convenciones de codificación estandarizadas por la industria:
</p>

**Convención de Confirmaciones (Conventional Commits):** Todos los mensajes enviados al repositorio deben seguir un formato semántico que facilite la trazabilidad:

- **feat:** para nuevas características o Historias de Usuario.

- **fix:** para la corrección de errores funcionales.

- **docs:** para actualizaciones exclusivas en la documentación (ej. archivos de reporte Markdown).

- **design:** para ajustes en estilos CSS o estructuración de interfaces.

**Convenciones de Programación (C# / Backend):** Se aplica estrictamente PascalCase para el nombramiento de Clases, Interfaces y Métodos, y camelCase para variables locales y parámetros.

**Convenciones de Programación (Frontend):** Los nombres de los componentes y archivos deben ser descriptivos. Para los componentes de la interfaz gráfica en Vue.js, se utiliza nomenclatura de múltiples palabras (ej. OrderList.vue) para evitar colisiones con elementos nativos.

### 5.1.4. Software Deployment Configuration

<p align="justify">
El despliegue de los artefactos de software se dividirá en diferentes entornos en la nube (Cloud) para asegurar escalabilidad y separación de responsabilidades funcionales:
</p>

**Landing Page y Documentación:** Se utilizará GitHub Pages (o alternativas de alojamiento estático como Vercel) para garantizar alta disponibilidad y bajo costo de mantenimiento.

**Backend (API RESTful) y Base de Datos:** Serán alojados en plataformas de grado empresarial en la nube, garantizando el procesamiento seguro de las transacciones B2B y la persistencia relacional.

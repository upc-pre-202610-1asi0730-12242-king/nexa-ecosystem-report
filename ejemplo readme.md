<div align="center">

<br/>

<img src="./docs/assets/nexa-logo.svg" alt="Nexa" width="200"/>

<br/><br/>

# nexa-webapp

**Web application and frontend user interface for the Nexa B2B cold-chain distribution platform**

<br/>

![Vue.js 3](https://img.shields.io/badge/Vue.js-3.x-4FC08D?style=for-the-badge&logo=vue.js&logoColor=white)
![Vite](https://img.shields.io/badge/Vite-5.x-646CFF?style=for-the-badge&logo=vite&logoColor=white)
![PrimeVue](https://img.shields.io/badge/PrimeVue-4.x-10B981?style=for-the-badge&logo=primevue&logoColor=white)
![Pinia](https://img.shields.io/badge/Pinia-2.x-FFD43B?style=for-the-badge&logo=vue.js&logoColor=black)
![Axios](https://img.shields.io/badge/Axios-1.x-5A29E4?style=for-the-badge&logo=axios&logoColor=white)

<br/>

![Course](https://img.shields.io/badge/Course-1ASI0730%20Aplicaciones%20Web-0a2540?style=flat-square)
![Cycle](https://img.shields.io/badge/Cycle-2026--10-0a2540?style=flat-square)
![University](https://img.shields.io/badge/University-UPC-0a2540?style=flat-square)
![Team](https://img.shields.io/badge/Team-King-2a67d9?style=flat-square)
![Status](https://img.shields.io/badge/Status-Release%201.0.0-22c55e?style=flat-square)

<br/>

🌐 **[View Live WebApp →](https://nexa-webapp.onrender.com/)**

<br/>

</div>

---

## Overview

The `nexa-webapp` repository houses the single-page application (SPA) client interface for the Nexa B2B cold-chain operations ecosystem. Built using Vue 3 and Vite, it delivers intuitive, highly responsive dashboards for warehouse operators, logistics dispatchers, and B2B buyers. The application integrates securely with the ASP.NET Core platform backend for real-time operations, and utilizes structured in-memory datasets as safe fallbacks for local-only modules.

---

## Repository Map

<table>
  <tr>
    <td width="50%">
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-website">nexa-website</a></p>
      <p>Public landing website and central product entry point.</p>
      <p><a href="https://upc-pre-202610-1asi0730-12242-king.github.io/nexa-website/">Open Live Website</a></p>
      <p>
        <img alt="HTML5" src="https://img.shields.io/badge/HTML5-static-E34F26?style=flat-square&logo=html5&logoColor=white" />
        <img alt="CSS3" src="https://img.shields.io/badge/CSS3-responsive-1572B6?style=flat-square&logo=css3&logoColor=white" />
        <img alt="JavaScript" src="https://img.shields.io/badge/JavaScript-vanilla-F7DF1E?style=flat-square&logo=javascript&logoColor=black" />
      </p>
    </td>
    <td width="50%">
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-webapp">nexa-webapp</a> (This Repository)</p>
      <p>Main web application for B2B buyer portal, operator workflows, and cold-chain logs.</p>
      <p><a href="https://nexa-webapp.onrender.com/">Open Live WebApp</a></p>
      <p>
        <img alt="Vue 3" src="https://img.shields.io/badge/Vue%203-35495E?style=flat-square&logo=vue.js&logoColor=4FC08D" />
        <img alt="Vite" src="https://img.shields.io/badge/Vite-0F172A?style=flat-square&logo=vite&logoColor=FFD62E" />
        <img alt="PrimeVue" src="https://img.shields.io/badge/PrimeVue-0EA5E9?style=flat-square" />
      </p>
    </td>
  </tr>
  <tr>
    <td width="50%">
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform">nexa-platform</a></p>
      <p>Backend platform and API service layer context workspace.</p>
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-platform/wiki">Open Engineering Wiki</a></p>
      <p>
        <img alt="Platform" src="https://img.shields.io/badge/Platform-backend%20workspace-512BD4?style=flat-square" />
        <img alt="API" src="https://img.shields.io/badge/API-domain%20services-0EA5E9?style=flat-square" />
        <img alt="EF Core" src="https://img.shields.io/badge/EF%20Core-9.0-512BD4?style=flat-square" />
      </p>
    </td>
    <td width="50%">
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report">nexa-ecosystem-report</a></p>
      <p>Academic report, product backlog, architectural research documentation, and evidence logs.</p>
      <p><a href="https://github.com/upc-pre-202610-1asi0730-12242-king/nexa-ecosystem-report">Open Report Repository</a></p>
      <p>
        <img alt="Documentation" src="https://img.shields.io/badge/Documentation-report-0F172A?style=flat-square" />
        <img alt="UPC" src="https://img.shields.io/badge/UPC-course%20evidence-0EA5E9?style=flat-square" />
      </p>
    </td>
  </tr>
</table>

---

## Application Areas

| Area | Frontend Responsibility | Key Managed State & Views |
|---|---|---|
| **Sales** | Interactive order placement, catalog browsing, purchase requests creation, and B2B portal context. | Orders, purchase request details, and buyer dashboards. |
| **Warehouse** | Inventory lots tracking, real-time temperature alerts, and cold-storage zone configurations. | Stock lists, warehouse maps, and sensor readings. |
| **Logistics** | Dispatch routes tracking, dispatcher planning grids, vehicle assignments, and delivery logs. | Route coordinates, dispatch logs, and tracking metrics. |
| **Invoicing** | Business documents list, payment method configurations, invoice references log, and subscription status. | PDF invoice references, subscription states, and payment profiles. |
| **Catalog Management** | Product detail page views, brand lists, category grids, and cold-chain temperature thresholds. | CatalogItems, brands context, and temperature levels. |
| **IAM** | Security portal login, registration fields, route navigation guards, and JWT session handling. | User tokens, role validation, and login status. |

---

## Tech Stack

| Layer | Technology |
|---|---|
| **Core UI Framework** | Vue 3 (Composition API) |
| **Build System & Bundler** | Vite 5 |
| **Component Suite** | PrimeVue 4 & PrimeIcons |
| **Global State Manager** | Pinia 2 (Local offline data caching & store) |
| **Routing** | Vue Router 4 (Guards & session checkpoints) |
| **HTTP client** | Axios 1 (REST APIs connection) |
| **Styling** | Vanilla CSS layout rules, CSS Flexbox & Grid |

---

## Getting Started

### Local Setup

1.  **Prerequisites**:
    - Install [Node.js (v18 or higher recommended)](https://nodejs.org/).
    - Run the backend service locally or make sure you have access to a deployment.

2.  **Configuration**:
    - Navigate to the project root directory.
    - Create a local environment configuration file named `.env.development` (see `.env.example` as reference):
      ```env
      VITE_CORE_BACKEND_ENABLED=true
      VITE_NEXA_API_BASE_URL=http://localhost:5068/api/v1
      ```
    - Note that if the backend is offline, modules without live endpoints will fall back automatically to static in-memory data structures managed by `data.store.js`.

3.  **Install Dependencies**:
    ```bash
    npm install
    ```

4.  **Start Dev Server**:
    Start the Vite development server locally:
    ```bash
    npm run dev
    ```
    *The WebApp will be running at `http://localhost:5173/`.*

5.  **Compile for Production**:
    Build the project bundle to verify correct packaging:
    ```bash
    npm run build
    ```

---

## Available Commands

| Command | Action |
|---|---|
| `npm run dev` | Runs the Vite local dev server with hot reload. |
| `npm run build` | Compiles and packages source code for production into `dist/`. |
| `npm run preview` | Previews the built production assets locally. |

---

## Project Structure

```text
src/
├── app/                  # Global shell, main routers, layouts, and Pinia cache store bootstrap
├── assets/               # Shared style sheets (ops.css), images, and fonts
├── catalog-management/   # Product definitions, brands context, and categories views
├── iam/                  # Authentication logins, registration, session, and role checking
├── invoicing/            # Business documentation, PDF invoices log, and payment methods context
├── logistics/            # Route maps, dispatches control, vehicle details, portals
├── sales/                # Order sheets, commercial validation, clients context, buyer dashboard
├── shared/               # Shared infrastructure (http Axios clients, base-endpoint, static data)
├── warehouse/            # Inventory lots tracking, cold-zone limits, temperature logs
└── main.js               # WebApp bootstrapping and PrimeVue loading
```

---

## Team & Domain Ownership

Specific functional contexts are assigned to primary owners:

| Context | Owner | Support |
|---|---|---|
| **Sales** | DiegoS284 | Cmarin2802, R0obxdnt-bit |
| **Logistics** | Cmarin2802 | DiegoS284, GerardRojasMancilla |
| **Warehouse** | JoaquinVerde115 | R0obxdnt-bit, DiegoS284 |
| **Invoicing** | GerardRojasMancilla | Cmarin2802, DiegoS284 |
| **Catalog Management** | R0obxdnt-bit | JoaquinVerde115, DiegoS284 |

---

## Documentation

Full frontend specifications, architecture guides, and developer workflows are maintained in:
- **[Nexa WebApp Wiki Index (wiki/Home.md)](wiki/Home.md)** (Local offline copy) or online GitHub Wiki.
- [Frontend Architecture Guidelines](docs/frontend-architecture.md)
- [Validation Evidence Log](docs/validation-evidence.md)
- [Security Guidelines (SECURITY.md)](.github/SECURITY.md)

---

<p align="center">
  <strong>Nexa WebApp</strong> · Universidad Peruana de Ciencias Aplicadas · 2026-10
</p>

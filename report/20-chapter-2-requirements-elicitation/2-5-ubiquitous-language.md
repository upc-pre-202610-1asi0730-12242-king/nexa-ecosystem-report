## 2.5. Ubiquitous Language

<p align="justify">
The following glossary establishes the shared vocabulary between the development team and domain experts for the Nexa system. All project artifacts —user stories, diagrams, code and documentation— use these terms consistently to prevent ambiguity across disciplines and team members. This glossary follows the principles described by Eric Evans in <em>Domain-Driven Design: Tackling Complexity in the Heart of Software</em>, where Ubiquitous Language is modeled within a bounded context so that terms carry a precise, unambiguous meaning agreed upon by all stakeholders.
</p>

**Tabla 13**

*Ubiquitous Language Glossary — Domain: B2B distribution of refrigerated and frozen products*

| Term | Domain Definition | Context |
|------|-------------------|---------|
| **Order** | Formal request for products issued by a commercial client to the distributing company, specifying products, quantities and delivery conditions. | Order Management |
| **Assisted Order** | Order recorded by the commercial coordination team on behalf of the client, using a structured flow within Nexa. | Order Management |
| **Order Draft** | Editable initial state of an order before formal submission. | Order Management |
| **Order Status** | Value reflecting the current phase of the order flow: `draft`, `submitted`, `confirmed`, `in_preparation`, `dispatched`, `delivered` or `cancelled`. | Order Management |
| **Catalog** | Structured set of products available for B2B purchase, including description, presentation format, storage requirements and commercial conditions. | Catalog |
| **Product Sheet** | Technical summary associated with a product, used to provide relevant information to the client or the commercial team. | Catalog / Commercial |
| **SKU** *(Stock Keeping Unit)* | Unique code identifying each product variant in the system. | Catalog / Inventory |
| **Batch** | Grouping of units of the same SKU produced or received on the same date. | Inventory / Traceability |
| **FEFO** *(First Expired, First Out)* | Rotation policy that prioritizes dispatching the batch with the nearest expiration date first. | Inventory |
| **Availability** | Quantity actually serviceable for new orders, after deducting reservations, blocks or applicable restrictions. | Inventory |
| **Committed Stock** | Quantity reserved for confirmed orders not yet delivered. | Inventory |
| **Blocked Stock** | Quantity or product not enabled for sale due to unavailability, sanitary incident or operational restriction. | Inventory |
| **Available Credit** | Remaining commercial capacity with which a client can continue purchasing on credit terms. | Commercial |
| **Outstanding Balance** | Commercial debt outside the agreed payment term with the distributor. | Commercial |
| **Delinquent Client** | Client who maintains an outstanding balance and may be subject to blocking of new operations. | Commercial |
| **Commercial Conditions** | Rules assigned to a client, such as price list, payment method, credit limit, required documents or purchase limits. | Commercial |
| **Commercial Client** | Business that purchases from the distributor for resale or consumption in its own operation: minimarket, grocery store, restaurant, hotel or other B2B actor. | Domain Actor |
| **Merchandiser / Commercial Coordinator** | Internal staff who receives, interprets and manages orders before preparation and dispatch. | Domain Actor |
| **Delivery Driver** | Staff responsible for executing the physical delivery of the order and registering its closure. | Domain Actor |
| **Refrigerated Distributor** | Primary SaaS paying client of Nexa, responsible for selling and delivering refrigerated or frozen products to commercial clients. | Domain Actor |
| **Importer** | Company that brings products from abroad into the local market and may operate as a supplier or SaaS client. | Domain Actor |
| **Cold Storage Operator** | Organization focused on refrigerated storage and traceability of sensitive products. | Domain Actor |
| **Dispatch** | Process of shipment of the order from the distributing company to the client. | Operations |
| **ETA** *(Estimated Time of Arrival)* | Estimated arrival window of the dispatch at the delivery point. | Traceability / Dispatch |
| **Incident** | Event that alters the fulfillment of the order, such as a delay, operational observation or delivery problem. | Traceability / Operations |
| **POD** *(Proof of Delivery)* | Digital or documentary evidence supporting the delivery of the order. | Traceability / Dispatch |
| **Remittance Note** | Document accompanying the shipment that may form part of the delivery evidence. | Dispatch |
| **Cold Chain** | Set of conditions and controls ensuring that the product remains within its thermal range. | Quality / Traceability |
| **Thermal Range** | Permitted temperature interval for safely storing a product. | Quality |
| **B2B Portal** | Web interface through which the commercial client consults the catalog, registers orders and reviews their tracking. | System Module |
| **Landing Page** | Public website oriented to communicating the value proposition of Nexa and capturing demo requests. | Public Site |
| **Hybrid Support** | Approach where the platform resolves part of the process and the commercial team maintains human contact when needed. | Service |
| **Rework** | Duplicated or corrective activity arising from ambiguity or error in the manual reception of orders. | Order Management |

*Nota.* Los términos del lenguaje ubicuo resultan de la investigación cualitativa, los artefactos de needfinding y el modelado del dominio. Su uso es obligatorio en todos los entregables del proyecto para evitar contradicciones entre investigación, diseño y backlog. *Elaboración propia.*

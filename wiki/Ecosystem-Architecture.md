# Ecosystem Architecture

The Nexa system is built following **Clean Architecture** principles and structured around **Domain-Driven Design (DDD)** Bounded Contexts to guarantee modularity and software maintainability.

## Bounded Contexts Mapping

1. **Catalog Context**:
   - Manages product details, categories, and temperature-sensitive storage specifications.
2. **Warehouse Context**:
   - Manages physical warehouse layouts, cold storage zones, and inventory lot levels.
3. **Sales Context**:
   - Manages customer profiles, price quotes, purchase requests, and order pipelines.
4. **Logistics Context**:
   - Manages route planning, vehicle loading capacity, dispatch assignments, and live tracking.
5. **Invoicing Context**:
   - Manages business documents generation (receipts, invoices) and payment configurations.
6. **IAM Context (Identity & Access Management)**:
   - Manages user credentials, JSON Web Tokens (JWT), and role-based access control (RBAC).
# API Design Guidelines

This page documents the REST API design standards adopted for the Nexa platform, consumed by our frontend WebApp client interface.

## Endpoint Naming Conventions
- **Use nouns in plural** to name resources (e.g. `/api/v1/catalog-items`, `/api/v1/orders`).
- **Use kebab-case** for multi-word paths.
- **API Versioning**: Prefix all endpoints with the version number (e.g. `/api/v1/...`).

## HTTP Verbs Usage
- **`GET`**: Retrieve resources (no side effects).
- **`POST`**: Create new resources.
- **`PUT`**: Fully update existing resources.
- **`DELETE`**: Remove resources.

## Standard Responses
- **`200 OK`**: Successful request returning data.
- **`201 Created`**: Resource created successfully.
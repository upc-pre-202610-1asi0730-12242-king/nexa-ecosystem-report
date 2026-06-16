# Conclusiones


El proyecto Nexa evolucionó de manera incremental desde AV1 hasta AV2, manteniendo una relación directa entre investigación, diseño, implementación y documentación académica. En AV1 se estableció la base conceptual del producto: el problema de coordinación en la cadena de frío B2B, los segmentos objetivo, el backlog inicial, la Landing Page y la estructura Docs-as-Code del reporte. Esta primera etapa permitió convertir una oportunidad de negocio en una propuesta documentada con trazabilidad.

El foco funcional de TB1 está en el circuito interno entre S1 y S2: coordinación comercial / ventas internas y jefatura logística / coordinación operativa. Los flujos priorizados muestran cómo el pedido puede capturarse, revisarse, relacionarse con disponibilidad, pasar a operación y sostener seguimiento interno con menor fragmentación. Esta decisión mantiene coherencia con los dolores más críticos observados en la investigación: doble digitación, validaciones dispersas, baja visibilidad de stock y coordinación manual entre ventas y logística.

En AV2, Nexa incorporó un primer corte frontend/backend más maduro. La evidencia disponible registra `nexa-website v3.0.0`, `nexa-platform v1.0.0` y `nexa-webapp v2.0.0` como releases de cierre técnico disponibles para revisión. En el caso del reporte, `nexa-ecosystem-report v2.0.0` se conserva como último release documental relevante, con commits AV2 posteriores que actualizan capítulos, evidencias y consistencia de entrega.

El despliegue académico/controlado también avanzó durante AV2. La Landing Page permanece publicada en GitHub Pages, la Web Application se registra en Render mediante `https://nexa-webapp.onrender.com` y la Platform API se registra en Render mediante `https://nexa-platform-api.onrender.com`. Además, el backend evolucionó su configuración de persistencia hacia PostgreSQL para soportar el despliegue controlado en Render. El reporte ya incorpora evidencias de Render WebApp, Platform API, PostgreSQL, Swagger/OpenAPI, Jira Sprint 3, releases de `nexa-website`, `nexa-platform` y `nexa-webapp`, navegación/prototyping Sprint 3, wireflow S3 y user flow S3, sin presentar esta condición como operación productiva.

Como límite del corte AV2, todavía quedan evidencias reales por completar: Validation Interviews, evaluaciones heurísticas, Video About-the-Product, Video About-the-Team, coordinación Sprint 3 / AV2 y revisión de evidencias AV2. Por ello, el informe debe entenderse como una entrega académica avanzada y trazable, con cierre técnico del ecosistema documentado y pendientes explícitos de validación, no como cierre absoluto de producto.

## Conclusiones por sprint

### Sprint 1 / AV1

Sprint 1 permitió construir la línea base del proyecto. El equipo definió el problema, los segmentos, la propuesta de valor y los primeros artefactos de investigación, además de organizar el repositorio del informe bajo enfoque Docs-as-Code. La Landing Page sirvió como primera evidencia pública del producto y como punto de entrada para comunicar la propuesta de Nexa.

La principal contribución de AV1 fue establecer coherencia entre discovery, requisitos iniciales, diseño visual y trazabilidad documental. Esta base hizo posible que las entregas posteriores ampliaran el alcance sin perder continuidad académica.
La continuidad hacia TB2 debe concentrarse en validar la experiencia con usuarios, preparar el video del producto, madurar la RESTful API interna y su documentación formal, fortalecer la integración de servicios, y ampliar la cobertura UI de S3. La conclusión central de TB1 es que Nexa ya cuenta con una dirección de webapp más clara y con evidencia de Sprint 2 mejor delimitada, sin confundir el soporte simulado de la entrega con una implementación productiva de backend, base de datos o servicios finales.
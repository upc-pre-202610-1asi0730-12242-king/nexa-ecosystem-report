## 5.2. Landing Page, Services & Applications Implementation

Esta sección documenta el avance por sprint de la Landing Page, la Web Application, el soporte simulado de servicios, la evidencia de despliegue y la colaboración del equipo. Sprint 1 corresponde a la línea base AV1 y concentra la Landing Page pública, la estructura Docs-as-Code y la evidencia inicial de discovery/diseño. Sprint 2 corresponde a TB1 y concentra el incremento de Web Application, los flujos S1/S2, la planificación S3 y el soporte simulado para validar recorridos frontend.

El contenido queda organizado por sprint para separar fechas, evidencias, commits, capturas y alcance de cada incremento:

- [5.2.1. Sprint 1](./5-2-1-sprint-1.md)
- [5.2.2. Sprint 2](./5-2-2-sprint-2.md)

*Alcance TB1 frente a evolución prevista*

| Artefacto | Estado en TB1 | Evidencia en el reporte | Evolución esperada |
|---|---|---|---|
| Landing Page | Línea base AV1 conservada y conectada al avance TB1 | Sprint 1, evidencias de despliegue del sitio público y continuidad en Sprint 2 | Mantenerla como entrada pública y punto de enlace hacia la Web Application |
| Web Application | Incremento central de TB1 | Sprint 2, mockups actuales, screenshots existentes, rutas y commits representativos | Ampliar cobertura funcional y validación con usuarios |
| Fake API / servicios simulados | Soporte simulado para revisar flujos frontend, documentado para consumo público desde la webapp desplegada | Sprint 2 y Services Documentation Evidence for Sprint Review | Evolucionar hacia servicios internos formales cuando el backend esté implementado |
| RESTful API interna | Evolución prevista; no se declara implementación productiva en TB1 | Arquitectura objetivo y planificación de servicios | Implementar contratos reales para Web Services |
| OpenAPI / Swagger | Evolución prevista; no se declara documentación formal en TB1 | Referencia como documentación futura de la API interna | Documentar endpoints cuando exista la API interna |
| Backend C# / ASP.NET Core | Alcance futuro / diseño objetivo | `nexa-platform` como repositorio planificado y arquitectura del Capítulo IV | Implementar la capa backend en un hito posterior |
| Database | Modelo objetivo; no se declara base de datos productiva en TB1 | Database Design del Capítulo IV | Llevar el modelo a persistencia real cuando maduren servicios y backend |
| Validation Interviews | No desarrollado en TB1 | Encabezado 5.3 sin desarrollo | Ejecutar y documentar entrevistas de validación en el siguiente hito |
| Video About-the-Product | No desarrollado en TB1 | Encabezado 5.4 sin desarrollo | Producir el video cuando el alcance de validación corresponda |
| S3 UI coverage | Parcial en TB1 | Requisitos, planificación FigJam y nota de alcance en UX/UI | Ampliar mockups y evidencia visual del comprador B2B en el siguiente hito |

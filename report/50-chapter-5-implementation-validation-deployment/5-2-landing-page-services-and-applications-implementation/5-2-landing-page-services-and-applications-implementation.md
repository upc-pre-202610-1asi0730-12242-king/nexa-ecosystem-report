## 5.2. Landing Page, Services & Applications Implementation


El contenido queda organizado por sprint para separar fechas, evidencias, commits, capturas y alcance de cada incremento:

- [5.2.1. Sprint 1](./5-2-1-sprint-1.md)
- [5.2.2. Sprint 2](./5-2-2-sprint-2.md)

*Alcance por incremento y evolución prevista*
*Alcance TB1 frente a evolución prevista*

| Artefacto | Estado en TB1 | Estado en Sprint 3 / AV2                                                                                                                                                                                 | Evidencia en el reporte | Evolución prevista |
|---|---|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---|---|
| Landing Page | Línea base AV1 conservada y conectada al avance TB1. | Release `nexa-website v3.0.0`, con evidencia de GitHub Release, branches, commits e insights AV2. | Sprint 1, Sprint 2, Sprint 3, evidencias de despliegue del sitio público y commits de `nexa-website`. | Mantenerla como entrada pública, punto de enlace hacia la Web Application y soporte de comunicación del producto. |
| Web Application | Incremento central de TB1 con flujos S1/S2, navegación frontend y datos simulados. | Release `nexa-webapp v2.0.0`, desplegada en Render, con flujos frontend, estado local/in-memory para recursos no dependientes de API real e integración progresiva. | Sprint 2, Sprint 3, rutas, releases, branches, commits, insights y capturas de ejecución de `nexa-webapp`. | Ampliar cobertura funcional e integración con servicios internos validados, sin sobredeclarar cobertura total. |
| Artefacto | Estado en TB1 | Evidencia en el reporte | Evolución esperada |
|---|---|---|---|
| Landing Page | Línea base AV1 conservada y conectada al avance TB1 | Sprint 1, evidencias de despliegue del sitio público y continuidad en Sprint 2 | Mantenerla como entrada pública y punto de enlace hacia la Web Application |
| Web Application | Incremento central de TB1 | Sprint 2, mockups actuales, screenshots existentes, rutas y commits representativos | Ampliar cobertura funcional y validación con usuarios |
| Fake API / servicios simulados | Soporte simulado para revisar flujos frontend, documentado para consumo público desde la webapp desplegada | Sprint 2 y Services Documentation Evidence for Sprint Review | Evolucionar hacia servicios internos formales cuando el backend esté implementado |
| RESTful API interna | Evolución prevista; no se declara implementación productiva en TB1 | Arquitectura objetivo y planificación de servicios | Implementar contratos reales para Web Services |
| OpenAPI / Swagger | Evolución prevista; no se declara documentación formal en TB1 | Referencia como documentación futura de la API interna | Documentar endpoints cuando exista la API interna |
| Backend C# / ASP.NET Core | Alcance futuro / diseño objetivo | `nexa-platform` como repositorio planificado y arquitectura del Capítulo IV | Implementar la capa backend en un hito posterior |
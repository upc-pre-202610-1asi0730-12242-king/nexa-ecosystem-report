## 5.3. Validation Interviews.

<p align="justify">
La validación en AV1 se enfoca en los artefactos que sí alcanzaron un estado demostrable en este corte: la landing page pública desplegada, la arquitectura de navegación del sitio, el selector bilingüe, los CTA de contacto y el prototipo de alta fidelidad del producto. Dado que el portal transaccional, el API REST y los módulos de pedido, catálogo e inventario permanecen en backlog, la validación de esta entrega no debe confundirse con una prueba end-to-end del sistema final; su alcance real es <strong>comprensión de propuesta de valor, claridad de navegación, coherencia entre hallazgos de investigación y solución visible, y preparación de la siguiente ronda de construcción</strong>.
</p>

### 5.3.1. Diseño de Entrevistas.

<p align="justify">
El diseño de entrevistas de validación para AV1 reutiliza el conocimiento del capítulo 2 y lo traduce en tareas concretas sobre los artefactos ya implementados. La lógica es simple: si el problema original del dominio era la fragmentación entre pedidos, stock, temperatura y entrega, entonces la landing y el prototipo debían poder comunicar con claridad ese valor antes de que existiera aún toda la capa transaccional.
</p>

**Tabla 39**

*Diseño de entrevistas de validación para AV1*

| Componente a validar | Tipo de participante | Tarea propuesta | Criterio de éxito |
|---|---|---|---|
| Home y propuesta de valor | Coordinación comercial (S1) y cliente B2B (S2) | Identificar en menos de un minuto qué problema resuelve Nexa y para quién | El participante reconoce pedido, inventario, temperatura y entrega como núcleo de valor |
| Navegación multipágina | S1, S2 y stakeholder secundario operativo | Recorrer `Home`, `Platform`, `Solutions`, `Company` y `FAQ` sin asistencia | El usuario encuentra la ruta adecuada según su perfil y entiende el rol de cada sección |
| Selector EN/ES | Participantes bilingües o con preferencia de idioma | Cambiar idioma sin perder contexto de página | El sitio conserva navegación, contenido y CTA sin desorientar al usuario |
| CTA de demostración / contacto | Segmentos comerciales y operativos | Iniciar el flujo de contacto desde Home o Footer | El usuario entiende qué ocurrirá después de enviar la solicitud |
| Prototipo de plataforma | Stakeholder secundario y perfiles de coordinación | Relacionar mockups/prototipo con problemas reales del proceso | El participante percibe continuidad entre hallazgos del dominio y solución propuesta |

<p align="justify">
Bajo esta estructura, la validación de AV1 no busca medir rendimiento de un ERP terminado, sino reducir el riesgo de incoherencia entre problema narrado, promesa del producto y primera experiencia pública visible.
</p>

### 5.3.2. Registro de Entrevistas

<p align="justify">
El repositorio preserva evidencia de ocho entrevistas de dominio realizadas durante la etapa de levantamiento y análisis. Estas entrevistas no deben presentarse como una nueva ronda audiovisual completa de “validación final del producto”; sin embargo, sí constituyen la base metodológica verificable para seleccionar perfiles de validación y para comprobar si la propuesta implementada responde a dolores reales observados en el campo.
</p>

<p align="justify">
Adicionalmente, el archivo audiovisual fuente de esas ocho entrevistas ya se encuentra conservado externamente en OneDrive, mientras que el repositorio mantiene las capturas resumidas integradas en el capítulo 2. Esta combinación permite sostener AV1 con evidencia trazable sin confundir el material de descubrimiento del dominio con una ronda posterior de validación funcional del producto terminado.
</p>

**Tabla 40**

*Registro base de validadores con evidencia en repositorio y OneDrive*

| Participante con evidencia en repositorio | Perfil analizado | Evidencia preservada | Problema dominante que debe validar AV1 |
|---|---|---|---|
| Lorena Silva | Coordinación comercial (S1) | `Lorena.jpeg` + [video](https://upcedupe-my.sharepoint.com/personal/u202416289_upc_edu_pe/documents/king%20nexa/s1.e1%20diego%20-%20lorena%20silva.mp4?web=1) | Dependencia de WhatsApp, lentitud del sistema actual y baja confiabilidad del stock |
| Cinthia Levano | Coordinación comercial (S1) | `Paola.jpeg` + [video](https://upcedupe-my.sharepoint.com/personal/u202416289_upc_edu_pe/documents/king%20nexa/s1.e2%20cesar%20-%20paola%20levano.mp4?web=1) | Fragmentación entre Trello, WhatsApp y Excel; exceso de pasos para registrar pedidos |
| Celia Pérez | Coordinación comercial (S1) | `Celia.jpeg` + [video](https://upcedupe-my.sharepoint.com/personal/u202416289_upc_edu_pe/documents/king%20nexa/s1.e3%20diego%20-%20cecilia%20perez.mp4?web=1) | Necesidad de coordinación más simple y visibilidad comercial |
| Hilda Litano | Stakeholder secundario operativo | `Hilda.jpeg` + [video](https://upcedupe-my.sharepoint.com/personal/u202416289_upc_edu_pe/documents/king%20nexa/s2.e1%20diego%20-%20hilda%20litano.mp4?web=1) | Restricciones logísticas, trazabilidad y consistencia operativa |
| Edith Taype | Stakeholder secundario operativo | `Edith.jpeg` + [video](https://upcedupe-my.sharepoint.com/personal/u202416289_upc_edu_pe/documents/king%20nexa/s2.e2%20gino%20-%20edith%20taype.mp4?web=1) | Control de flujo y dependencia de validaciones manuales |
| Jesica Sandoval | Stakeholder secundario operativo | `Jesica.jpeg` + [video](https://upcedupe-my.sharepoint.com/personal/u202416289_upc_edu_pe/documents/king%20nexa/s2.e3%20diego%20-%20jesica%20sandoval.mp4?web=1) | FEFO, control de vencimientos y riesgo de transcripción |
| Pedro Puente | Segmento asociado al cierre operativo / entrega | `Pedro.jpeg` + [video](https://upcedupe-my.sharepoint.com/personal/u202416289_upc_edu_pe/documents/king%20nexa/s3.e1%20diego%20-%20pedro%20puente.mp4?web=1) | Visibilidad de la entrega y prueba de cierre |
| Henrry García | Perfil de operación complementario | `Henry.jpeg` + [video](https://upcedupe-my.sharepoint.com/personal/u202416289_upc_edu_pe/documents/king%20nexa/s3.e2%20cesar%20-%20henry%20garcia.mp4?web=1) | Coordinación operativa y trazabilidad del proceso |

<p align="justify">
Por ello, el registro de entrevistas utilizable en AV1 consiste en un <strong>registro base de validadores</strong> con evidencia real ya archivada tanto en el repositorio como en el repositorio externo de OneDrive. Lo que todavía no aparece como entregable formal es una <strong>segunda ronda</strong> etiquetada explícitamente como entrevista de validación del producto implementado, con hallazgos específicos sobre la landing o el prototipo ya probados frente al artefacto final visible.
</p>

<div style="padding: 14px 16px; border: 1px solid #f5d0fe; border-radius: 8px; background: #fffafc; margin: 16px 0;">
  <strong>Evidencia aún faltante para cerrar mejor esta sección.</strong><br/><br/>
  Para que la validación quede más sólida ante revisión docente, todavía conviene incorporar: <strong>(1)</strong> una segunda ronda breve de validación sobre la landing page o el prototipo ya visible, <strong>(2)</strong> hallazgos sintetizados por participante o perfil, y <strong>(3)</strong> una tabla final que separe con claridad qué fue validación del problema en descubrimiento y qué fue validación del artefacto en AV1.
</div>

### 5.3.3. Evaluaciones según heurísticas.

<p align="justify">
Como complemento a las entrevistas, el artefacto público ya implementado puede ser evaluado con heurísticas de usabilidad y consistencia. Esta revisión es especialmente pertinente en AV1 porque el producto visible aún es una landing page informativa y no un portal transaccional completo; por tanto, la primera obligación del sistema es <strong>explicar bien</strong> antes de <strong>operar todo</strong>.
</p>

**Tabla 41**

*Evaluación de usabilidad según heurísticas de Nielsen en la landing page*

| Heurística | Evidencia observable en AV1 | Resultado |
|---|---|---|
| Visibilidad del estado del sistema | El sitio hace visible el cambio EN/ES y expone honestamente que el chat en vivo “estará disponible pronto”, evitando promesas falsas de soporte instantáneo | Cumple parcialmente |
| Correspondencia entre sistema y mundo real | El copy utiliza lenguaje del dominio: pedidos, stock, temperatura, FEFO, POD, entrega y operación refrigerada | Cumple |
| Control y libertad del usuario | La navegación permite entrar y salir de páginas públicas, revisar FAQ y volver a CTA principales sin quedar atrapado | Cumple |
| Consistencia y estándares | La estructura multipágina, los CTA repetidos y la terminología de segmentos se mantienen de forma estable a lo largo del sitio | Cumple |
| Reconocimiento antes que memoria | Las rutas `Platform`, `Solutions`, `Company` y `FAQ` reducen carga cognitiva y orientan al usuario por intención | Cumple |
| Estética y minimalismo | El sitio evita densidad excesiva y concentra la narrativa en cuatro capacidades: inventario, pedidos, temperatura y entrega | Cumple |
| Ayuda y soporte contextual | Existe FAQ y formulario de contacto, pero todavía no hay soporte conversacional activo ni flujo autenticado de autoservicio | Cumple parcialmente |

<p align="justify">
La conclusión heurística es clara: la landing page ya cumple bien como herramienta de <strong>explicación y captación</strong>, pero todavía no sustituye la validación funcional que deberá realizarse cuando entren en operación el portal B2B, la autenticación, el catálogo y el seguimiento transaccional. Esta frontera coincide con el backlog remanente visible en Jira y orienta la mejora continua del producto.
</p>

<p align="justify">
En otras palabras, la validación documentada en AV1 es defendible si se presenta como <strong>validación de comprensión, narrativa y consistencia del incremento visible</strong>; no como prueba cerrada del sistema transaccional completo. La parte que sigue faltando para futuras entregas es la validación funcional del portal autenticado, los flujos de pedido, las reglas de stock y el cierre operativo con usuarios frente al software ya ejecutable.
</p>

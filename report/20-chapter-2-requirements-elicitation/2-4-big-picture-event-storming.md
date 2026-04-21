## 2.4. Big Picture Eventstorming

<p align="justify">
El Big Picture EventStorming de Nexa modela el flujo principal del pedido B2B de productos refrigerados, desde la intención de compra hasta el cierre de la entrega. Su propósito en esta etapa no es describir todas las integraciones futuras del dominio, sino identificar los eventos, comandos, políticas y actores que explican el comportamiento mínimo del MVP y sus principales restricciones operativas.
</p>

### 2.4.1. Actores del dominio

| Actor | Responsabilidad principal |
|-------|----------------------------|
| Cliente comercial | Consulta catálogo, crea pedidos y da seguimiento a la entrega |
| Coordinación comercial | Identifica al cliente, captura pedidos asistidos, valida condiciones y comunica incidencias |
| Supervisión comercial / operación | Configura catálogo, clientes, crédito, reglas y seguimiento |
| Almacén / operación | Prepara el pedido, confirma disponibilidad y controla lotes o vencimientos |
| Chofer de reparto | Ejecuta el despacho y registra el cierre de entrega |
| Administrador autorizado | Gestiona cuentas internas y parámetros base del sistema |

### 2.4.2. Comandos y eventos principales

| Comando | Evento de dominio esperado | Resultado de negocio |
|---------|----------------------------|----------------------|
| Registrar o actualizar cliente | Cliente comercial registrado / actualizado | El cliente queda listo para operar con condiciones comerciales vigentes |
| Publicar producto en catálogo | Producto publicado en catálogo | El producto puede mostrarse al cliente según sus condiciones |
| Crear borrador de pedido | Pedido creado en borrador | El pedido existe antes del envío formal |
| Identificar cliente por RUC o DNI | Cliente identificado y condiciones cargadas | El flujo asistido recupera crédito, lista de precios y estado comercial |
| Enviar pedido | Pedido enviado | Inicia la validación comercial y operativa |
| Validar crédito y morosidad | Pedido bloqueado por crédito o pedido apto para confirmación | Se evita prometer pedidos inviables |
| Reservar stock | Stock comprometido | La disponibilidad visible se ajusta a la realidad operativa |
| Confirmar pedido | Pedido confirmado | El cliente recibe confirmación y el equipo interno puede prepararlo |
| Iniciar preparación | Pedido en preparación | La operación reconoce el inicio del armado |
| Registrar despacho | Pedido despachado | El pedido sale a entrega con seguimiento activo |
| Registrar incidencia de ruta | Incidencia registrada y ETA actualizado | El cliente y la coordinación reciben visibilidad de la demora |
| Registrar prueba de entrega | POD registrado | El cierre queda respaldado con evidencia |
| Cerrar entrega | Pedido entregado | El flujo comercial-operativo termina con trazabilidad suficiente |
| Cancelar pedido antes de despacho | Pedido cancelado y stock liberado | Se evita dejar inventario comprometido de forma incorrecta |

### 2.4.3. Políticas y reglas identificadas

| Política | Disparador | Regla resultante |
|----------|------------|------------------|
| Validación comercial previa | Pedido enviado | El pedido no avanza si el cliente tiene saldo vencido o si el monto supera su crédito disponible |
| Reserva de inventario | Pedido confirmado | El sistema descuenta stock disponible y aumenta stock comprometido |
| Liberación de reserva | Pedido cancelado antes del despacho | El sistema devuelve las unidades al stock disponible |
| Visibilidad compartida | Cambio de estado o incidencia | El sistema registra historial y actualiza el estado visible para los roles autorizados |
| Control de rotación | Registro de lotes o vencimientos | Los productos con vencimiento próximo deben quedar visibles para priorización FEFO |
| Cierre con evidencia | Confirmación de entrega | El pedido no debe cerrarse como entregado sin al menos una prueba de entrega válida |

### 2.4.4. Flujo resumido del dominio

1. El cliente consulta el catálogo o la coordinación comercial captura el pedido de forma asistida.
2. El sistema identifica al cliente y recupera sus condiciones comerciales.
3. El pedido pasa de borrador a enviado.
4. El sistema valida crédito, morosidad y disponibilidad básica.
5. Si la validación es satisfactoria, el pedido se confirma y reserva stock.
6. La operación lo pasa a preparación y luego a despacho.
7. Durante el despacho se pueden registrar incidencias y recalcular la ETA.
8. La entrega se cierra con evidencia y el pedido queda entregado.

<p align="justify">
Este modelado refuerza dos ideas centrales del proyecto: el problema principal no está en un único “módulo” aislado, sino en la transición entre captura, validación, disponibilidad, despacho y cierre; y la jefatura logística, aunque no sea una persona primaria del backlog, sigue siendo fundamental para definir políticas y restricciones del dominio.
</p>

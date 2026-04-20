## 3.3. Product Backlog

<p align="justify">
El Product Backlog organiza las épicas y las historias de usuario del proyecto según su prioridad de implementación y su aporte al MVP. Como criterio rector, el backlog prioriza primero la coherencia pública del producto y el flujo central del pedido, luego la predictibilidad de la entrega y, finalmente, las extensiones de control y crecimiento del dominio.
</p>

### 3.3.1. Priorización por épica

| Prioridad | Epic ID | Historias incluidas | Objetivo principal | Release objetivo |
|-----------|---------|---------------------|-------------------|------------------|
| Alta | EP01 | US01-US04 | Garantizar navegación pública, dropdown de soluciones e idioma EN/ES | MVP público |
| Alta | EP02 | US05-US08 | Comunicar propuesta de valor y activar conversión mediante CTA de demo | MVP público |
| Alta | EP03 | US09-US11 | Explicar plataforma y delimitar MVP frente a expansión futura | MVP público |
| Alta | EP04 | US12-US15 | Enrutar por segmentos comerciales del sitio sin romper el foco principal | MVP público |
| Alta | EP05 | US16-US19 | Construir confianza y permitir contacto comercial formal | MVP público |
| Media | EP06 | US20-US23 | Resolver objeciones frecuentes y mantener soporte rápido desde el sitio | MVP público |
| Alta | EP07 | US24-US28 | Habilitar catálogo, detalle, disponibilidad y publicación de productos | MVP transaccional |
| Alta | EP08 | US29-US33 | Reducir retrabajo en captura asistida y mostrar alertas de stock/crédito | MVP transaccional |
| Alta | EP09 | US34-US38 | Permitir autoservicio B2B con borradores, repetición e historial | MVP transaccional |
| Alta | EP10 | US39-US43 | Dar seguimiento, ETA e inicio de prueba de entrega | MVP transaccional |
| Alta | EP11 | US44-US48 | Mantener visibilidad de inventario, reservas y vencimientos | MVP transaccional |
| Alta | EP12 | US49-US53 | Formalizar ficha de cliente, crédito, morosidad y bloqueo comercial | MVP transaccional |
| Media | EP13 | US54-US57 | Controlar acceso interno y del cliente a la plataforma | MVP transaccional |
| Media | EP14 | US58-US64 | Exponer los contratos REST mínimos para catálogo, pedido, tracking y autenticación | MVP técnico |

### 3.3.2. Historias críticas del MVP

| Orden | Story ID | Historia crítica | Razón de prioridad | Clasificación |
|-------|----------|------------------|--------------------|---------------|
| 1 | US03 | Cambiar entre inglés y español sin perder contexto | Evita contradicción entre el sitio real y la documentación del producto | Must |
| 2 | US08 | Solicitar una demo desde la Home | Convierte el sitio en un canal comercial útil | Must |
| 3 | US18 | Enviar el formulario de contacto comercial | Materializa la captura de oportunidades del landing | Must |
| 4 | US24 | Consultar catálogo personalizado | Es el punto de entrada al autoservicio B2B | Must |
| 5 | US27 | Ver detalle, disponibilidad y ficha técnica del producto | Resuelve claridad de producto y soporte a decisión de compra | Must |
| 6 | US29 | Crear un pedido asistido para un cliente | Ataca el problema principal de coordinación comercial | Must |
| 7 | US30 | Identificar al cliente por RUC o DNI y cargar condiciones | Elimina la validación manual de cliente y condiciones | Must |
| 8 | US32 | Visualizar alertas de stock, crédito y bloqueo antes de enviar | Previene errores y pedidos inviables | Must |
| 9 | US33 | Enviar el pedido asistido y dejar confirmación | Cierra el flujo asistido con trazabilidad | Must |
| 10 | US34 | Crear un pedido desde el portal B2B | Habilita el autoservicio del cliente comercial | Must |
| 11 | US37 | Enviar el pedido y recibir confirmación | Formaliza la compra desde el portal | Must |
| 12 | US38 | Consultar historial y detalle de pedidos | Aporta continuidad al uso recurrente del portal | Should |
| 13 | US39 | Visualizar el estado actual y la ETA del pedido | Resuelve la incertidumbre de entrega para el cliente | Must |
| 14 | US40 | Recibir visibilidad de demoras e incidencias | Reduce llamadas y mejora confianza | Must |
| 15 | US41 | Actualizar estados del pedido con secuencia válida | Asegura trazabilidad coherente del proceso | Must |
| 16 | US42 | Registrar despacho y prueba de entrega | Conecta operación y cierre físico del pedido | Must |
| 17 | US44 | Visualizar stock total, comprometido y disponible | Da soporte real a decisiones comerciales y operativas | Must |
| 18 | US47 | Reservar y liberar stock según el estado del pedido | Mantiene consistencia entre pedido e inventario | Must |
| 19 | US49 | Registrar y mantener la ficha del cliente comercial | Sostiene el resto del flujo comercial | Must |
| 20 | US50 | Asignar listas de precio, crédito y condiciones de pago | Permite diferenciar clientes y validar pedidos | Must |
| 21 | US51 | Visualizar saldo vigente y morosidad del cliente | Vuelve visible un dolor repetido en entrevistas | Must |
| 22 | US52 | Bloquear un pedido por regla de crédito | Convierte una regla del dominio en comportamiento explícito | Must |
| 23 | US54 | Iniciar sesión como colaboradora interna | Habilita el acceso al flujo interno | Must |
| 24 | US55 | Iniciar sesión como cliente comercial | Habilita el acceso al portal B2B | Must |
| 25 | US58 | Exponer endpoint de catálogo | Sostiene la consulta de productos en frontend | Must |
| 26 | US60 | Exponer endpoint de consulta de cliente por RUC/DNI y condiciones comerciales | Sostiene la captura asistida del pedido | Must |
| 27 | US61 | Exponer endpoint de registro de pedido | Habilita el núcleo transaccional del producto | Must |
| 28 | US62 | Exponer endpoint de tracking y ETA | Habilita seguimiento y predictibilidad de entrega | Must |
| 29 | US63 | Exponer endpoint de eventos de despacho y POD | Habilita cierre con evidencia y trazabilidad | Should |
| 30 | US64 | Exponer endpoint de autenticación y recuperación de acceso | Permite sesiones y recuperación controlada | Should |

### 3.3.3. Criterios de orden del backlog

- Primero se implementa lo que alinea el sitio público con la narrativa real del producto.
- Luego se prioriza el núcleo operativo del pedido: catálogo, captura asistida, portal B2B, crédito, stock y seguimiento.
- Después se fortalece la predictibilidad del despacho y la evidencia de entrega.
- Finalmente se incorporan mejoras de expansión comercial o de profundidad técnica que no bloquean el MVP.

*Nota.* La priorización del backlog se apoya en la evidencia de entrevistas, en los arquetipos del needfinding y en la cobertura funcional observada del landing page. Elaboración propia.

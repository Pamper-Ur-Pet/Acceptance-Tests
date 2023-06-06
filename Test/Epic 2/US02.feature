Feature: Como usuario quiero ver las opciones de pago del servicio para poder saber los medios que se realizará 
Scenario Outline: Ver las formas de pago

Given que el usuario encontró el servicio a recibir 
When quiera contratar a la persona 
And muestre la tarifa a acordar
Then la aplicación le mostrará que complete su información de la tarjeta que el usuario desea aplicar para hacer el pago correspondiente
Examples:
| ver servicio | elegir paseador | precio |
| botón "PAGAR" | opciones de pago | datos de tarjeta|

Scenario Outline: No cuenta con tarjeta de crédito o débito

Given que el usuario quiera contratar el servicio, pero no cuenta con una tarjeta de crédito o no tiene saldo suficiente en la de debito 
When le de click en la opción de "MOSTRAR MÁS OPCIONES DE PAGO"  
And luego le da click en la opción de "PAGO EN EFECTIVO"
Then la aplicación le mostrará un cuadro a rellenar sobre el monto que el usuario va a pagar, en caso de que se requiera dar su respectivo vuelto
Examples:
| ver servicio | elegir paseador | precio | botón "PAGAR" | botón "MOSTRAR MÁS OPCIONES DE PAGO" | 
| opción "PAGO EFECTIVO" | rellenar monto |

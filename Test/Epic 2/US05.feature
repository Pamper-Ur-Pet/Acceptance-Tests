Feature: Como usuario quiero que el aplicativo me permita visualizar mi saldo real para así poder saber si puedo adquirir el servicio o no
Scenario Outline: Quiero conocer mi saldo para pagar el servicio

Given que el usuario necesita saber si tiene el saldo suficiente para adquirir el servicio
When el usuario encuentra al paseador deseado  
And le da en escoger paseador
Then la aplicación le mostrará el monto total del servicio y el saldo con el que cuenta en ese momento para poder adquirir el servicio
Examples:
| ver búsqueda | lista paseadores | escoger paseador |
| click en el perfil | botón "PAGAR" | detalles monto y saldo |

Scenario Outline: No conoce el saldo con el que cuenta en ese momento

Given que el usuario no conoce su saldo al momento de pagar el servicio 
When el usuario escoge a un paseador
And la aplicación muestra el monto total del servicio para pagar
Then al momento del pago si el usuario no cuenta con el dinero suficiente la aplicación mostrará un mensaje "No cuenta con el dinero suficiente 
para adquirir el servicio", esto le hará conocer al usuario que le falta dinero para asi poder adquirir el servicio de un paseador
Examples:
| ver búsqueda | lista paseadores | escoger paseador | click en el perfil | 
| botón "PAGAR" | detalles monto y saldo | mensaje "saldo no suficiente" |
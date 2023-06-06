Feature: Como usuario quiero poder reportar alguna falla en la aplicación para así mantener a salvo toda mi información 
Scenario Outline: Hacer un envío de reporte sobre la aplicación

Given que el usuario desee informar sobre un problema interno de la app
When está navegando en ella
And llegué a pensar que su información será vulnerada
Then el aplicativo le mostrará un mensaje para que pueda poner toda la información brindada en otra cuenta o eliminarla si así lo desea
Examples:
| navegar por la app | ver su información personal | mensaje "¿desea trasladar su información o eliminarla?" |
| escribir reporte | botón "enviar" |


Scenario Outline: Si llega a pasar un accidente externo

Given el usuario desee informar sobre un problema externo de la app 
When llegue a perder su dispositivo
And llegué a pensar que su información será vulnerada
Then tendrá un mensaje en su correo con el que fue creado si desea que toda la data acumulada hasta el momento sea borrada
Examples:
| navegar por la app | observa una problema | escribir reporte |
| botón "enviar" | revisar mensaje en el correo |
Feature: Como usuario quiero buscar cómo obtener la aplicación para así poder utilizar el servicio
Scenario Outline: Encuentra la aplicación

Given que el usuario quiere obtener la aplicación
When el usuario encuentra en la página principal web
And va a la parte inferior del sitio
Then se mostrarán botones para elegir en que tienda descargar el aplicativo
Examples:
| página web | opción "descargar" | 
| botones para "IOS o Android" |


Scenario Outline: Descarga

Given que el usuario encontró los botones 
When le dé clic a alguno dependiendo de la tienda de su dispositivo
And se le redireccione a la página para obtener la aplicación
Then el usuario podrá descargarla según los requisitos de dicha tienda como el tener una cuenta de Google/Apple
Examples:
| botones para "IOS o Android" | click en "App Store" | click en "Play Store" |
| página de la tienda | descargar |
Feature: Como usuario quiero poder navegar por el aplicativo de manera fácil para así poder tener un acceso más sencillo
Scenario Outline: Fácil manejo del aplicativo

Given el usuario quiera navegar por el aplicativo
When necesite de los servicios que se dan "pasear mascotas"
And se le haga fácil el uso
Then por motivos de seguridad se le mostrará si desea seguir un tutorial del aplicativo
Examples:
| navegar por la app | buscar "paseadores" | facilidad de uso | adquirir servicio |
| mensaje "¿desea una guía de ayuda?" |


Scenario Outline: Dificultad al momento de usar el aplicativo

Given el usuario quiera navegar por el aplicativo 
When necesite de los servicios que se dan "pasear mascotas"
And muestre alguna dificultad
Then el aplicativo mostrar una opción “Tutorial” para que de esta forma la persona pueda usar el aplicativo sin dificultad alguna
Examples:
| navegar por la app | buscar "paseadores" | dificultad de uso | mensaje "¿desea una guía de ayuda?" |
| botón "si" | guía tutorial interactiva |
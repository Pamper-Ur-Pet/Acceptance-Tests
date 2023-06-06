Feature: Como usuario quiero ser capaz de poder buscar un servicio de paseo para perros para mejorar el cuidado de mi mascota
Scenario Outline: Encuentra el servicio de paseador de perros

Given que el usuario se encuentra en la pantalla de inicio 
When el usuario quiera buscar un paseador de perros
And de clic en el botón "BUSCAR"
Then la aplicación le mostrará el perfil de diversas personas que se encuentren cerca desde el lugar donde esté y 
podrá elegir al candidato que desee para que pasee a su mascota, contando siempre con una geolocalización por seguridad
Examples:
| pantalla inicio | botón de herramientas | botón "BUSCAR" |
| lista de perfiles paseadores | botón GPS |

Scenario Outline: No encuentra el servicio de paseador de perros

Given que el usuario desea buscar un paseador de perros, pero no entiende cómo funcionan las herramientas  
When de clic en el botón "BUSCAR"
And luego hace clic en el botón "TUTORIAL"
Then la aplicación le mostrará un minitutorial para que interactúe paso a paso, donde podrá entender fácilmente 
como es el funcionamiento de la aplicación
Examples:
| pantalla inicio | botón de herramientas | botón "BUSCAR" |
| botón "TUTORIAL" | minitutorial con animación |
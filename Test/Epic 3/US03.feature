Feature: Como usuario quiero poder revisar la ubicación de mi mascota para tener confianza en los paseadores
Scenario Outline: Observa a los paseadores disponibles con sus ratings

Given que el usuario esté en el apartado de búsqueda 
When ya se hayan mostrado los paseadores disponibles 
And haya seleccionado al de su preferencia o disponibilidad
Then podrá observar su rating al igual que más detalles y comentarios al lado de la tarifa
Examples:
| ver búsqueda| elegir paseador disponible | observar rating |
| click en el perfil | botón "calificar" | ver detalles y comentarios |

Scenario Outline: Observa el trayecto a distancia

Given que el usuario realizó el contrato del servicio 
When su mascota ya se encuentre con el paseador
And este en la aplicación dentro de la pantalla de inicio en herramientas
Then podrá revisar el recorrido que se está realizando y contactar si ocurre alguna emergencia dentro de "GPS"
Examples:
| ver servicio | elegir paseador | pantalla inicio | 
| click herramientas | botón "mensajes" | botón "GPS" |
Feature: Como usuario quiero que el aplicativo me permita calificar el servicio que recibí para que puedan mejorar a futuro
Scenario Outline: Quiero calificar el servicio recibido

Given que el usuario quiere calificar el servicio
When el servicio termine 
And todo fue satisfactorio para ambas partes
Then la aplicación le mostrará un mensaje para que pueda calificar el servicio brindado y dejar algunas reseñas
Examples:
| pantalla perfil paseador | mensaje "¿desea calificar su experiencia?" | click en "calificar" |
| seleccionar experiencia | escribir comentario |

Scenario Outline: No quiere calificar el servicio recibido

Given que el usuario no quiere calificar el servicio 
When el servicio termine
And el usuario no desea calificar el servicio
Then la aplicación volverá la página principal para que no califique el servicio ya que no lo desea
Examples:
| pantalla perfil paseador | mensaje "¿desea calificar su experiencia?" | 
| click en "Ahora no" | pantalla de inicio |
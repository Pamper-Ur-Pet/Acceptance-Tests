Feature: Como usuario quiero poder controlar la suscripción de la membresía para así poder manejarla en mi cuenta
Scenario Outline: Cancelación de la membresía

Given que el usuario quiere cancelar la suscripción
When no tenga más fondo de dinero
And el usuario se encuentra en el menú de membresía
Then se mostrará la opción de cancelar la membresía
Examples:
| pantalla inicio | opción "membresía" | botón de "cancelar membresía" |
| mensaje "su membresía fue cancelada con éxito" |


Scenario Outline: No se puede cancelar la membresía

Given que el usuario quiere cancelar la suscripción y no pueda 
When no cuente con más fondo de dinero
And el usuario se encuentra en el menú de membresía "ayuda"
Then se mostrará la opción de comunicarse con el sistema de servicio de la app para cancelar la membresía
Examples:
| pantalla inicio | opción "membresía" | botón "ayuda" |
| opción "comunicarse con el sistema" | seleccionar "cancelar membresía" |
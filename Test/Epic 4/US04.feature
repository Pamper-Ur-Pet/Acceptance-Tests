Feature: Como usuario quiero buscar un horario de paseo y cuán seguro es el que realizará el servicio para así poder agendar el servicio
Scenario Outline: Encuentra un horario para pasear

Given que el usuario necesita saber si hay disponibilidad de paseo
When el usuario encuentra al paseador deseado  
And le da en escoger hora
Then la aplicación le mostrará qué personal está libre para poder realizar el servicio y mostrará las reseñas que este tiene
Examples:
| lista paseadores | escoger paseador | click en el perfil |
| opción "escoger hora" | ver servicios disponibles | reseñas |

Scenario Outline: No conoce el saldo con el que cuenta en ese momento

Given que el usuario no encuentra personal para la hora solicitada 
When el usuario pone su hora de paseo
And la aplicación muestra un mensaje "NO contamos con personal en estos momentos"
Then la aplicación mostrará una hora próxima a la solicitada en la que un personal termine su otro turno para ver si el usuario aún desea el servicio
Examples:
| lista paseadores | escoger paseador | click en el perfil | opción "escoger hora" |
| mensaje "no hay personal" | otros horarios aproximados |
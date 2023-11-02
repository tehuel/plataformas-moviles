---
title: "6.1: Arquitectura"
---

Hablamos un momento sobre arquitectura de una aplicación.

- División entre Front y Back ends
- División de Responsabilidades
- Monolitos y Servicios

{{< figure src="/img/arquitectura.png" title="Arquitectura de ejemplo de una aplicación con API HTTP" >}}

{{< figure src="/img/monolito-microservicios.png" title="Comparativa entre arquitecturas monolítica y de microservicios" >}}

## Interfaces

Empezamos desde una visión general, definiendo a las **interfaces** como las "reglas" o formas de interactuar y comunicarse con un sistema o partes de un sistema. 

Ejemplos de Interfaces: 

- Volante, Pedales y Tablero de un vehículo.
- Control Remoto y Botones de la tele.
- Pantalla Táctil de un celu.
- Linea de Comandos (CLI) de Linux.

## APIs

Dentro de estas interfaces, un grupo más específico son las APIs (interfaz de programación de aplicaciones), que permite una comunicación entre 2 aplicaciones. Las APIs actúan como intermediarios que permiten que las aplicaciones soliciten y utilicen servicios o recursos de otros programas o servicios, todo de manera estructurada y controlada, con un protocolo definido.

Ejemplos de APIs:

- APIs de Acceso al Hardware: Para poder acceder a los datos de sensores y dispositivos. Para prender un LED en Arduino, o conocer el porcentaje de batería restante en Android.
- APIs del Sistema Operativo: Para interactuar de manera directa con el OS, dibujar ventanas, acceder a archivos y procesos.
- APIs de una Plataforma: Para acceder a características de la plataforma. En la web tenemos el Canvas, el DOM, Audio, USB, etc.

## APIs HTTP

De forma más específica todavía, dentro de las APIs, una API HTTP es un tipo de API que utiliza el protocolo HTTP (Hypertext Transfer Protocol) como medio para permitir la comunicación entre aplicaciones a través de la web. Estas APIs permiten que las aplicaciones realicen solicitudes HTTP para acceder a recursos en línea, como datos, servicios o funcionalidades, y reciban respuestas en formato HTTP, generalmente en JSON.

Ejemplos de APIs HTTP:

- PokéAPI (API de Pokémon): https://pokeapi.co/
- API de Google Maps: https://developers.google.com/maps/documentation
- API de Mercado Pago: https://www.mercadopago.com.ar/developers/es/reference

## Diagrama

Yendo desde lo más general hacia lo más específico, podemos pensar la relación entre Interfaces, APIs y APIs HTTP como se ven en el diagrama

```goat
┌─────────────────────────────────┐
│   Interfaces                    │
├────────────────────────┐        │
│   APIs                 │        │
├─────────────────┐      │        │
│   APIs HTTP     │      │        │
└─────────────────┴──────┴────────┘
```


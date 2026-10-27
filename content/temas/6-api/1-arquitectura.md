---
title: "6.1: Arquitectura"
---

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

## Arquitectura de una Aplicación: Front-end y Back-end

Las aplicaciones que usan una API HTTP suelen dividirse en dos partes, cada una con su propia responsabilidad:

- **Front-end** (cliente): es la parte que ve y usa la persona. Muestra la información y reacciona a sus acciones. Por ejemplo, una página web hecha con HTML, CSS y JS, o una app de Android.
- **Back-end** (servidor): es la parte que guarda y procesa los datos. La persona usuaria no la ve.

El front-end y el back-end se comunican a través de la **API HTTP**, que funciona como un **contrato**: define qué se le puede pedir al servidor y qué va a responder.

1. El front-end envía un **pedido HTTP** (por ejemplo: "dame los datos del pokémon 4").
2. El back-end busca los datos y devuelve una **respuesta HTTP**.
3. Los datos de la respuesta viajan en formato **JSON**, un formato de texto que tanto el cliente como el servidor saben leer (lo vemos en detalle en [6.2](/temas/6-api/2-json/)).

{{< figure src="/img/arquitectura.png" title="Arquitectura de ejemplo de una aplicación con API HTTP" >}}

Una ventaja de esta división es que un mismo back-end puede atender a muchos front-ends distintos: una web, una app de Android y una de iOS pueden usar la misma API.

{{< figure src="/img/monolito-microservicios.png" title="Comparativa entre arquitecturas monolítica y de microservicios" >}}

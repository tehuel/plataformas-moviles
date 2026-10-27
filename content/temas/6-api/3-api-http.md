---
title: "6.3: API HTTP"
---

Para usar una API HTTP, nuestra aplicación hace lo mismo que hace el navegador cuando visitamos un sitio web (ver [1.1: Navegadores](/temas/1-web/1-navegadores/)): envía un **pedido HTTP** a un servidor y recibe una **respuesta HTTP**. La diferencia es que, en lugar de una página en HTML, la respuesta trae datos en JSON.

## Request y Response

Cada comunicación con la API tiene dos partes:

- **Pedido** (*request*), lo envía el cliente. Incluye:
	- **Método**: qué queremos hacer. Para pedir datos se usa `GET`.
	- **URL**: a qué recurso queremos acceder.
- **Respuesta** (*response*), la devuelve el servidor. Incluye:
	- **Código de estado**: un número que indica cómo salió el pedido. Por ejemplo `200` (OK), `404` (no encontrado) o `500` (error en el servidor).
	- **Contenido** (*body*): los datos pedidos, generalmente en JSON.

```
Cliente                                              Servidor
   |                                                     |
   |  GET https://pokeapi.co/api/v2/pokemon/4            |
   | --------------------------------------------------> |
   |                                                     |
   |  200 OK                                             |
   |  { "id": 4, "name": "charmander", ... }             |
   | <-------------------------------------------------- |
```

Para obtener información de un Pokemon, podemos usar el endpoint `/pokemon`, según [la documentación](https://pokeapi.co/docs/v2#pokemon), accediendo a la URL `https://pokeapi.co/api/v2/pokemon/{id o nombre del pokemon}`.

## Desde el Browser

Para acceder desde el browser, visitamos el endpoint en la URL `https://pokeapi.co/api/v2/pokemon/4` y obtenemos una respuesta en formato JSON.

{{< figure src="/img/charmander-pokeapi.png" title="Vista de JSON interpretado (izquierda) y en crudo (derecha) en Firefox" >}}

## Desde JavaScript

Para acceder a esa misma información en formato JSON desde nuestro código JavaScript (`await` solo se puede usar dentro de funciones marcadas como `async`):

```js
async function obtenerPokemon() {
    let respuesta = await fetch("https://pokeapi.co/api/v2/pokemon/4");
    let pokemon = await respuesta.json();

    console.log(pokemon.name)
    //imprime "charmander"
}
```

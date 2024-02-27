---
title: "6.3: API HTTP"
---

Para obtener información de un Pokemon, podemos usar el endpoint `/pokemon`, según [la documentación](https://pokeapi.co/docs/v2#pokemon), accediendo a la URL `https://pokeapi.co/api/v2/pokemon/{id o nombre del pokemon}`.

## Desde el Browser

Para acceder desde el browser, visitamos el endpoint en la URL `https://pokeapi.co/api/v2/pokemon/4` y obtenemos una respuesta en formato JSON.

{{< figure src="/img/charmander-pokeapi.png" title="Vista de JSON interpretado (izquierda) y en crudo (derecha) en Firefox" >}}

## Desde JavaScript

Para acceder a esa misma información en formato JSON desde nuestro código JavaScript

```js
let respuesta = await fetch("https://pokeapi.co/api/v2/pokemon/4");
let pokemon = await respuesta.json():

console.log(pokemon.name)
//imprime "charmander"
```
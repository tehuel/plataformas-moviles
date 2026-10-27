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

## Endpoint

Una API ofrece distintas URLs, una para cada tipo de recurso o acción. Cada una de esas URLs se llama **endpoint**.

Por ejemplo, la PokéAPI tiene como URL base `https://pokeapi.co/api/v2` y, entre otros, estos endpoints:

| Endpoint | Devuelve |
|---|---|
| `/pokemon/{id o nombre}` | Información de un pokémon |
| `/type/{id o nombre}` | Información de un tipo (fuego, agua, etc.) |
| `/ability/{id o nombre}` | Información de una habilidad |

La URL completa se arma uniendo la URL base con el endpoint: `https://pokeapi.co/api/v2/pokemon/4`.

¿Cómo sabemos qué endpoints existen y qué devuelve cada uno? Leyendo la **documentación** de la API. Por ejemplo, para obtener información de un pokémon, [la documentación](https://pokeapi.co/docs/v2#pokemon) indica que se usa el endpoint `/pokemon/{id o nombre del pokemon}`, y muestra un ejemplo de la respuesta.

## Parámetros

Muchas veces necesitamos indicarle a la API *qué* queremos exactamente. Para eso se agregan **parámetros** en la URL, de dos formas:

**En la ruta**: forman parte del camino de la URL. La documentación los suele indicar entre llaves, como `{id}`.

```shell
https://pokeapi.co/api/v2/pokemon/4
https://pokeapi.co/api/v2/pokemon/charmander
```

**En la *query string***: van al final de la URL, después de un `?`, con el formato `clave=valor`. Si hay más de uno, se separan con `&`.

```shell
https://pokeapi.co/api/v2/pokemon?limit=151
https://www.themealdb.com/api/json/v1/1/filter.php?a=Chinese
```

En el primer ejemplo, el parámetro `limit` le pide a la API una lista de 151 pokémon. En el segundo, el parámetro `a` (*area*) filtra las comidas de origen chino.

En el código, podemos armar la URL con los parámetros usando *template strings*: un texto entre comillas invertidas (`` ` ``) donde `${...}` se reemplaza por el valor de la variable.

```js
const id = 4;
const url = `https://pokeapi.co/api/v2/pokemon/${id}`;
```

## Desde el Browser

Para acceder desde el browser, visitamos el endpoint en la URL `https://pokeapi.co/api/v2/pokemon/4` y obtenemos una respuesta en formato JSON.

{{< figure src="/img/charmander-pokeapi.png" title="Vista de JSON interpretado (izquierda) y en crudo (derecha) en Firefox" >}}

### Ver el pedido en las herramientas de desarrollo

Con las herramientas de desarrollo del navegador podemos ver cada pedido y su respuesta:

1. Abrir las herramientas de desarrollo (`F12`) y elegir la pestaña **Red** (*Network*).
2. Recargar la página.
3. Hacer clic en el pedido para ver su **método**, **URL**, **código de estado** y la **respuesta**.

Esta pestaña también muestra los pedidos que hace nuestro código JavaScript, por lo que es muy útil para encontrar errores.

## Desde JavaScript

Para hacer pedidos HTTP desde JavaScript se usa la función [`fetch()`](https://developer.mozilla.org/es/docs/Web/API/Window/fetch).

### Asincronía: esperar la respuesta

Un pedido HTTP **no es instantáneo**: viaja por internet hasta el servidor, el servidor lo procesa y la respuesta vuelve. Puede tardar milisegundos o varios segundos.

Por eso `fetch()` no devuelve los datos de inmediato, sino una **promesa** (*Promise*): un valor que va a estar disponible *más adelante*. Es como pedir en un local de comida: te dan un número de pedido y, mientras lo preparan, podés hacer otras cosas. La página tampoco se "congela" mientras espera.

Para esperar a que la promesa se cumpla y obtener el resultado se usa **`await`**. Y `await` solo se puede usar dentro de funciones marcadas como **`async`**:

```js
async function obtenerPokemon() {
    // 1. envía el pedido y espera la respuesta
    const respuesta = await fetch("https://pokeapi.co/api/v2/pokemon/4");

    // 2. espera a que llegue el contenido y lo convierte de JSON a objeto
    const pokemon = await respuesta.json();

    // 3. ya podemos usar los datos
    console.log(pokemon.name); // "charmander"
}

obtenerPokemon();
```

Hay dos `await` porque son dos esperas distintas: primero llega la respuesta (con el código de estado) y después se termina de recibir y convertir el contenido.

### Manejo de errores

Al depender de la red y de otro sistema, un pedido puede fallar. Hay dos casos principales:

1. **El servidor responde, pero con un error**: por ejemplo, pedimos un pokémon que no existe y la respuesta tiene código `404`. Para detectarlo revisamos `respuesta.ok`, que es `true` solo si el código de estado indica éxito (200-299).
2. **No hay respuesta**: por ejemplo, no hay conexión a internet. En este caso `fetch()` produce un error que podemos atrapar con `try/catch`.

```js
async function obtenerPokemon(id) {
    try {
        const respuesta = await fetch(`https://pokeapi.co/api/v2/pokemon/${id}`);

        // caso 1: el servidor respondió con un error
        if (!respuesta.ok) {
            console.log("Error en la respuesta:", respuesta.status);
            return;
        }

        const pokemon = await respuesta.json();
        console.log(pokemon.name);
    } catch (error) {
        // caso 2: no se pudo completar el pedido
        console.log("No se pudo conectar con la API:", error);
    }
}
```

En una aplicación real, además de mostrar el error en la consola, conviene avisarle a la persona usuaria con un mensaje en la página.

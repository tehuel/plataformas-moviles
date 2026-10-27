---
title: "6.2: Formato JSON"
---

**JSON** (JavaScript Object Notation) es un formato de intercambio de datos. Se utiliza para transmitir datos entre un servidor y un cliente web, y compartir información estructurada en sistemas y aplicaciones diferentes (posiblemente en entornos diferentes y hasta construidas con tecnologías diferentes).

## Ejemplo

Este es un recorte (simplificado) de la información que devuelve la PokéAPI sobre Charmander:

```json
{
    "id": 4,
    "name": "charmander",
    "height": 6,
    "is_default": true,
    "types": [
        { "slot": 1, "type": { "name": "fire" } }
    ]
}
```

## Reglas Básicas

- Los datos se organizan en **objetos** `{ }`, con pares `"clave": valor`, y **listas** `[ ]`.
- Las claves van **siempre entre comillas dobles** (`"name"`, no `name` ni `'name'`).
- Los valores pueden ser:
	- texto (string), entre comillas dobles: `"charmander"`
	- número: `4`, `8.5`
	- booleano: `true` o `false`
	- `null`
	- otro objeto `{ }` o una lista `[ ]`
- No puede haber una coma después del último elemento.

## JSON vs Objetos de JavaScript

JSON se parece mucho a un objeto de JavaScript, pero hay una diferencia importante: **JSON es texto** (un string), mientras que un objeto es un valor con el que JavaScript puede trabajar.

Cuando recibimos datos de una API, llegan como texto. Para poder usarlos hay que convertirlos en un objeto. JavaScript trae incorporado el objeto `JSON` para hacer estas conversiones:

- `JSON.parse(texto)`: convierte de texto JSON a objeto.
- `JSON.stringify(objeto)`: convierte de objeto a texto JSON.

```js
const texto = '{ "id": 4, "name": "charmander" }';

const pokemon = JSON.parse(texto);  // de texto a objeto
console.log(pokemon.name);          // "charmander"

const textoNuevo = JSON.stringify(pokemon);  // de objeto a texto
console.log(textoNuevo);                     // '{"id":4,"name":"charmander"}'
```

## Acceder a los Datos

Una vez convertido a objeto, accedemos a los datos igual que con cualquier objeto o lista de JavaScript (ver [4.3: Listas](/temas/4-js/3-listas/) y [4.4: Objetos](/temas/4-js/4-objetos/)). Con el ejemplo de Charmander:

```js
pokemon.name                  // "charmander"
pokemon.types                 // la lista de tipos
pokemon.types[0]              // el primer elemento de la lista
pokemon.types[0].type.name    // "fire"
```

> Cuando pedimos datos a una API con `fetch`, la conversión de texto a objeto la hace `respuesta.json()`, que vemos en [6.3](/temas/6-api/3-api-http/).

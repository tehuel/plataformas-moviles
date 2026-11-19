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

---

## Detalles adicionales

<details>
    <summary>¿JSON es "nativo" de JavaScript?</summary>

JSON está *basado* en la sintaxis de objetos de JavaScript (de ahí su nombre), y JavaScript trae soporte incorporado con `JSON.parse()` y `JSON.stringify()`, sin necesidad de instalar nada.

Pero JSON es un formato independiente del lenguaje: se usa desde Python, Java, Kotlin, PHP y prácticamente cualquier otro. Por eso es tan útil para comunicar aplicaciones construidas con tecnologías diferentes.

</details>

<details>
    <summary>Diferencias entre JSON y un objeto de JavaScript</summary>

Algunas cosas que son válidas en un objeto de JavaScript **no** lo son en JSON:

```js
// válido como objeto JS, inválido como JSON
{
    nombre: 'Juan',            // claves sin comillas y strings con comillas simples
    saludar: function() {},    // funciones
    edad: undefined,           // undefined
    // comentarios
    activo: true,              // coma final
}
```

```json
{
    "nombre": "Juan",
    "activo": true
}
```

</details>

<details>
    <summary>Errores al convertir</summary>

Si el texto no es JSON válido, `JSON.parse()` produce un error (`SyntaxError`) y el código se detiene. Esto pasa, por ejemplo, si una API responde con una página de error en HTML en lugar de JSON.

```js
JSON.parse("{ name: 'charmander' }");
// SyntaxError: JSON.parse: expected property name...
```

</details>

<details>
    <summary>Formatear JSON para leerlo</summary>

`JSON.stringify()` acepta un tercer parámetro para agregar sangría y hacer el texto más legible:

```js
console.log(JSON.stringify(pokemon, null, 2));
```

Los navegadores (como Firefox) también muestran el JSON formateado al abrir directamente la URL de una API.

</details>

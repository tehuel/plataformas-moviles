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

Dado que JSON es nativo en JavaScript, no es necesario utilizar bibliotecas o módulos adicionales. JavaScript ofrece métodos como `JSON.parse()` y `JSON.stringify()` para convertir entre objetos JavaScript y cadenas JSON de manera sencilla.

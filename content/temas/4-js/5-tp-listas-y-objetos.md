---
title: "4.5: tp-11 (Listas y Objetos)"
tags: "tp"
---

# Objetivo

En este trabajo práctico vamos a usar de manera combinada los tipos de datos `lista` y `objeto` dentro del lenguaje JavaScript.

# Formato de Entrega

- Subir todos los archivos a un directorio `tp-11` en el repositorio de entregas en GitHub. Deberian quedar los archivos (`index.html` y `listas-y-objetos.js`) dentro del mismo directorio.
- En el archivo `.js` implementar las funciones solicitadas.

## HTML Inicial

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Listas y Objetos en JavaScript</title>
</head>
<body>
    <h1>Listas y Objetos en JavaScript</h1>
    <p>Completar con la implementación de las funciones solicitadas en los comentarios del archivo <code>listas-y-objetos.js</code>.</p>
    <script src="listas-y-objetos.js"></script>
</body>
</html>
```

```js
var listaPersonasEjemplo = [
    {
        "apellido": "Perez",
        "nombre": "Juan",
        "edad": 20,
        "documento": 12345
    },
    {
        "apellido": "Lopez",
        "nombre": "Luis",
        "edad": 20,
        "documento": 23456
    },
    {
        "apellido": "Zapata",
        "nombre": "Pablo",
        "edad": 10,
        "documento": 34567
    },
    {
        "apellido": "Acuña",
        "nombre": "Ana",
        "edad": 30,
        "documento": 45678
    },
];

/**
 * 01 - ordenarPorApellido
 * 
 * Recibe
 * - `listaDePersonas`: una lista, array, con objetos de la forma `persona`.
 * 
 * Retorna: 
 * - el mismo listado, ordenado alfabéticamente por el apellido de la persona 
 */
function ordenarPorApellido(listaDePersonas) {
    // 
}
console.log("ordenarPorApellido()", ordenarPorApellido(listaPersonasEjemplo));

/**
 * 02 - soloNombres
 * 
 * Recibe
 * - `listaDePersonas`: una lista, array, con objetos de la forma `persona`
 * 
 * Retorna: 
 * - una lista de strings, con sólo los nombres de las personas
 */
function soloNombres(listaDePersonas) {
    // 
}
console.log("soloNombres()", soloNombres(listaPersonasEjemplo));

/**
 * 03 - promedioEdades
 * 
 * Recibe
 * - `listaDePersonas`: una lista, array, con objetos de la forma `persona`
 * 
 * Retorna: 
 * - un numero, con el cálculo del promedio de las edades
 */
function promedioEdades(listaDePersonas) {
    //
}
console.log("promedioEdades()", promedioEdades(listaPersonasEjemplo));

/**
 * 04 - cumplirAños
 * 
 * Recibe
 * - `listaDePersonas`: una lista, array, con objetos de la forma `persona`
 * 
 * Retorna: 
 * - una nueva lista, donde la edad de cada persona se incrementa en 1.
 */
function cumplirAños(listaDePersonas) {
    //
}
console.log("cumplirAños()", cumplirAños(listaPersonasEjemplo));

/**
 * 05 - soloMayoresDeEdad
 * 
 * Recibe
 * - `listaDePersonas`: una lista, array, con objetos de la forma `persona`
 * 
 * Retorna: 
 * - una lista, array, conteniendo solamente las personas con más de 18 años
 */
function soloMayoresDeEdad(listaDePersonas) {
    //
}
console.log("soloMayoresDeEdad()", soloMayoresDeEdad(listaPersonasEjemplo));

/**
 * 06 - laPersonaMayor
 * 
 * Recibe
 * - `listaDePersonas`: una lista, array, con objetos de la forma `persona`
 * 
 * Retorna: 
 * - una objeto con la persona de mayor edad en todo el listado. En caso de que hayan 2 personas con la misma edad, se puede retornar la primera que aparezca en el listado.
 */
function laPersonaMayor(listaDePersonas) {
    //
}
console.log("laPersonaMayor()", laPersonaMayor(listaPersonasEjemplo));

/**
 * 07 - agregarHeladoFavorito
 * 
 * Recibe
 * - `listaDePersonas`: una lista, array, con objetos de la forma `persona`.
 * - `listaDeHelados`: una lista, array, con strings para gustos de helado.
 * 
 * Retorna: 
 * - una nueva lista, donde a cada persona se le agrega un campo `heladoFavorito` tomado de la lista de listaDeHelados. Si no hay más helados disponibles, se asigna "vainilla" por defecto.
 */
function agregarHeladoFavorito(listaDePersonas, listaDeHelados) {
    // 
}
console.log("agregarHeladoFavorito()", agregarHeladoFavorito(listaPersonasEjemplo, ["chocolate", "limon", "frutilla"]));
```

# Condiciones

- No modificar el código provisto.
- (Opcional) Está permitido agregar casos de pruebas nuevos, además de los casos ya incluidos.

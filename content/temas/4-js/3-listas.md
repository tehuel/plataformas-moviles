---
title: "4.3: Listas"
---

Vimos el tipo de datos lista (array) en JavaScript, y algunos ejemplos de código.

Definir listas

```js
var listaDeNumeros = [1, 23, 56, 1234];
var listaDeStrings = ['a', 'abc'];
var listaDeFloats = [1.23, 2.34, 3.45];
var listaDeBooleanos = [false, false, true];
var listaDeMultiplesTipos = [1, 'a', 1.23, false];
```

Acceder a Valores de una lista

```js
console.log("acceder a una posicion: ", listaDeNumeros[0]);
console.log("acceder a la longitud: ", listaDeNumeros.length);
```

## Recorridos sobre Listas

Calcular la suma de todos los valores de una lista de números

```js
// calcular la suma total de listaDeNumeros
var sumaTotal = 0;
for(i = 0; i < listaDeNumeros.length; i++) {
    console.log("Posición: ", i);
    console.log("Valor en posición: ", listaDeNumeros[i]);
    sumaTotal = sumaTotal + listaDeNumeros[i];
    console.log("Suma hasta el momento: ", sumaTotal);
}
console.log("Suma total: ", sumaTotal);

// calcular la suma total de listaDeNumeros (otra versión)
var sumaTotalv2 = 0;
listaDeNumeros.forEach(e => sumaTotalv2 += e)
console.log("Suma total (v2): ", sumaTotalv2);
```

Multiplicar todos los valores

```js
// multiplicar todos los numeros por 5
var listaPor5 = [];
for (let i = 0; i < listaDeNumeros.length; i++) {
    // accedo al valor en posición actual y lo multiplico por 5
    var valorActual = listaDeNumeros[i];
    var resultadoPosicionActual = valorActual * 5;
    
    // modifico el valor en la lista
    listaPor5[i] = resultadoPosicionActual; 
}
console.log("lista resultado: ", listaPor5);

// multiplicar por 5
var listaPor5opcion2 = listaDeNumeros.map(e => e * 5);
console.log("lista resultado v2: ", listaPor5opcion2);
```

> Comentario extra: Para intercambiar 2 posiciones de una lista es necesario usar una variable temporal
>
>     var temporal = nuevaLista(0);
>     nuevaLista[0] = nuevaLista[1];
>     nuevaLista[1] = temporal;

## Agregar Elementos

Una opción para agregar elementos es operar con los índices directamente

```js
// agegar un nuevo elemento al final de la lista
var nuevoValor = 42;
var nuevaPosicion = listaDeNumeros.length;
listaDeNumeros[nuevaPosicion] = nuevoValor;
console.log("lista con nuevo valor: ", listaDeNumeros);
```

Esta opción puede traer complicaciones, dejando listas inconsistentes al agregar o eliminar elementos

```js
// agregar otro elemento
listaDeNumeros[99] = nuevoValor;
console.log("lista con nuevo valor en posición 99", listaDeNumeros);

// eliminar elemento de una lista
delete listaDeNumeros[99];
console.log("lista con nuevo valor eliminado", listaDeNumeros);

// en este punto la longitud de la lista quedó inconsistente
console.log(listaDeNumeros.length);
```

Otra opción para agregar elementos es usar los métodos `push()` y `unshift()` de listas

```js
var nuevoValor = 33;

// agregar un elemento al final de una lista
listaDeNumeros.push(nuevoValor);

// agregar un elemento al inicio de una lista
listaDeNumeros.push(nuevoValor);
```


## Filtrar Listas

Se puede usar el método `filter()` filtrar los elementos de una lista. La función de filtro que recibe `filter()` debe devolver `true` para que el elemento permanezca en la lista resultante y `false` para que sea eliminado de la lista resultante.

```js
var listaDePreposiciones = ['a', 'ante', 'bajo', 'cabe', 'con', 'contra', 'de', 'desde', 'durante', 'en', 'entre', 'hacia', 'hasta', 'mediante', 'para', 'por', 'según', 'sin', 'so', 'sobre', 'tras', 'versus', 'vía'];

// me quedo con las palabras de al menos 3 letras de largo
var listaFiltrada = listaDePreposiciones.filter((elementoActual) => {
    return elementoActual.length > 3;
})
console.log("lista de preposiciones filtrada", listaFiltrada)
console.log("lista de preposiciones original", listaDePreposiciones)
```

## Listas dentro de listas

Se pueden definir listas dentro de otras listas

```js
var listaAnidada = [ 1, 2, 3, [7, 8, 9], 4, 5, 6 ]
listaAnidada[3][1] // accedo al 8
```

## Otra Forma de pensar Operaciones

Vimos los conceptos de los métodos:

- `Array.filter()`
- `Array.map()`
- `Array.reduce()`
- `Array.sort()`

También vimos que se puede seguir usando el `for(;;)` de toda la vida, y existe una alternativa `Array.foreach()`.

---
title: "4.2: Listas"
weight: 20
tipo: "apunte"
opcional: false
---

Vimos el tipo de datos lista (array) en JavaScript, y algunos ejemplos de código.

## Definir listas

```js
let listaDeNumeros = [1, 23, 56, 1234];
let listaDeStrings = ['a', 'abc'];
let listaDeFloats = [1.23, 2.34, 3.45];
let listaDeBooleanos = [false, false, true];
let listaDeMultiplesTipos = [1, 'a', 1.23, false];
let listaVacia = [];
```

## Operaciones sobre listas

### Acceder a valores de una lista

```js
// acceder a un elemento determinado
let primerElemento = listaDeNumeros[0];

// conocer la longitud de una lista
let cantidadElementos = listaDeNumeros.length;

// acceder al último elemento
let ultimoElemento = listaDeNumeros[listaDeNumeros.length - 1];
```

### Agregar y quitar elementos

Se pueden usar los métodos `push()` y `pop()` para agregar o quitar elementos al final de una lista.

```js
let nuevoValor = 33;

// agregar elemento al final de la lista
listaDeNumeros.push(nuevoValor);

// remover de la lista el último elemento
listaDeNumeros.pop();

// remover de la lista y obtener el último elemento
let ultimoNumero = listaDeNumeros.pop();
```

## Recorridos sobre Listas

### Calcular la suma de todos los valores

```js
// calcular la suma total de listaDeNumeros
let sumaTotal = 0;
for (let i = 0; i < listaDeNumeros.length; i++) {
    console.log("Posición: ", i);
    console.log("Valor en posición: ", listaDeNumeros[i]);
    sumaTotal = sumaTotal + listaDeNumeros[i];
    console.log("Suma hasta el momento: ", sumaTotal);
}
console.log("Suma total: ", sumaTotal);

// calcular la suma total de listaDeNumeros (otra versión)
let sumaTotalv2 = 0;
listaDeNumeros.forEach((e) => { sumaTotalv2 += e; });
console.log("Suma total (v2): ", sumaTotalv2);
```

### Multiplicar todos los valores

```js
// multiplicar todos los números por 5
let listaPor5 = [];
for (let i = 0; i < listaDeNumeros.length; i++) {
    // accedo al valor en posición actual y lo multiplico por 5
    let valorActual = listaDeNumeros[i];
    let resultadoPosicionActual = valorActual * 5;

    // modifico el valor en la lista
    listaPor5[i] = resultadoPosicionActual;
}
console.log("lista resultado: ", listaPor5);

// multiplicar por 5 con map()
let listaPor5opcion2 = listaDeNumeros.map((e) => { return e * 5; });
console.log("lista resultado v2: ", listaPor5opcion2);
```

## Filtrar Listas

Se puede usar el método `filter()` para filtrar los elementos de una lista. La función de filtro que recibe `filter()` debe devolver `true` para que el elemento permanezca en la lista resultante y `false` para que sea descartado.

```js
let listaDePreposiciones = ['a', 'ante', 'bajo', 'cabe', 'con', 'contra', 'de', 'desde', 'durante', 'en', 'entre', 'hacia', 'hasta', 'mediante', 'para', 'por', 'según', 'sin', 'so', 'sobre', 'tras', 'versus', 'vía'];

// me quedo con las palabras de más de 3 letras de largo
let listaFiltrada = listaDePreposiciones.filter((elementoActual) => {
    return elementoActual.length > 3;
});
console.log("lista de preposiciones filtrada", listaFiltrada);
console.log("lista de preposiciones original", listaDePreposiciones);
```

## Ordenar Listas

Se puede usar el método `sort()` de listas para ordenarlas.

```js
let listaDesordenada = [4, 6, 2, 1, 9];
let listaOrdenada = listaDesordenada.sort();

console.log("lista ordenada", listaOrdenada);
```

Al método [`.sort()`](https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Global_Objects/Array/sort) se le puede pasar como parámetro una función que defina el criterio por el que queremos ordenar la lista. Esta función "criterioDeOrdenamiento" recibe 2 elementos de la lista, y devuelve como resultado un número para decidir cuál de los 2 elementos debe aparecer antes en la lista:

- Si devuelve un número negativo, el primer elemento va antes que el segundo.
- Si devuelve un número positivo, el segundo elemento va antes que el primero.

Con strings la comparación se puede hacer con [`localeCompare()`](https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Global_Objects/String/localeCompare).

## Existencia de elemento en lista

Podemos necesitar averiguar si un elemento es parte de la lista. Para eso podemos recorrer la lista o usar el método `includes()`.

```js
let listaDeNombres = ["Mateo", "Sofía", "Benjamín", "Valentina", "Thiago"];

function existeElementoEnLista(elemento, lista) {
	let encontrado = false;
	// queremos saber si elemento está en lista
	for (let i = 0; i < lista.length; i++) {
		// accedemos a valor en posición i
		let valorActual = lista[i];

		// si es el que buscamos
		if (valorActual == elemento) {
			encontrado = true;
		}
	}
	return encontrado;
}

console.log("Existe 'Martina' en lista?", existeElementoEnLista("Martina", listaDeNombres));

// Otra opción para consultar existencia de elemento en lista
console.log("Existe 'Lautaro' en lista?", listaDeNombres.includes("Lautaro"));
```

---

## Detalles adicionales

<details>
    <summary>Agregar o quitar al inicio (<code>unshift</code>/<code>shift</code>) y asignación por índice</summary>

También existen los métodos `unshift()` y `shift()` para trabajar al inicio de la lista:

```js
let nuevoValor = 33;

// agregar elemento al inicio de la lista
listaDeNumeros.unshift(nuevoValor);

// remover el primer elemento
listaDeNumeros.shift();

// remover y obtener el primer elemento
let primerNumero = listaDeNumeros.shift();
```

Existe otra forma de agregar o eliminar elementos usando posiciones directamente, pero puede dejar huecos e inconsistencias en la longitud de la lista:

```js
// agregar un nuevo elemento al final de la lista
let nuevaPosicion = listaDeNumeros.length;
listaDeNumeros[nuevaPosicion] = 42;

// agregar en una posición muy lejana deja posiciones vacías
listaDeNumeros[99] = 42;

// eliminar con delete también deja un hueco sin ajustar length
delete listaDeNumeros[99];
console.log(listaDeNumeros.length);
```

</details>

<details>
    <summary>Intercambiar posiciones con variable temporal</summary>

Para intercambiar 2 posiciones de una lista es necesario usar una variable temporal:

```js
let temporal = nuevaLista[0];
nuevaLista[0] = nuevaLista[1];
nuevaLista[1] = temporal;
```

</details>

<details>
    <summary>Listas dentro de listas</summary>

Se pueden definir listas dentro de otras listas:

```js
let listaAnidada = [1, 2, 3, [7, 8, 9], 4, 5, 6];
listaAnidada[3][1]; // accedo al 8
```

</details>

<details>
    <summary>Otra forma de pensar operaciones: <code>reduce()</code></summary>

Además de `forEach()`, `map()`, `filter()` y `sort()`, existe [`Array.reduce()`](https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce) para combinar todos los elementos de una lista en un único valor (por ejemplo, una suma total):

```js
let suma = listaDeNumeros.reduce((acumulador, actual) => acumulador + actual, 0);
```

</details>

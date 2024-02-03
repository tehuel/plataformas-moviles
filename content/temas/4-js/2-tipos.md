---
title: "4.2: Tipos de Datos"
---

Al programar, lo que hacemos es construir piezas de código para que puedan ser ejecutadas. Si se toma en cuenta esta idea, se puede decir que los datos son la "materia prima" que usamos para trabajar.

Estos datos pueden ser de distintos tipos según sus características. En primera instancia, se pueden diferenciar dos grupos: 
- Los datos **Primitivos**, que son aquellos que no son un objeto y no tienen métodos.
- Los datos **No Primitivos**, que son estructuras de datos más complejas y suelen ser implementados combinando varios datos primitivos.

## Tipos de Datos (Primitivos)

- números (enteros y de punto flotante)
- strings
- booleanos

```js

// variables y tipos
let MiVariable;
MiVariable = 1;
MiVariable = 1.234;
MiVariable = "Hola";
MiVariable = true;

```

## Tipos de datos (No Primitivos)

- Listas
- Funciones
- Clases y Objetos

```js
// Lista
var lista = [1, "abc", true]

// función sin parámetros
function MiFuncion1() {
    return 1;
}

// expresión de función
function MiFuncionSuma(a, b) {
    return a + b;
}
var sumaResultado = MiFuncionSuma(10, 20);

// función anónima
var MiSegundaFuncionSuma = function (a, b) {
    return a + b;
}
var segundoResultado = MiSegundaFuncionSuma(10,20);

// expresión de función flecha (arrow function)
var MiTercerFuncionSuma = (a, b) => {
    return a + b;
}
var tercerResultado = MiTercerFuncionSuma(10,20);
```

## Control de flujo

Para controlar el flujo de los datos con los que trabajamos existen ciertas estructuras de control.

```js
// condicionales
if (condicion) {

} else {

}

// bucles
while (condicion) {}

do {} while (condicion);

for (inicio; condicion; incremento) {}
```
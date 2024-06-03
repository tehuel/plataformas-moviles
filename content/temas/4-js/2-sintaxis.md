---
title: "4.2: Sintaxis Básica"
---

Tipos de Datos (Primitivos)

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

Condicionales

```js
// condicionales
if (condicion) {

} else {

}
```

Bucles

```js
while (condicion) {}

do {} while (condicion);

for (inicio; condicion; incremento) {}
```

Funciones

```js
// expresión de función
function MiPrimeraFuncionSuma(a, b) {
    return a + b;
}
let primerResultado = MiPrimeraFuncionSuma(10, 20);

// función anónima
let MiSegundaFuncionSuma = function (a, b) {
    return a + b;
}
let segundoResultado = MiSegundaFuncionSuma(10,20);

// expresión de función flecha (arrow function)
let MiTercerFuncionSuma = (a, b) => {
    return a + b;
}
let tercerResultado = MiTercerFuncionSuma(10,20);
```

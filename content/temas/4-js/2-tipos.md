---
title: "4.2: Tipos de Datos"
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

// condicionales
if (condicion) {

} else {

}

// bucles
while (condicion) {}

do {} while (condicion);

for (inicio; condicion; incremento) {}

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

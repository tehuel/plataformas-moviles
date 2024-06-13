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

## Concepto de Funciones

Una función (en programación) se puede pensar como una máquina que toma una entrada, realiza un conjunto de operaciones definidas en su interior y produce una salida.

La podemos imaginar como una caja negra con una entrada y una salida, donde el proceso de transformación dentro de la caja (o máquina) está oculto pero produce un resultado predecible basado en la entrada dada.

A su vez, dentro de la caja sólo deberíamos preocuparnos por procesar y transformar la entrada para producir la salida.

{{< figure src="/img/FunctionMachine.svg" title="Pensamos la función como una máquina" >}}

{{< figure src="/img/FunctionMachinesComposition.svg" title="La salida de una máquina puede ser la entrada de otra" >}}
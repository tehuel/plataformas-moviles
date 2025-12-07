---
title: "2 - JavaScript"
outputs:
  - "Reveal"
---

# JavaScript

---

![](/img/js-teapot.jpg)

---

## Sintaxis Básica

---

### Tipos de Datos (Primitivos)

```js
let MiVariable;

MiVariable = 1;
MiVariable = 1.234;
MiVariable = "Hola";
MiVariable = true;
```

---

### Condicionales

```js
if (condicion) {
  // caso verdadero
} else {
  // caso falso
}
```

---

### Bucles

```js
for (inicio; condicion; incremento) {
  // código a repetir
}

while (condicion) {
  // código a repetir
}

do {
  // código a repetir
} while (condicion);
```

---

### Funciones

{{% fragment %}}
```js
// expresión de función
function MiPrimeraFuncionSuma(a, b) {
    return a + b;
}
let primerResultado = MiPrimeraFuncionSuma(10, 20);
```
{{% /fragment %}}

{{% fragment %}}
```js
// función anónima
let MiSegundaFuncionSuma = function (a, b) {
    return a + b;
}
let segundoResultado = MiSegundaFuncionSuma(10,20);
```
{{% /fragment %}}

{{% fragment %}}
```js
// expresión de función flecha (arrow function)
let MiTercerFuncionSuma = (a, b) => {
    return a + b;
}
let tercerResultado = MiTercerFuncionSuma(10,20);
```
{{% /fragment %}}

---

Repasemos...

## Concepto de Funciones

{{% fragment %}}
- Bloques de código reutilizables
{{% /fragment %}}

{{% fragment %}}
- Reciben parámetros de entrada
{{% /fragment %}}

{{% fragment %}}
- Retornan un valor de salida
{{% /fragment %}}

{{% fragment %}}
- Ayudan a organizar el código
{{% /fragment %}} 

---

![](/img/FunctionMachine.svg)

---

![](/img/FunctionMachinesComposition.svg)

---


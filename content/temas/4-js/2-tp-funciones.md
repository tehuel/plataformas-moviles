---
title: "4.2: TP Funciones"
---

Séptimo trabajo práctico, en el que vamos a trabajar con la definición de funciones en JavaScript.

Consigna:

- Subir el archivo HTML en `tp-7/index.html`.
- En ese archivo HTML creado implementar las funciones solicitadas.

Condiciones:

- Usar al menos una vez cada una de las 3 formas distintas de definición de funciones que vimos en clase.
- No modificar el código provisto.
- (Opcional) Está permitido agregar casos de pruebas nuevos, además de los casos ya incluidos.

## HTML

```html
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>TP-7: Funciones en JavaScript</title>
</head>
<body>
<p>Completar con la implementación de las funciones correspondientes</p>
<script type="text/javascript">
// Numeros

// Implementar una función "suma" que retorne la suma de 2 numeros
// ejemplo: suma(2,3) retorna 5
function suma(num1, num2) {
    // return num1 + num2;
}

console.log(suma(2,3)); // 5
console.log(suma(4,4)); // 8
console.log(suma(-10,10)); // 0



// Implementar una función "elevarAlCubo" que eleve al cubo un numero
// ejemplo: elevarAlCubo(3) retorna 27

console.log(elevarAlCubo(3)); // 27
console.log(elevarAlCubo(99)); // 970299



// Implementar una función "restoDivisionEntera" para devolver el resto de una división entera entre un dividendo y un divisor
// ejemplo: restoDivisionEntera(3,2) retorna 1

console.log(restoDivisionEntera(1,3)); // 1
console.log(restoDivisionEntera(2,3)); // 2
console.log(restoDivisionEntera(3,3)); // 0
console.log(restoDivisionEntera(4,3)); // 1



// Implementar una función "numeroPi" para devolver el numero PI
// ejemplo: numeroPi() retorna 3,14...

console.log("numeroPi: ", numeroPi());



// Implementar una función "numeroRandom" para devolver un número random / aleatorio
// ejemplo: numeroRandom() retorna 0,123...

console.log("numeroRandom: ", numeroRandom());
console.log("numeroRandom: ", numeroRandom());



// Implementar una función "mejorNumeroRandom" que devuelva un número random, pero comprendido entre los dos valores `min` y `max` recibidos como parámetros.
// ejemplo: mejorNumeroRandom(2,4) retorna un número random entre 2 y 4.

console.log("mejorNumeroRandom(1,6): ", mejorNumeroRandom(1,6));
console.log("mejorNumeroRandom(1,6): ", mejorNumeroRandom(1,6));
console.log("mejorNumeroRandom(2,4): ", mejorNumeroRandom(2,4));
console.log("mejorNumeroRandom(2,4): ", mejorNumeroRandom(2,4));


// Cadenas de Caracteres

// Implementar una función "transformarMayuscula" que transforme a mayúscula la palabra recibida como parámetro
// ejemplo: transformarMayuscula("Plataformas Móviles") retorna "PLATAFORMAS MÓVILES"

console.log("transformarMayuscula(\"hola\"): ", transformarMayuscula("hola"));
console.log("transformarMayuscula(\"Plataformas Móviles\"): ", transformarMayuscula("Plataformas Móviles"));



// Implementar una función "primeraLetra" que nos devuelva la inicial de la palabra recibida como parámetro
// ejemplo: primeraLetra("plataformas") retorna "p"

console.log("primeraLetra(\"hola\"): ", primeraLetra("hola"));
console.log("primeraLetra(\"plataformas\"): ", primeraLetra("plataformas"));



// Implementar una función "ultimaLetra" que nos devuelva la letra final la palabra recibida como parámetro
// ejemplo: ultimaLetra("Plataformas") retorna "s"

console.log("ultimaLetra(\"hola\"): ", ultimaLetra("hola"));
console.log("ultimaLetra(\"Plataformas\"): ", ultimaLetra("Plataformas"));



// Implementar una función "palabraSinPrimeraLetra" que nos devuelva la palabra recibida como parámetro sin la primera letra
// ejemplo: palabraSinPrimeraLetra("plataformas") retorna "lataformas" (sin la "p")

console.log("palabraSinPrimeraLetra(\"hola\"): ", palabraSinPrimeraLetra("hola"));
console.log("palabraSinPrimeraLetra(\"plataformas\"): ", palabraSinPrimeraLetra("plataformas"));



// Implementar una función "primeraLetraMayuscula" que devuelve la palabra original con su primera letra en mayúscula
// ejemplo: primeraLetraMayuscula("plataformas") retorna "Plataformas"

console.log("primeraLetraMayuscula(\"hola\"): ", primeraLetraMayuscula("hola"));
console.log("primeraLetraMayuscula(\"plataformas\"): ", primeraLetraMayuscula("plataformas"));



// Implementar una función "terminaCon" que devuelve verdadero o falso si la palabra termina con la terminación recibida
// ejemplo: terminaCon("plataformas", "mas") retorna true

console.log(terminaCon("hola", "a")); // true
console.log(terminaCon("hola", "o")); // false

console.log(terminaCon("plataformas", "mas")); // true
console.log(terminaCon("plataformas", "más")); // false



// Implementar una función "palabraInvertida" que devuelva la palabra invertida
// ejemplo: palabraInvertida("hola") retorna "aloh";

console.log("palabraInvertida(\"hola\"): ", palabraInvertida("hola"));
console.log("palabraInvertida(\"chau\"): ", palabraInvertida("chau"));
console.log("palabraInvertida(\"ana\"): ", palabraInvertida("ana"));

</script>
</body>
</html>
```

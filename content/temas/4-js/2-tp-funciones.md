---
title: "4.2: tp-7 (Funciones)"
tags: "tp"
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

console.log("Resultados de suma():")
console.log(suma(2,3)); // 5
console.log(suma(4,4)); // 8
console.log(suma(-10,10)); // 0


// Implementar una función "elevarAlCubo" que eleve al cubo un numero
// ejemplo: elevarAlCubo(3) retorna 27

console.log("Resultados de elevarAlCubo():")
console.log(elevarAlCubo(3)); // 27
console.log(elevarAlCubo(99)); // 970299

// Implementar una función "restoDivisionEntera" para devolver el resto de una división entera entre un dividendo y un divisor
// ejemplo: restoDivisionEntera(3,2) retorna 1

console.log("Resultados de restoDivisionEntera():")
console.log(restoDivisionEntera(1,3)); // 1
console.log(restoDivisionEntera(2,3)); // 2
console.log(restoDivisionEntera(3,3)); // 0
console.log(restoDivisionEntera(4,3)); // 1


// Implementar una función "numeroPi" para devolver el numero PI
// ejemplo: numeroPi() retorna 3,14...

console.log("Resultado de numeroPi():")
console.log(numeroPi())


// Implementar una función "numeroRandom" para devolver un número random / aleatorio
// ejemplo: numeroRandom() retorna 0,123...

console.log("Resultados de numeroRandom():")
console.log(numeroRandom())
console.log(numeroRandom())
console.log(numeroRandom())


// Implementar una función "numeroRandomDesdeHasta" para devolver un número random entre 2 valores recibidos como parámetros
// ejemplo: numeroRandomDesdeHasta(1,6) retorna 3

console.log("Resultados de numeroRandomDesdeHasta():")
console.log(numeroRandomDesdeHasta(1,6))
console.log(numeroRandomDesdeHasta(2,5))
console.log(numeroRandomDesdeHasta(3,4))


// Cadenas de Caracteres

// Implementar una función "transformarMayuscula" que transforme a mayúscula la cadena de caracteres recibida como parámetro
// ejemplo: transformarMayuscula("Plataformas Móviles") retorna "PLATAFORMAS MÓVILES"

console.log("Resultados de transformarMayuscula():")
console.log(transformarMayuscula("Plataformas Móviles"))
console.log(transformarMayuscula("hola mundo"))
console.log(transformarMayuscula("abc"))


// Implementar una función "primeraLetra" que nos devuelva la inicial de la cadena de caracteres recibida como parámetro
// ejemplo: primeraLetra("Plataformas") retorna "P"

console.log("Resultados de primeraLetra():")
console.log(primeraLetra("Plataformas Móviles"))
console.log(primeraLetra("hola mundo"))
console.log(primeraLetra("abc"))


// Implementar una función "sinPrimeraLetra" que nos devuelva la cadena de caracteres recibida como parámetro sin la primera letra
// ejemplo: sinPrimeraLetra("Plataformas") retorna "lataformas"

console.log("Resultados de sinPrimeraLetra():")
console.log(sinPrimeraLetra("Plataformas Móviles"))
console.log(sinPrimeraLetra("hola mundo"))
console.log(sinPrimeraLetra("abc"))


// Implementar una función "primeraLetraMayuscula" que devuelve la cadena de caracteres recibida, pero  con su primera letra en mayúscula
// ejemplo: primeraLetraMayuscula("plataformas") retorna "Plataformas"

console.log("Resultados de primeraLetraMayuscula():")
console.log(primeraLetraMayuscula("plataformas móviles"))
console.log(primeraLetraMayuscula("hola mundo"))
console.log(primeraLetraMayuscula("abc"))


// Implementar una función "terminaCon" que devuelve verdadero o falso si la palabra termina con la terminación recibida
// ejemplo: terminaCon("plataformas", "mas") retorna true
console.log("Resultados de terminaCon():")
console.log(terminaCon("hola", "a")); // true
console.log(terminaCon("hola", "o")); // false
console.log(terminaCon("plataformas", "mas")); // true
console.log(terminaCon("plataformas", "más")); // false

// Implementar una función "palabraInvertida" que devuelva la palabra invertida
// ejemplo: palabraInvertida("hola") retorna "aloh";

console.log("Resultados de palabraInvertida():")
console.log(palabraInvertida("plataformas móviles"))
console.log(palabraInvertida("hola mundo"))
console.log(palabraInvertida("abc"))

</script>
</body>
</html>
```

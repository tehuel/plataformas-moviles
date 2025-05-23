---
title: "4.2: tp-7 (Funciones)"
tags: "tp"
---

# Objetivo 

Practicar la definición y el uso de funciones en JavaScript.

# Formato de Entrega

- Crear un archivo HTML en la ruta `/tp-7/index.html`, con el contenido del HTML inicial.
- Subir el archivo al repositorio de entregas.

## HTML Inicial

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

// 1- Implementar una función "suma" que retorne la suma de 2 numeros
// ejemplo: suma(2,3) retorna 5
function suma(num1, num2) {
    // return num1 + num2;
}

console.log("Resultados de suma():")
console.log(suma(2,3)); // 5
console.log(suma(4,4)); // 8
console.log(suma(-10,10)); // 0


// 2- Implementar una función "elevarAlCubo" que eleve al cubo un numero
// ejemplo: elevarAlCubo(3) retorna 27

console.log("Resultados de elevarAlCubo():")
console.log(elevarAlCubo(3)); // 27
console.log(elevarAlCubo(99)); // 970299

// 3- Implementar una función "restoDivisionEntera" para devolver el resto de una división entera entre un dividendo y un divisor
// ejemplo: restoDivisionEntera(3,2) retorna 1

console.log("Resultados de restoDivisionEntera():")
console.log(restoDivisionEntera(1,3)); // 1
console.log(restoDivisionEntera(2,3)); // 2
console.log(restoDivisionEntera(3,3)); // 0
console.log(restoDivisionEntera(4,3)); // 1


// 4- Implementar una función "numeroPi" para devolver el numero PI
// ejemplo: numeroPi() retorna 3,14...

console.log("Resultado de numeroPi():")
console.log(numeroPi())


// 5- Implementar una función "numeroRandom" para devolver un número random (aleatorio)
// ejemplo: numeroRandom() retorna 0,123...

console.log("Resultados de numeroRandom():")
console.log(numeroRandom())
console.log(numeroRandom())
console.log(numeroRandom())


// 6- Implementar una función "numeroRandomDesdeHasta" para devolver un número random entre 2 valores recibidos como parámetros
// ejemplo: numeroRandomDesdeHasta(1,6) retorna 3

console.log("Resultados de numeroRandomDesdeHasta():")
console.log(numeroRandomDesdeHasta(1,6))
console.log(numeroRandomDesdeHasta(2,5))
console.log(numeroRandomDesdeHasta(3,4))


// 7- Implementar una función "esPar" que reciba un número como parámetro y devuelva verdadero si el número es par, o falso si es impar
// ejemplo: esPar(4) retorna true, esPar(5) retorna false

console.log("Resultados de esPar():")
console.log(esPar(4)); // true
console.log(esPar(5)); // false
console.log(esPar(0)); // true
console.log(esPar(-2)); // true


// 8- Implementar una función "esPositivo" que reciba un número y devuelva true si el número es positivo, o false si es negativo o cero
// ejemplo: esPositivo(4) retorna true, esPositivo(-3) retorna false

console.log("Resultados de esPositivo():")
console.log(esPositivo(4)); // true
console.log(esPositivo(-3)); // false
console.log(esPositivo(0)); // false

// 9- Implementar una función "clasificarNumero" que reciba un número y retorne un mensaje indicando si el número es par o impar, y si es positivo o negativo
// ejemplo: clasificarNumero(4) retorna "El número 4 es par y positivo."
// ejemplo: clasificarNumero(-3) retorna "El número -3 es impar y negativo."

console.log("Resultados de clasificarNumero():")
console.log(clasificarNumero(4)); // "El número 4 es par y positivo."
console.log(clasificarNumero(-3)); // "El número -3 es impar y negativo."
console.log(clasificarNumero(0)); // "El número 0 es par y no positivo."

// Cadenas de Caracteres

// 10- Implementar una función "transformarMayuscula" que transforme a mayúscula la cadena de caracteres recibida como parámetro
// ejemplo: transformarMayuscula("Plataformas Móviles") retorna "PLATAFORMAS MÓVILES"

console.log("Resultados de transformarMayuscula():")
console.log(transformarMayuscula("Plataformas Móviles"))
console.log(transformarMayuscula("hola mundo"))
console.log(transformarMayuscula("abc"))


// 11- Implementar una función "primeraLetra" que nos devuelva la inicial de la cadena de caracteres recibida como parámetro
// ejemplo: primeraLetra("Plataformas") retorna "P"

console.log("Resultados de primeraLetra():")
console.log(primeraLetra("Plataformas Móviles"))
console.log(primeraLetra("hola mundo"))
console.log(primeraLetra("abc"))


// 12- Implementar una función "sinPrimeraLetra" que nos devuelva la cadena de caracteres recibida como parámetro sin la primera letra
// ejemplo: sinPrimeraLetra("Plataformas") retorna "lataformas"

console.log("Resultados de sinPrimeraLetra():")
console.log(sinPrimeraLetra("Plataformas Móviles"))
console.log(sinPrimeraLetra("hola mundo"))
console.log(sinPrimeraLetra("abc"))


// 13- Implementar una función "primeraLetraMayuscula" que devuelve la cadena de caracteres recibida, pero  con su primera letra en mayúscula
// ejemplo: primeraLetraMayuscula("plataformas") retorna "Plataformas"

console.log("Resultados de primeraLetraMayuscula():")
console.log(primeraLetraMayuscula("plataformas móviles"))
console.log(primeraLetraMayuscula("hola mundo"))
console.log(primeraLetraMayuscula("abc"))


// 14- Implementar una función "terminaCon" que devuelve verdadero o falso si la palabra termina con la terminación recibida
// ejemplo: terminaCon("plataformas", "mas") retorna true

console.log("Resultados de terminaCon():")
console.log(terminaCon("hola", "a")); // true
console.log(terminaCon("hola", "o")); // false
console.log(terminaCon("plataformas", "mas")); // true
console.log(terminaCon("plataformas", "más")); // false

// 15- Implementar una función "palabraInvertida" que devuelva la palabra invertida
// ejemplo: palabraInvertida("hola") retorna "aloh";

console.log("Resultados de palabraInvertida():")
console.log(palabraInvertida("plataformas móviles"))
console.log(palabraInvertida("hola mundo"))
console.log(palabraInvertida("abc"))

</script>
</body>
</html>
```

# Consigna

- Implementar dentro del `<script>` las funciones solicitadas
- Usar al menos una vez cada una de las 3 formas distintas de definición de funciones que vimos en clase.

# Bonus Track (consignas adicionales)

- (Opcional) Está permitido agregar casos de pruebas nuevos, además de los casos ya incluidos.

# Condiciones

- No modificar el código provisto.

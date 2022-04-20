---
title: "TP3 - CSS Media Queries"
---

Tercer Trabajo Práctico, en el que vamos a empezar a utilizar las **media queries** de CSS.

## Fecha de Entrega

Lunes 25 de Abril. Lo vamos a revisar durante la clase.

## Consigna

Agregar el siguiente archivo HTML dentro del repositorio de entregas creado en el [trabajo práctico 1](/trabajos/tp1), en la ubicación `/tp-3/index.html`.

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>TP3 - CSS Media Queries</title>
</head>
<body>
  <h1>Historia de Wikipedia</h1>
  <p><a href="https://es.wikipedia.org/wiki/Wikipedia">Wikipedia</a>, <em>la enciclopedia libre</em>, fue creada el 15 de enero de 2001, como proyecto de edición abierta que pretendía agilizar y flexibilizar el desarrollo de la hoy extinta enciclopedia con revisión por pares <a href="https://es.wikipedia.org/wiki/Nupedia">Nupedia</a>, y ha crecido continuamente en número de artículos y de ediciones idiomáticas hasta la actualidad. </p>
  <h2>Logotipo</h2>
  <p>La primera imagen o bandera utilizada en Wikipedia fue la bandera estadounidense, colocada por <a href="https://es.wikipedia.org/wiki/Jimmy_Wales">Jimbo Wales</a> de manera precaria y sin intención de que la misma asumiera la condición de logo del proyecto. De todos modos, el hecho generó algunas críticas sobre <a href="https://es.wikipedia.org/wiki/Etnocentrismo">etnocentrismo</a>.</p>
  <p>Pocos días después se diseñó el primer logo de Wikipedia, conocido como el «Wiki logo Nupedia», que marcaría el desarrollo del proyecto, como una herramienta auxiliar de Nupedia. Atribuido erróneamente a Stephen Gilbert, su autor en realidad no está identificado. Ya en marzo de 2001 el logo se encontraba instalado.</p>
  <figure id="wikipedia-logo">
    <img src="https://upload.wikimedia.org/wikipedia/commons/3/31/Wiki_logo_Nupedia.jpg" alt="Primer Logo de Wikipedia">
    <figcaption>El «Wiki logo Nupedia», primer logo de Wikipedia, utilizado desde las primeras semanas del proyecto hasta febrero de 2002.</figcaption>
  </figure>
  <p>El logo se elaboró superponiendo una frase del escritor y matemático inglés Lewis Carroll sobre un círculo, usando el efecto de ojo de pez para simular una esfera. La frase es una cita en inglés tomada de la página X del prefacio de Euclid and his Modern Rivals (Euclides y sus rivales modernos, publicada en lengua española), comedia en cuatro actos escrita por Lewis Carroll en 1879,16​ que dice:</p>
  <figure id="lewis-carroll-quote">
    <blockquote cite="https://es.wikipedia.org/wiki/Historia_de_Wikipedia#cite_ref-17">
      <p>En cierto sentido este libro es un experimento, y puede arriesgarse a demostrar un error: quiero decir que no consideré necesario mantener, a todo lo largo del texto, la seriedad de estilo de la que suelen hacer uso los escritores científicos, que en cierto modo llegó a considerarse un “accidente inseparable” de la enseñanza científica. Nunca pude comprender por completo la racionalidad de esta ley ancestral: hay temas, sin duda, que son básicamente demasiado serios como para admitir cualquier tratamiento ligero –pero no puedo reconocer a la Geometría como uno de ellos. De todas maneras, confío, se descubrirá que me he permitido vislumbrar el lado cómico de las cosas solo en los momentos apropiados, cuando el cansado lector quizá desee un momento de respiro, y no en cualquier ocasión que pueda poner en peligro la continuidad de la línea argumental.</p>
    </blockquote>
    <figcaption>Lewis Carroll</figcaption>
  </figure>
  <hr>
  <p>Fuente: <a href="https://es.wikipedia.org/wiki/Historia_de_Wikipedia">Wikipedia</a></p>
</body>
</html>
```
También modificar el archivo `/index.html` en la raiz del repositorio para incluir un link a este nuevo `/tp-3/index.html` recién creado.

Para este nuevo archivo HTML creado, agregar una hoja de estilos CSS, para definir los estilos.

### Estilos dentro de CSS

Dentro de la hoja de estilos, agregar los siguientes estilos usando media queries:

1. En dispositivos con más de `400px` de ancho, el tamaño del texto de todos los `<p>` debe ser `1.3em`.
2. En dispositivos de menos de `300px` de ancho, el título `<h1>` se tiene que mostrar centrado.
3. Para el elemento `<div class="container">`, definir el ancho del elemento de acuerdo al ancho del dispositivo:
    - Para dispositivos de menos de 200px de ancho, el elemento tiene un `width` de `90%`.
    - Para dispositivos de entre 200px y 400px, el elemento tiene un `width` de `80%`.
    - En dispositivos con más de 400px de ancho, el elemento tiene un `width` exacto de `390px`.
4. Al elemento `<div class="container">` del punto anterior mostrarlo centrado, pero sólo cuando se muestra en pantallas.
5. El `<body>` del documento tiene que tener fondo color blanco cuando se vaya a imprimir, pero color `#ddccaa` en el resto de dispositivos.
6. En dispositivos que no pueden mostrar colores, ocultar el elemento `#wikipedia-logo`.
7. En dispositivos que acepten "hover", cambiar el color de fondo del elemento `<blockquote>` a `#ccddaa`. Agregar un comentario en el CSS con los navegadores en los que funciona y en los que no funciona esta media query.
8. En dispositivos con relación de aspecto cuadrada (exactamente el mismo ancho que alto), aplicar la siguiente regla: 
```css
figure {
    width: 80%;
    margin: 5px auto;
    padding: 5px;
    border: 1px solid #999;
    border-radius: 10px;
}
```

Bonus Tracks: 

9. Definir una media query que tenga 3 operadores lógicos.

#### TIP

Para el punto **4**, una forma de centrar puede ser:

```css
{
    display: block;
    margin-left: auto;
    margin-right: auto;
}
```

> **Atención**
> 
> - No está permitido el uso de estilos *inline*.
> - No modificar la estructura de las etiquetas HTML ya existentes.
> - No está permitido el uso de `!important`.
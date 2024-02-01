---
title: "3.6.2: Componentes de Bootstrap"
---

## Card

Las <a href="https://getbootstrap.com/docs/5.2/components/card/">cards</a> de Bootstrap son contenedores con bordes que incluye opciones para incluir distinto tipo de contenido en ellas. 

```html
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="..." alt="Imagen de tarjeta">
  <div class="card-body">
    <h5 class="card-title">Título</h5>
    <p class="card-text">Lorem ipsum dolor sit amet.</p>
    <a href="#" class="btn btn-primary">Btn</a>
  </div>
</div>
```

## Button

Se incluyen distintos estilos predefinidos de <a href="https://getbootstrap.com/docs/5.2/components/buttons/">botones</a>, cada uno con un propósito en la semántica.

Si bien estan diseñadas para usarse con la etiqueta `<button>`, se pueden emplear tambien con las etiquetas `<a>` o `<input>`

Se pueden emplear las clases `.active` (por defecto) o `.disabled` para alternar el estado del botón, estableciendo si este puede ser clickeado o no

```html
<button type="button" class="btn btn-primary">Primary</button>
<button type="button" class="btn btn-secondary">Secondary</button>
<button type="button" class="btn btn-success">Success</button>
<button type="button" class="btn btn-danger disabled">Danger</button>
<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-light">Light</button>
<button type="button" class="btn btn-dark">Dark</button>

<button type="button" class="btn btn-link">Link</button>
```

## Carousel

El <a href="https://getbootstrap.com/docs/5.2/components/carousel/">carrusel</a> es un componente para mostrar una serie de elementos de manera rotativa y automática en una página.

Existen distintos tipos de carrusel dependiendo de qué tanto control queramos darle al usuario sobre el mismo. Por defecto el carrusel ira alternando el contenido automáticamente.

```html
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <span>Slide 1</span>
    </div>
    <div class="carousel-item">
      <span>Slide 2</span>
    </div>
    <div class="carousel-item">
      <span>Slide 3</span>
    </div>
  </div>
</div>
```

*Tener en cuenta que uno de los slides deberá tener la clase `.active`, sino el carrusel no será visible*

## Colores

Los colores en Bootstrap se usan a partir de la semántica, transmitiendo su significado a partir de los nombres de clases utilizados.

- `primary` (Primario)
- `secondary` (Secundario)
- `success` (Éxito)
- `danger` (Peligro)
- `warning` (Advertencia)
- `info` (Información)

También tiene ciertas clases de colores más genéricos, para diferenciar visualmente contenido, pero sin una semántica especial asociada:

- `light` (Claro)
- `dark` (Oscuro)
- `white` (Blanco)
- `black` (Negro)
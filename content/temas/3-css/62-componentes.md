---
title: "3.6.2: Componentes de Bootstrap"
---

Los componentes de Bootstrap permiten crear interfaces de usuario responsivas de manera sencilla.

Algunos de los componentes que disponemos son:

## Card

Las [cards](https://getbootstrap.com/docs/5.3/components/card/) de Bootstrap se utiliza para mostrar contenido variado con un diseño consistente, incluyendo encabezados, pies de página, imágenes y texto.

```html
<div class="card">
  <img class="card-img-top" src="..." alt="Imagen de tarjeta">
  <div class="card-body">
    <h5 class="card-title">Título</h5>
    <p class="card-text">Lorem ipsum dolor sit amet.</p>
    <a href="#" class="btn btn-primary">Botón</a>
  </div>
</div>
```

## Button

Se incluyen distintos estilos predefinidos de [botones](https://getbootstrap.com/docs/5.3/components/buttons/), con diferencias en su aspecto visual y también en su semántica.

Aunque el componente se llama *button*, se puede usar también para elementos de tipo `<a>` además de `<button>`.

También se pueden emplear las clases `.active` para resaltar el botón y marcarlo como *activo* o `.disabled` para mostrarlo como desactivado.

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

El [carrusel](https://getbootstrap.com/docs/5.3/components/carousel) permite mostrar una serie de elementos como imágenes o contenido personalizado, con controles de navegación e indicadores para desplazarse entre los elementos de manera intuitiva y visualmente atractiva.

```html
<div class="carousel slide" data-bs-ride="carousel">
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

Los [colores](https://getbootstrap.com/docs/5.3/utilities/colors/) en Bootstrap se usan a partir de la semántica, transmitiendo su significado a partir de los nombres de clases utilizados.

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
---
title: "3.6: Bootstrap"
---

[Bootstrap](https://getbootstrap.com/) es un framework de desarrollo front-end ampliamente utilizado que proporciona un conjunto de herramientas y estilos predefinidos para agilizar y facilitar la creación de sitios web responsivos con un enfoque *mobile-first*. 

Se basa en HTML, CSS y JavaScript, y ofrece [componentes reutilizables](/temas/3-css/62-componentes/), [grillas flexibles](/temas/3-css/61-grilla/) y otras funcionalidades interactivas que permiten a los desarrolladores construir interfaces de usuario de manera rápida y eficiente.

## Separación entre `Contenedor` y `Contenido`

Al implementar interfaces responsivas con Bootstrap, se aplica una separación clara entre **contenedores** y **contenido**. Esta distinción es fundamental para lograr un diseño flexible. 

- Los *contenedores* en Bootstrap, como las clases `container` o `col`, definen el ancho y los límites del diseño en diferentes breakpoints. Estos contenedores establecen cuánto espacio ocupará el contenido en relación con el tamaño de la pantalla. 
- El *contenido* se adapta automáticamente al tamaño disponible dentro de los contenedores, ajustando su diseño y dimensiones para mantener una apariencia coherente en diferentes dispositivos. 

Esta separación permite que los elementos del sitio web, como imágenes, texto y componentes, se reorganicen y redimensionen según el tamaño de la pantalla, asegurando una experiencia de usuario correcta en dispositivos de distintas dimensiones.

## Instalación

- Instalación por CDN
    - Necesita de internet
    - Es responsabilidad de la CDN
- Instalación local
    - Puede funcionar sin internet
    - Es nuestra responsabilidad

Vimos cómo instalar en nuestros documentos. La instalación se refiere a la inclusión de 2 archivos en nuestro HTML, un archivo CSS y otro JS.

En la [documentación oficial](https://getbootstrap.com/docs/5.3/) hay un [ejemplo listo para arrancar](https://getbootstrap.com/docs/5.3/getting-started/introduction/#quick-start):

```html
<!doctype html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <h1>Hello, world!</h1>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
```

Lo importante es la inclusión de los archivos

```html
<link href="bootstrap.min.css" rel="stylesheet">
<script src="bootstrap.bundle.min.js"></script>
```

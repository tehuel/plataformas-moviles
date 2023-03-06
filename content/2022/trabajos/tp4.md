---
title: "TP4 - Bootstrap"
---

Cuarto Trabajo Práctico, donde vamos a aplicar técnicas de diseño responsivo usando Bootstrap.

## Fecha de Entrega

Lunes 16 de Mayo. Lo vamos a revisar durante la clase del 9 de Mayo.

## Consigna

### 1 - Archivos Nuevos

Dentro del repositorio de entregas de trabajos prácticos, en una nueva carpeta `tp-4/` crear tres nuevos archivos HTML con el siguiente contenido:

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>TP4 - Bootstrap - Layout N</title>
  <style type="text/css">
    .section { padding: 2em 0 }
    .section-1 { background-color: #CA9F77;}
    .section-2 { background-color: #CBC168;}
    .section-3 { background-color: #A3C55B;}
    .section-4 { background-color: #76D179;}
    .section-5 { background-color: #85E3C1;}
    .section-6 { background-color: #79BFE5;}
  </style>
</head>
<body>
  <div class="section section-1">sección 1</div>
  <div class="section section-2">sección 2</div>
  <div class="section section-3">sección 3</div>
  <div class="section section-4">sección 4</div>
  <div class="section section-5">sección 5</div>
  <div class="section section-6">sección 6</div>
</body>
</html>
```

A los nuevos archivos crearlos con los nombres `tp-4/layout-1.html`, `tp-4/layout-2.html` y `tp-4/layout-3.html`. Todos los archivos deben quedar con distinto nombre, pero el mismo contenido.

Además crear un archivo en `tp-4/index.html`, con un listado de links a los demás archivos.

### 2 - Instalación de Bootstrap

En cada uno de los 3 archivos layout.html, instalar bootstrap de alguna de las 2 formas vistas en clase. 

Opcionalmente se puede instalar también algun tema de bootswatch.

### 3 - Layout con Grilla

Agregar los elementos de grilla de bootstrap necesarios para que la página se comporte de una manera similar a la que se muestra en cada una de las siguientes imágenes de layout:

1. ![layout 1](/img/layout-1.png)
2. ![layout 2](/img/layout-2.png)
3. ![layout 3](/img/layout-3.png)

> 🧐 Aclaraciones: 
> - Cada imagen representa un mismo layout en 3 breakpoints distintos, por ejemplo: `xs` para el primero, `sm` para el segundo y `md` para el tercero.
> - No es necesario preocuparse por el tamaño de márgenes ni de gutters entre columnas, ni tampoco respetar exactamente (pixel perfect) los tamaños de las cajas de la imagen.


### 4 - Bonus Tracks: 

- Eliminar el gutter para que las columnas queden pegadas como en las imágenes de referencia.

- Agregar un 4to breakpoint para pantallas más grandes a algún layout.

> ⚠️ **Atención**
> 
> - No está permitido el uso de estilos *inline*.
> - No se pueden eliminar los elementos HTML ya existentes, pero se pueden agregar todos los elementos necesarios para que el layout funcione.
> - No está permitido el uso de `!important`.

---
title: "3.6.1: Grilla de Bootstrap"
---

La grilla de Bootstrap es un sistema de diseño que permite estructurar el contenido en sitios web. Está compuesta por filas y columnas, donde las filas representan el contenedor principal y las columnas se utilizan para dividir el espacio horizontalmente. La grilla de Bootstrap utiliza un sistema de **12 columnas**.

![](/img/12-grid.png)

Las columnas en Bootstrap se dividen en diferentes "porciones" utilizando clases predefinidas, como `col-nn` donde `nn` representa el número de columnas que ocupará. Por ejemplo, una columna con la clase `col-6` ocupará la mitad del ancho disponible en una fila, mientras que una columna con la clase `col-12` ocupará todo el ancho de la fila.

Además, se pueden usar columnas en diferentes breakpoints. Estas clases responsivas, como `col-sm-nn`, `col-md-nn` y `col-lg-nn`, permiten definir diferentes tamaños de columnas para adaptarse a las distintas resoluciones de pantalla.

## Breakpoints y Responsividad

// ...

## Ejemplo: Botón Responsivo

Ejemplo para poder hacer "aparecer y desaparecer" un botón, pero se puede aplicar para distintos elementos o secciones de una página.

```html
<button type="button" class="btn btn-primary d-none d-sm-block">
    Pantalla Grande
</button>

<button type="button" class="btn btn-secondary d-sm-none">
    BTN
</button>
```
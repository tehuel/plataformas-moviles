---
title: "3.6.1: Grilla de Bootstrap"
---

La grilla de Bootstrap es un sistema de diseño que permite estructurar el contenido en sitios web. Está compuesta por filas y columnas, donde las filas representan el contenedor principal y las columnas se utilizan para dividir el espacio horizontalmente. La grilla de Bootstrap utiliza un sistema de **12 columnas**.

![](/img/12-grid.png)

Las columnas en Bootstrap se dividen en diferentes "porciones" utilizando clases predefinidas, como `col-nn` donde `nn` representa el número de columnas que ocupará. Por ejemplo, una columna con la clase `col-6` ocupará la mitad del ancho disponible en una fila, mientras que una columna con la clase `col-12` ocupará todo el ancho de la fila.

Además, se pueden usar columnas en diferentes breakpoints. Estas clases responsivas, como `col-sm-nn`, `col-md-nn` y `col-lg-nn`, permiten definir diferentes tamaños de columnas para adaptarse a las distintas resoluciones de pantalla.

> **Nota**: Existe la posibilidad de dejar que las columnas tomen un tamaño de manera automática usando sólo la clase `col` (sin especificar un tamaño), pero en este curso vamos a preferir ser siempre explícitos con el tamaño para tener un mejor control de los resultados.

## Breakpoints y Responsividad

La responsividad permite que el diseño web se adapte a los diferentes tamaños que pueda tener el navegador. No es lo mismo ver un sitio web (Ej: Youtube) desde el navegador del celular que hacerlo desde la computadora, los elementos se adaptan a las medidas de la pantalla.

![](/img/responsive-clipart.gif)

Los breakpoints son medidas predefinidas de tamaño en donde se realizan cambios en el diseño CSS concretos para estas medidas. Los breakpoints de bootstrap son:

| Breakpoint | Infijo | Dimensión |
|---|---|---|
Extra small | Ninguno | <576px
Small | `sm` | ≥576px
Medium | `md` | ≥768px
Large | `lg` | ≥992px
Extra large | `xl` | ≥1200px
Extra extra large | `xxl` | ≥1400px
{.table}

Empleando estos elementos nos aseguramos que nuestro diseño se adaptará a cualquier dispositivo.

## Diagrama de Breakpoints

```goat
XS ---------------------------------------------------->
        SM -------------------------------------------->
                MD ------------------------------------>
                        LG ---------------------------->
                                XL -------------------->
                                        XXL ----------->
 |       |       |       |       |       |
 +-------+-------+-------+-------+-------+--------------
```

Podemos ver como los breakpoints más grandes se van "apilando" para tapar breakpoints anteriores.

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
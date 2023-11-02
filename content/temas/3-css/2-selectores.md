---
title: "3.2: Selectores"
---

Vimos algunos de los selectores que se pueden usar en CSS:

Selector de Etiqueta

```css
/* selecciona todos los elementos <p> del documento html */
p {
    /**/
}
```

Selector de Clase

```css
/* selecciona todos los elementos del documento html con la clase "elemento" */
.elemento {
    /**/
}
```

Selector de ID

```css
/* selecciona todos los elementos con el id "elemento" */
#elemento {
    /**/
}
```

Selector Universal

```css
/* selecciona todos los elementos */
* {
    /**/
}
```

## Combinación de Selectores

Podemos unir varios selectores para combinar su funcionamiento. Por ejemplo, para seleccionar todos los párrafos que tengan la clase "resaltado", podemos hacer:

```css
/* selecciona todos los párrafos que tengan la case "resaltado" */
p.resaltado {
    /**/
}
```

Si unimos con un espacio varios selectores, estamos pidiendo que exista una relación de parentezco entre los elementos. Podemos, por ejemplo, seleccionar todos los párrafos `<p>` que sean descendientes de algún elemento `<div>`.

```css
/* selecciona todos los párrafos que tengan algun ancestro div */
div p {
    /**/
}
```

Para más detalles se puede consultar la documentación de [Combinadores de CSS](https://developer.mozilla.org/es/docs/Learn/CSS/Building_blocks/Selectors/Combinators) en MDN

## Pseudo Clases

Existen selectores qeu trabajan sobre otros selectores, para funcionar en casos y estados específicos.

Vimos algunos ejemplos para consultar por el primer y el último elemento, pero hay [muchos más](https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes)

---
title: "3.1: Sintáxis"
---

## Puesta en Marcha

Vimos distintas maneras de incluir CSS en un archivo HTML:

- Usando una etiqueta `<link>` dentro del `<head>` de un documento HTML.
- Usando una etiqueta `<style>` dentro del `<head>` o del `<body>` de un documento HTML.
- Agregando un atributo `style=""` a una etiqueta HTML directamente, esto se conoce como estilo *inline* (en linea)

## Lenguaje CSS

Sintaxis de CSS, con los nombres apropiados:

![](/img/regla-css.png)

Comentamos que el procesamiento de CSS se hace en orden, lo que se escribe último pisa a lo que se escribe primero. 

Vimos y presentamos algunos selectores, aunque para un listado más completo se puede consultar la [documentación de referencia de selectores](https://developer.mozilla.org/es/docs/Learn/CSS/Building_blocks/Selectors), y también la [documentación de referencia del lenguaje CSS completo](https://developer.mozilla.org/es/docs/Web/CSS/Reference).

## Ejemplos

Una demostración concreta la capacidad y flexibilidad de CSS es la posibilidad de aplicar estilos completamente distintos a un mismo documento HTML, sin modificar su estructura. Podemos usar algunos sitios web como ejemplos:

- [CSS Zen Garden](https://csszengarden.com/): Proyecto pionero que propone un único archivo HTML inmutable al que distintos diseñadores aplican hojas de estilo personalizadas, generando resultados visuales radicalmente distintos. Su objetivo es destacar el alcance del diseño web basado únicamente en CSS.
- [Style Stage](https://stylestage.dev/): Iniciativa moderna inspirada en CSS Zen Garden, que mantiene un HTML base y fomenta la participación de la comunidad a través del envío de hojas de estilo.

Estos sitios demuestran que el contenido y la presentación pueden mantenerse desacoplados, poniendo en práctica uno de los principios fundamentales del desarrollo web: la separación entre estructura (HTML) y estilo (CSS).

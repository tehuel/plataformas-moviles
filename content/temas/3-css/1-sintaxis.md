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

Una forma muy clara de ver lo que se puede hacer con CSS es comparar cómo un mismo archivo HTML puede verse de maneras totalmente distintas solo cambiando el CSS. Hay algunos sitios que muestran esto de forma muy visual:

- [CSS Zen Garden](https://csszengarden.com/): Un proyecto que existe desde 2003, donde se usa siempre el mismo HTML y distintos diseñadores crean estilos completamente diferentes usando solo CSS.
- [Style Stage](https://stylestage.dev/): Un sitio más moderno, inspirado en CSS Zen Garden, que también usa un HTML fijo y permite enviar hojas de estilo a través de GitHub para cambiar el diseño.

Estos ejemplos muestran cómo el contenido y el diseño pueden ir separados, algo clave en desarrollo web.

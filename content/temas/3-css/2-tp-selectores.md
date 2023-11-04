---
title: "3.2: TP Selectores"
---

Segundo Trabajo Práctico, donde ponemos en marcha la implementación de selectores en CSS.

## Consigna

Agregar el siguiente archivo HTML dentro del repositorio de entregas creado en el trabajo práctico anterior, en la ubicación `/tp-2/index.html`.

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TP2 - Selectores CSS</title>
</head>
<body>
    <h1>Star Wars</h1>
    <p><strong>Star Wars</strong>, conocida también en español como <strong>La guerra de las galaxias</strong>, es una franquicia compuesta primordialmente de una serie de películas concebidas por el cineasta estadounidense George Lucas en la década de 1970, y producidas y distribuidas por <a>The Walt Disney Company</a> a partir de 2012.</p>
    <p>Su trama describe las vivencias de un grupo de personajes que habitan en una galaxia ficticia e interactúan con elementos como <span class="the-force">«la Fuerza»</span>, un campo de energía metafísico y omnipresente que posee un <span class="the-force light-side">«lado luminoso»</span> impulsado por la sabiduría, la nobleza y la justicia y utilizado por los Jedi, y un <span class="the-force dark-side">«lado oscuro»</span> usado por los Sith y provocado por la ira, el miedo y el odio.</p>
    <h2>Películas</h2>
    <h3>Trilogía Original</h3>
    <ul id="og-trilogy" class="movies-list">
        <li><a href="https://es.wikipedia.org/wiki/Star_Wars:_Episodio_IV_-_Una_nueva_esperanza">Star Wars: Episodio IV - Una nueva esperanza</a></li>
        <li><a href="https://es.wikipedia.org/wiki/Star_Wars:_Episodio_V_-_El_Imperio_contraataca">Star Wars: Episodio V - El Imperio contraataca</a></li>
        <li><a href="https://es.wikipedia.org/wiki/Star_Wars:_Episode_VI_-_Return_of_the_Jedi">Star Wars: Episode VI - El retorno del Jedi</a></li>
    </ul>
    <h3>Trilogía de precuelas</h3>
    <ul class="movies-list">
        <li><a href="https://es.wikipedia.org/wiki/Star_Wars:_Episodio_I_-_La_amenaza_fantasma">Star Wars: Episodio I - La amenaza fantasma</a></li>
        <li><a href="https://es.wikipedia.org/wiki/Star_Wars:_Episodio_II_-_El_ataque_de_los_clones">Star Wars: Episodio II - El ataque de los clones</a></li>
        <li><a href="https://es.wikipedia.org/wiki/Star_Wars:_Episodio_III_-_La_venganza_de_los_Sith">Star Wars: Episodio III - La venganza de los Sith</a></li>
    </ul>
    <h3>Trilogía de secuelas</h3>
    <ul class="movies-list">
        <li><a href="https://es.wikipedia.org/wiki/Star_Wars:_Episodio_VII_-_El_despertar_de_la_Fuerza">Star Wars: Episodio VII - El despertar de la Fuerza</a></li>
        <li><a href="https://es.wikipedia.org/wiki/Star_Wars:_Episodio_VIII_-_Los_últimos_Jedi">Star Wars: Episodio VIII - Los últimos Jedi</a></li>
        <li><a href="https://es.wikipedia.org/wiki/Star_Wars:_Episodio_IX_-_El_ascenso_de_Skywalker">Star Wars: Episodio IX - El ascenso de Skywalker</a></li>
    </ul>
    <p>Fuente: <a href="https://es.wikipedia.org/wiki/Star_Wars">Wikipedia</a></p>
</body>
</html>
```

También modificar el archivo `/index.html` (en la raiz del repositorio) para incluir un link a este nuevo `/tp-2/index.html` recién creado.

Para este nuevo archivo HTML creado, agregar una hoja de estilos CSS de alguna de las siguientes maneras vistas en clase:

- Usando un elemento `<link>` dentro del `<head></head>` del documento.
- Usando un elemento `<style></style>` dentro del documento.

## Estilos dentro de CSS

Dentro del estilo, implementar las definiciones para aplicar los siguientes estilos:

1. Agregar una regla para definir el color de fondo del documento en `#222`, y el color del texto en `#ee6`.
2. Agregar una regla para centrar el título principal del documento.
3. Mostrar todos los párrafos con una fuente `sans-serif`.
4. Agregar una regla para mostrar en color `#eee` todos los títulos del documento.
5. Agregar un borde inferior color blanco a todos los elementos `<strong>`.
6. Mostrar el fondo gris `#444` y el texto en negrita para todos los elementos con la clase `the-force`.
7. Mostrar el texto con color `#66f` para los elementos con la clase `light-side`, y color `#f33` para la clase `dark-side`.
8. Agregar la regla `list-style-type: circle;` al listado con ID `og-trilogy`.
9. Agregar `padding-left` al segundo listado de películas.
10. Agregar `margin-top` al último elemento del tercer listado de películas.

Bonus Tracks: 

11. Hacer que todos los títulos muestren su texto en mayúscula
12. Hacer que la primera linea del primer párrafo se muestre color `#efe`
13. Hacer que el título principal cambie de color cuando se pasa el puntero por encima.
14. Hacer que los links visitados cambien a color gris.
15. Mostrar los links sin atributo `href` en cursiva.
16. Mostrar de manera alternada el color de fondo de cada uno de los elementos de los listados de películas entre `#111` y `333`.

> **Atención**
> 
> - No está permitido el uso de estilos *inline*.
> - No modificar la estructura de las etiquetas HTML ya existentes.
> - No está permitido el uso de `!important`.
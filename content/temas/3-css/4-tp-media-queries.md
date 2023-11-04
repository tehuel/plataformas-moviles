---
title: "3.4: TP Media Queries"
---

Cuarto trabajo práctico, todavía con CSS. En este trabajo vamos a empezar a definir estilos de una forma condicional, usando media queries.

# Consigna

Agregar el siguiente **archivo HTML** dentro del repositorio de entregas, en la ubicación `/tp-4/index.html`.

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TP4 - CSS Media Queries</title>
    <link rel="stylesheet" href="style.css">
    <style>
        * {margin: 0;padding: 0;}
        body {margin: 1rem;background-color: #012;color: #e6e8ff;font-family: ui-monospace, 'Cascadia Code', 'Source Code Pro', Menlo, Consolas, 'DejaVu Sans Mono', monospace;}
        article {margin: 0 auto}
        a {color: #A06CD5}
        a:visited { color: #E2CFEA}
        p {margin: 1rem 0;}
        figure {text-align: center;}
        img {display: block;max-width: 100%;height: auto;margin: 0 auto;border-radius: 10px;}
    </style>
</head>
<body>
    <article>
        <h1>Armored Core</h1>
        <p><a href="">Armored Core</a> es una serie de juegos de <a href="https://es.wikipedia.org/wiki/Mecha_(ciencia_ficción)">mechas</a> en tercera persona desarrollada por FromSoftware. La serie se centra en la construcción y personalización de mechas llamados "Armored Cores", que los jugadores utilizan para cumplir misiones en un futuro <a href="https://es.wikipedia.org/wiki/Distopía">distópico</a>.</p>
        <figure>
            <img src="https://plataformas-moviles.vercel.app/img/armored-core-6.jpg" alt="Armored Core 6 Screen">
            <figcaption>Screenshot del <a href="https://www.youtube.com/watch?v=kKO1s-CUZvY">Reveal Trailer</a> de Armored Core 6</figcaption>
        </figure>
        <p>La serie de juegos ha sido elogiada por su jugabilidad intensa y personalizable, permitiendo a los jugadores construir sus mechas con <a href="https://armoredcore.fandom.com/wiki/List_of_First_Generation_Parts">diferentes piezas</a> y armas, y personalizar su apariencia. La historia de la serie también ha sido destacada, así como la toma de decisiones del jugador y la sensación de libertad y control que se otorga.</p>    
    </article>
</body>
</html>
```

# Reglas

Crear en el repositorio de Github un **archivo CSS** `style.css` al mismo nivel que el archivo HTML anterior, esto sería en `/tp-4/style.css`. Dentro de este archivo, implementar las siguientes reglas de CSS, con sus respectivas media queries.

1. Define una media query que cambie el fondo del `body` a `#234` cuando la pantalla tenga más de `400px` de ancho.

2. Define una media query que centre el título `h1` cuando la pantalla tenga menos de `800px` de ancho.

3. Define una media query para que el ancho máximo (`max-width`) del `article` sea `50ch` cuando el dispositivo tiene una pantalla orientada en horizontal (más espacio de ancho que de alto).

4. Define una media query para que cambie el color de fondo del título principal `h1` cuando el alto de la pantalla sea como mínimo `200px`.

5. Define una media query para cambiar el estilo del texto de todos los párrafos para que muestren una fuente `font-family: sans-serif;` cuando la página se imprime (en papel).

6. Si el usuario prefiere un estilo de colores claros, mostrar los elementos `body` y `h1` con el texto en color `#111` y el fondo en color `#DDD`.

7. Si el dispositivo del usuario es una pantalla y además no soporta la acción hover, mostrar los links con color de fondo `#212` y con un `padding` vertical de `2px` y horizontal de `5px`.

8. Si el dispositivo es una pantalla, y tiene `800px` o más de ancho, pero menos de `900px`, la imagen no se tiene que mostrar.

9. Si el dispositivo es una pantalla, y tiene entre `200px` y `400px` de ancho, mostrar la imagen con un alto de `400px`, y con el siguiente estilo: `object-fit: cover;`.

10. Define una query para que el color de fondo del elemento `article` cambie a `#667` cuando el Device Pixel Ratio de la pantalla del dispositivo sea mayor a 2. Ayuda: media query `resolution`, con una unidad expresada en `dppx`.
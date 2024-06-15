---
title: "3.4: tp-4 (Media Queries)"
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
    * {margin: 0; padding: 0;}
    body {margin: 1rem; background-color: #012; color: #e6e8ff; font-family: ui-monospace, 'Cascadia Code', 'Source Code Pro', Menlo, Consolas, 'DejaVu Sans Mono', monospace;}
    article {margin: 0 auto}
    a {color: #A06CD5}
    a:visited {color: #E2CFEA}
    p {margin: 1rem 0;}
    figure {text-align: center;}
    img {display: block; max-width: 100%; height: auto; margin: 0 auto; border-radius: 10px;}
  </style>
</head>
<body>
  <article>
    <h1>Del videojuego a la pantalla grande</h1>
    <p>
      Cada vez son más los videojuegos que tienen una adaptación cinematográfica. Estos últimos años se han visto en el cine títulos como <a href="https://es.wikipedia.org/wiki/Sonic,_la_pel%C3%ADcula">Sonic</a> o <a href="https://es.wikipedia.org/wiki/Pokémon:_Detective_Pikachu">Detective Pikachu</a> y se espera que en los próximos años esta tendencia se mantenga, con los rumores de películas de <a href="https://es.wikipedia.org/wiki/God_of_War_(franquicia)">God of War</a> y <a href="https://es.wikipedia.org/wiki/Street_Fighter">Street Fighter</a>.
    </p>
    <p>
      Sin embargo hay una en particular que llama mucho la atención, pues estamos hablando de nada más y nada menos que la película del famoso videojuego <a href="https://es.wikipedia.org/wiki/Minecraft">Minecraft</a>.
    </p>
    <p>
      Los planes para esta adaptación cinematográfica comenzaron en febrero de 2014 cuando <a href="https://es.wikipedia.org/wiki/Markus_Persson">Markus Persson</a> reveló que Mojang estaba en conversaciones con <a href="https://es.wikipedia.org/wiki/Warner_Bros.">Warner Bros</a> para el proyecto. El rodaje comenzó a mediados de enero de 2024 en Nueva Zelanda y se espera que la obra se estrene el 4 de abril de 2025.
    </p>
    <figure>
      <img src="https://plataformas-moviles.vercel.app/img/minecraft.jpg" alt="Minecraft Cover">
      <figcaption>Portada del Minecraft</figcaption>
    </figure>
    <p>La película tratará de una adolescente que intentará salvar el <a href="https://minecraft.fandom.com/es/wiki/Superficie">Overwolrd</a> del <a href="https://minecraft.fandom.com/es/wiki/Enderdragón">Enderdragon</a></p>
  </article>
</body>
</html>
```

# Reglas

Crear en el repositorio de Github un **archivo CSS** `style.css` al mismo nivel que el archivo HTML anterior, esto sería en `/tp-4/style.css`. Dentro de este archivo, implementar las siguientes reglas de CSS, con sus respectivas media queries.

1. Define una media query que cambie el color de fondo del `body` a `rgb(40,60,80)` cuando la pantalla tenga más de `400px` de ancho.

2. Define una media query que centre el título `h1` cuando la pantalla tenga menos de `800px` de ancho.

3. Define una media query para que el ancho máximo (`max-width`) del `article` sea `50ch` cuando el dispositivo tiene una pantalla orientada en horizontal (más espacio de ancho que de alto).

4. Define una media query para que cambie el color de fondo del título principal `h1` cuando el alto de la pantalla sea como mínimo `200px`.

5. Define una media query para cambiar el estilo del texto de todos los párrafos para que muestren una fuente `font-family: serif;` cuando la página se imprime (en papel).

6. Si el usuario prefiere un estilo de colores claros, mostrar los elementos `body` y `h1` con el texto en color `#111` y el fondo en color `#DDD`.

7. Si el dispositivo del usuario es una pantalla y además no soporta la acción hover, mostrar los links con color de fondo `#212` y con un `padding` vertical de `2px` y horizontal de `5px`.

8. Si el dispositivo es una pantalla, y tiene `800px` o más de ancho, pero menos de `900px`, la imagen no se tiene que mostrar.

9. Si el dispositivo es una pantalla, y tiene entre `200px` y `400px` de ancho, mostrar la imagen con un alto de `400px`, y con el siguiente estilo: `object-fit: cover;`.

10. Define una query para que el color de fondo del elemento `article` cambie a `#667` cuando el Device Pixel Ratio de la pantalla del dispositivo sea mayor a 2. Ayuda: media query `resolution`, con una unidad expresada en `dppx`.
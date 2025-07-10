---
title: "6.5: tp-16 (APIs)"
tags: "tp"
---

El objetivo es construir una aplicación con HTML + CSS (con Bootstrap) + JS, que consuma recursos de alguna API.

Para este trabajo deben elegir una de las siguientes dos opciones:

1. Usar la [PokeApi](https://pokeapi.co/docs/v2)
2. Usar [TheMealDB](https://www.themealdb.com/api.php)

## PokeApi

La [PokeApi](https://pokeapi.co/docs/v2) es una API de Pokemon que permite obtener información sobre Pokemon, sus movimientos, sus tipos, etc.

Para este proyecto deberán crear una "[PokéDex](https://pokemon.fandom.com/es/wiki/Pok%C3%A9dex)", con la información que podemos obtener a partir de la API.

**Objetivos:**

1. La aplicación deberá mostrar un listado de los nombres de los primeros 151 pokémon
2. Para cada pokémon, agregar un botón que permita ver información adicional del mismo. Dicha información puede incluir:
   1. Tipos
   2. Al menos una habilidad / Al menos cuatro movimientos
   3. Foto

**Power Ups:**

1. Reemplazar el listado por una grilla de cartas (responsiva), donde cada carta tenga el nombre, la imagen y los tipos del pokémon. El botón para mostrar más información debería seguir estando.
2. Agregar un botón al final del listado que nos permita visualizar más pokemon, ademas de los 151 mostrados inicialmente.
3. Agregar *spinner* para mostrar estado de "loading".

## TheMealDB

[TheMealDB](https://www.themealdb.com/api.php) es una API que nos ofrece distinta información sobre comidas.

Para este proyecto deberán crear una aplicación de "Recetario", con la información que obtengamos de la API.

**Objetivos:**

1. La página deberá tener un listado de recetas chinas
2. De cada receta en el listado nos interesa poder visualizar su nombre.
3. Para cada receta del listado, agregar un botón que permita ver información adicional de la misma. Dicha información puede incluir:
   1. Nombre
   2. Descripción
   3. Ingredientes
   4. Pasos
   5. Foto

**Final Boss:**

1. Reemplazar el listado por una grilla de cartas (responsiva), donde cada carta tenga el nombre y su imagen. El botón para mostrar más información debería seguir estando.
2. Agregar botones que nos permitan ver, además de comida china, recetas italianas y americanas.
3. Agregar *spinner* para mostrar estado de "loading".

## Entrega

Para la entrega del trabajo, crear un directorio `tp-16/` en su repositorio de entregas, y subir un archivo como `tp-16/index.html`, junto con los archivos js y css correspondientes.


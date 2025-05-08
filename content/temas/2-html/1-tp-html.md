---
title: "2.1: tp-1 (HTML)"
tags: "tp"
---

# Objetivo

Crear un archivo HTML estructurado correctamente a partir de un artículo de Wikipedia, aplicando etiquetas semánticas y respetando la jerarquía del contenido.

# Formato de Entrega

- Crear un archivo HTML en la ruta `/tp-1/index.html`.
- Subir el archivo al repositorio de entregas de la materia.
- Comprobar que sea accesible vía GitHub Pages en una dirección de la forma `https://{usuario}.github.io/{repositorio}/tp-1/index.html`.


# Consigna

## 1. Seleccionar un Artículo de la Wikipedia

Se puede elegir cualquier artículo de interés dentro de la Wikipedia. 

Otra opción es usar este link para navegar hacia un artículo aleatorio: https://es.wikipedia.org/wiki/Special:Random

## 2. Copiar el contenido

Pegar el contenido como texto plano en el archivo HTML creado.

<div class="card text-bg-warning">
  <div class="card-body">
    No copiar el código HTML de wikipedia, sólo copiar el contenido en formato texto plano
  </div>
</div>

## 3. Estructurar el contenido con HTML

- Agregar las etiquetas HTML adecuadas para mantener la jerarquía y semántica adecuada al documento:
  - **Encabezados**: Usar etiquetas [`<h1>` a `<h6>`](https://developer.mozilla.org/es/docs/Web/HTML/Element/Heading_Elements), según corresponda.
  - **Resaltados**: Conservar los énfasis y resaltados originales con [`<strong>`](https://developer.mozilla.org/es/docs/Web/HTML/Element/strong) y [`<em>`](https://developer.mozilla.org/es/docs/Web/HTML/Element/em). 
  - **Variedad de Etiquetas**: No limitarse a `<p>`s y `<h1>`s, intentar incluir elementos como:
    - Enlaces (`<a>`) para referencias o secciones internas.
    - Imágenes (`<img>`) si el artículo original las tiene.
    - Listas (`<ul>`, `<ol>`, `<dl>`) si hay información en formato de lista.
    - Tablas (`<table>`) si el artículo contiene datos tabulares.
    - Otros elementos semánticos adecuados (`<blockquote>`, `<cite>`, `<code>`, etc.).

## 4. Pensar en la estructura, no en el diseño

- No es necesario aplicar estilos.
- No hay que pensar en el aspecto visual del documento.

## 5. Agregar un enlace al artículo original

Al final del documento incluir un enlace `<a>` que apunte hacia el articulo de wikipdia usado como fuente.

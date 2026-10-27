---
title: "6.6: tp-16 (APIs)"
tags: "tp"
---

El objetivo es construir una aplicación con HTML + CSS (con Bootstrap) + JS, que consuma recursos de una API HTTP pública, aplicando el patrón de **listado y detalle**.

Para este trabajo utilizaremos la **[Dragon Ball API](https://dragonball-api.com/)** ([ver documentación oficial en español](https://dragonball-api.com/docs)).

## Objetivos principales

1. **Listado de personajes**: La página debe mostrar inicialmente un conjunto de personajes organizados en una grilla de cartas responsivas (usando las clases de Bootstrap).
   - Cada carta debe incluir:
     - Nombre (`name`)
     - Imagen (`image`)
     - Raza (`race`)
     - Ki básico o máximo (`ki` / `maxKi`)
2. **Botón de detalle**: Cada carta debe tener un botón (por ejemplo, *"Ver detalles"* o *"Ver planeta"*).
3. **Consulta de detalle obligatoria**: Al hacer clic en el botón de un personaje, la aplicación debe consultar el endpoint de detalle por ID para obtener y mostrar la información de su **planeta de origen** (`originPlanet`):
   - Nombre del planeta (`name`)
   - Imagen del planeta (`image`)
   - Descripción del planeta (`description`)
4. **Visualización del detalle**: La información del planeta puede mostrarse en un **Modal de Bootstrap** (recomendado), en un panel lateral (*offcanvas*) o en una sección dedicada de la página.

## Power Ups

1. **Evoluciones y transformaciones**: En el detalle del personaje, además de los datos del planeta, mostrar el listado de sus transformaciones (`transformations`), incluyendo el nombre de cada fase, su nivel de poder y su foto.
2. **Paginación**: Agregar botones para navegar entre páginas ("Página siguiente / anterior") o un botón "Cargar más personajes" al final del listado, usando los parámetros `page` y `limit` de la API.
3. **Buscador o filtros**: Agregar un campo de texto para buscar personajes por nombre (`?name=...`) o botones para filtrar por raza (`race`) o género (`gender`).
4. **Feedback visual (Loading)**: Mostrar un *spinner* de Bootstrap mientras los datos se están descargando (tanto al cargar la grilla como al abrir el detalle).

## Entrega

Para la entrega del trabajo, crear un directorio `tp-16/` en su repositorio de entregas, y subir un archivo `tp-16/index.html`, junto con los archivos JS y CSS correspondientes.

---

## Detalles adicionales

<details>
    <summary>Endpoints a utilizar</summary>

- **Listado inicial**: podés pedir una cantidad determinada de personajes con:
  ```bash
  https://dragonball-api.com/api/characters?page=1&limit=10
  ```
  La respuesta devuelve un objeto con la propiedad `items` (el arreglo de personajes) y `meta` (datos de paginación).

- **Detalle de un personaje**: con el `id` obtenido en el listado, consultás su ficha completa:
  ```bash
  https://dragonball-api.com/api/characters/{id}
  ```
  Ejemplo para Goku: `https://dragonball-api.com/api/characters/1`

</details>

<details>
    <summary>Estructura del planeta y casos especiales</summary>

En el endpoint de detalle, la propiedad `originPlanet` viene con el siguiente formato:

```json
{
  "id": 1,
  "name": "Planeta Vegeta",
  "isDestroyed": true,
  "description": "Planeta natal de la raza Saiyan...",
  "image": "https://dragonball-api.com/planets/Planeta_Vegeta_en_Dragon_Ball_Super.webp"
}
```

> **Atención**: algunos personajes no tienen un planeta natal asignado en la serie (por ejemplo, algunos androides o seres del inframundo). En esos casos, la propiedad `originPlanet` puede ser `null`. Tu código debe contemplar ese caso (por ejemplo, mostrando un texto que diga *"Planeta de origen desconocido"*) para evitar errores al intentar acceder a `originPlanet.name`.

</details>

<details>
    <summary>Modal de Bootstrap con datos dinámicos</summary>

Para mostrar el detalle en un modal de Bootstrap sin recargar la página:
1. Podés colocar un único `<div class="modal fade" id="modalDetalle" ...>` en el HTML.
2. Al hacer clic en el botón de una tarjeta, ejecutás tu función `async`, mostrás el spinner, hacés el `fetch` con el `id` del personaje correspondiente, inyectás los datos del planeta en el modal con `innerText` / `src`, y finalmente lo abrís usando la API de Bootstrap:
   ```js
   const modal = new bootstrap.Modal(document.getElementById('modalDetalle'));
   modal.show();
   ```

</details>

<details>
    <summary>Manejo de errores con try / catch</summary>

En este curso no profundizamos en el manejo avanzado de excepciones, por lo que no es un requisito para el trabajo. Sin embargo, en aplicaciones reales es una buena práctica envolver las llamadas a `fetch()` en un bloque `try / catch` para detectar si el usuario se quedó sin internet o si el servidor está caído:

```js
try {
    const respuesta = await fetch("https://dragonball-api.com/api/characters/1");
    const personaje = await respuesta.json();
    console.log(personaje);
} catch (error) {
    console.error("No se pudo conectar con la API:", error);
    alert("Ocurrió un problema de conexión. Probá nuevamente.");
}
```

</details>

---
title: "6.6: tp-16 (APIs)"
tags: "tp"
---

Construir una aplicación web con HTML, CSS (Bootstrap) y JavaScript que consuma la **[Dragon Ball API](https://dragonball-api.com/)** ([documentación oficial](https://dragonball-api.com/docs)) implementando el patrón de **listado y detalle**.

## Requisitos

1. **Listado de personajes**: mostrar una grilla de tarjetas responsivas con Bootstrap. Cada tarjeta debe incluir:
   - Nombre (`name`)
   - Imagen (`image`)
   - Raza (`race`)
   - Ki (`ki` o `maxKi`)
   - Botón para ver más información.
2. **Detalle**: al hacer clic en el botón de un personaje, consultar su endpoint por ID (`/api/characters/{id}`) y mostrar los datos de su **planeta de origen** (`originPlanet`):
   - Nombre (`name`)
   - Imagen (`image`)
   - Descripción (`description`)
   La información puede mostrarse en un Modal de Bootstrap, un panel lateral (*offcanvas*) o una sección dedicada.

## Opcionales (Power Ups)

1. **Transformaciones**: mostrar en el detalle el listado de evoluciones (`transformations`) con su nombre, nivel de poder y foto.
2. **Paginación**: controles para navegar entre páginas o botón "Cargar más", usando los parámetros `page` y `limit`.
3. **Buscador / Filtros**: filtrar personajes por nombre (`?name=...`), raza o género.
4. **Spinner de carga**: mostrar un indicador de carga mientras se esperan las respuestas de la API.

## Entrega

Crear la carpeta `tp-16/` en el repositorio de entregas con `index.html` y los archivos CSS y JS correspondientes.

---

## Detalles adicionales

<details>
    <summary>Endpoints de la API</summary>

- **Listado**: `https://dragonball-api.com/api/characters?page=1&limit=10`
  Devuelve un objeto con la lista en `items` y los datos de paginación en `meta`.
- **Detalle por ID**: `https://dragonball-api.com/api/characters/{id}`
  Ejemplo: `https://dragonball-api.com/api/characters/1`

</details>

<details>
    <summary>Estructura de originPlanet y personajes sin planeta</summary>

En el detalle, `originPlanet` tiene la siguiente estructura:

```json
{
  "id": 1,
  "name": "Planeta Vegeta",
  "description": "Planeta natal de la raza Saiyan...",
  "image": "https://dragonball-api.com/planets/Planeta_Vegeta_en_Dragon_Ball_Super.webp"
}
```

> Si el personaje no tiene planeta asignado, `originPlanet` es `null`. Contemplar este caso en el código (por ejemplo, mostrando *"Planeta desconocido"*) para evitar errores al acceder a sus propiedades.

</details>

<details>
    <summary>Abrir Modal de Bootstrap desde JavaScript</summary>

Con un único elemento modal en el HTML:

```js
// Actualizar el contenido del modal con los datos recibidos
document.querySelector('#modalPlanetaNombre').innerText = planeta.name;

// Abrir el modal con la API de Bootstrap
const modal = new bootstrap.Modal(document.getElementById('modalDetalle'));
modal.show();
```

</details>

<details>
    <summary>Manejo de errores con try / catch</summary>

Para capturar fallos de conexión o caídas del servidor sin que la ejecución se detenga:

```js
try {
    const respuesta = await fetch("https://dragonball-api.com/api/characters/1");
    const personaje = await respuesta.json();
    console.log(personaje);
} catch (error) {
    console.error("Error al conectar con la API:", error);
}
```

</details>

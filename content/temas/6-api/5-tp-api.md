---
title: "6.6: tp-16 (APIs)"
tags: "tp"
---

Construir una aplicación web con HTML, CSS (Bootstrap) y JavaScript que consuma la **[API de Comidas Argentinas](https://api.tehuel.com.ar/)** ([documentación interactiva y OpenAPI](https://api.tehuel.com.ar/)) implementando el patrón de **listado y detalle**, junto con **filtrado por categoría**.

## Requisitos

1. **Listado de comidas**: mostrar una grilla de tarjetas responsivas usando el sistema de grillas y componentes Card de Bootstrap. Cada tarjeta debe incluir:
   - Imagen (`imagen`)
   - Nombre (`nombre`)
   - Categoría o grupo (`grupo`) y/o badges con los tipos de comida (`tipo`)
   - Botón para ver más información / detalle.
2. **Filtro por categoría (`grupo`)**: incluir botones o un menú de selección para filtrar el listado según su grupo (`salados`, `dulces`, `bebidas`) o ver todas las comidas.
3. **Detalle**: al hacer clic en el botón de una comida, consultar su endpoint específico por ID (`/comidas/{id}`) y mostrar su información completa en un **Modal** o panel lateral (**Offcanvas**) de Bootstrap (ver cómo [controlar un Modal desde JavaScript](/temas/5-dom/2-dom/#modificar-y-mostrar-componentes-modales-de-bootstrap)):
   - Nombre (`nombre`)
   - Imagen destacada (`imagen`)
   - Descripción (`descripcion`)
   - Región geográfica de origen (`region`)
   - Listado de ingredientes principales (`ingredientes_principales`)

## Opcionales (Power Ups)

1. **Buscador en tiempo real**: agregar un campo de texto para buscar platos por su nombre utilizando el parámetro `?busqueda=...`.
2. **Paginación**: controles para navegar entre páginas (botones "Anterior / Siguiente" o botón "Cargar más"), aprovechando los parámetros `pagina` y `limite` de la API, junto con los metadatos devueltos (`pagina`, `paginas`, `total`).
3. **Sistema de "Likes" o Votos**: incorporar un botón de "Me gusta" o "Votar" en cada tarjeta o en el detalle que consulte e incremente el contador mediante `POST https://api.tehuel.com.ar/contador/{id}` y actualice el número en pantalla.
4. **Spinner de carga**: mostrar un indicador visual (`spinner-border` de Bootstrap) mientras se esperan las respuestas de la API.
5. **Ordenamiento**: permitir ordenar los resultados por nombre o grupo de forma ascendente o descendente usando los parámetros `ordenar_campo` y `ordenar_sentido`.

## Entrega

Crear la carpeta `tp-16/` en el repositorio de entregas con `index.html` y los archivos CSS y JS correspondientes.

---

## Detalles adicionales

<details>
    <summary>Ejemplo de petición POST con fetch (Power Up: Likes)</summary>

Para enviar un pedido `POST` que sume un like o voto al contador de un plato:

```js
async function darLike(idComida) {
    try {
        const respuesta = await fetch(`https://api.tehuel.com.ar/contador/${idComida}`, {
            method: "POST"
        });
        const datos = await respuesta.json();
        console.log(`Nuevo conteo para ${idComida}:`, datos.count);
        // Actualizar el elemento correspondiente en el DOM
        document.querySelector(`#likes-${idComida}`).innerText = datos.count;
    } catch (error) {
        console.error("Error al registrar el like:", error);
    }
}
```

</details>

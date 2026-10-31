---
title: "5.4: Modales con Bootstrap"
---

Una **ventana modal** (*modal dialog*) es un componente visual que se superpone al resto de la página para llamar la atención del usuario o mostrar información detallada sin necesidad de navegar a otra URL.

Bootstrap incluye el componente [Modal](https://getbootstrap.com/docs/5.3/components/modal/), que podemos controlar directamente desde JavaScript utilizando el DOM y la API propia de Bootstrap.

## ¿Por qué controlar el Modal desde JavaScript?

En HTML puro podemos abrir un modal usando atributos como `data-bs-toggle="modal"` y `data-bs-target="#miModal"`. Sin embargo, cuando construimos aplicaciones interactivas (como un catálogo de productos o un listado de datos traídos de una API):

1. **No queremos tener un modal repetido por cada elemento** en el HTML.
2. Queremos **un único elemento `<div class="modal">`** en la página.
3. Al hacer clic en un elemento específico, usamos JavaScript para **actualizar su contenido en el DOM** (título, descripción, fotos) y luego **ordenarle a Bootstrap que abra el modal**.

---

## Estructura HTML básica del Modal

El componente modal de Bootstrap requiere una estructura específica en el documento:

```html
<!-- Modal único en el HTML (generalmente cerca del final del body) -->
<div class="modal fade" id="modalDetalle" tabindex="-1" aria-labelledby="modalTitulo" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <!-- Encabezado con título y botón de cierre -->
      <div class="modal-header">
        <h5 class="modal-title" id="modalTitulo">Título inicial</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
      </div>

      <!-- Cuerpo del modal donde va el contenido -->
      <div class="modal-body">
        <img id="modalImagen" src="" class="img-fluid rounded mb-3 d-none" alt="">
        <p id="modalDescripcion" class="text-secondary"></p>
        <ul id="modalLista" class="list-group list-group-flush"></ul>
      </div>

      <!-- Pie del modal con acciones -->
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>

    </div>
  </div>
</div>
```

---

## Controlar el Modal con la API de Bootstrap

Para interactuar con el modal desde JavaScript, Bootstrap expone la clase global `bootstrap.Modal`:

```js
// 1. Obtener la referencia al elemento HTML del modal
const elementoModal = document.getElementById("modalDetalle");

// 2. Crear una instancia de Bootstrap Modal
const modal = new bootstrap.Modal(elementoModal);

// 3. Métodos disponibles:
modal.show();   // Abre el modal
modal.hide();   // Cierra el modal
modal.toggle(); // Alterna entre abierto y cerrado
```

> **Consejo**: Conviene crear la instancia una sola vez o reutilizarla para no crear múltiples controladores sobre el mismo elemento.

---

## Ejemplo Completo: Listado y Detalle Dinámico

Imaginemos un listado de elementos donde cada uno tiene un botón *"Ver detalle"*. Al hacer clic en el botón, una función toma los datos, los inyecta en el modal mediante el DOM y lo muestra en pantalla:

```html
<!-- Botones o tarjetas en el HTML -->
<div class="d-flex gap-2">
  <button class="btn btn-primary" onclick="mostrarDetalle('empanadas')">Ver Empanadas</button>
  <button class="btn btn-primary" onclick="mostrarDetalle('alfajores')">Ver Alfajores</button>
</div>
```

```js
// Datos simulados (en aplicaciones con API vendrían de fetch)
const comidas = {
  empanadas: {
    nombre: "Empanadas Criollas",
    descripcion: "Masa rellena con carne cortada a cuchillo, cebolla y condimentos típicos.",
    imagen: "https://upload.wikimedia.org/wikipedia/commons/5/52/Empanadas_salte%C3%B1as.jpg",
    ingredientes: ["Carne vacuna", "Cebolla", "Huevo duro", "Comino", "Pimentón"]
  },
  alfajores: {
    nombre: "Alfajores de Maicena",
    descripcion: "Galletitas suaves unidas con dulce de leche y bordes de coco rallado.",
    imagen: "https://upload.wikimedia.org/wikipedia/commons/6/64/Alfajor_de_maicena_and_a_latte.jpg",
    ingredientes: ["Maicena", "Harina", "Dulce de leche", "Coco rallado"]
  }
};

// Instancia única del modal
const modal = new bootstrap.Modal(document.getElementById("modalDetalle"));

function mostrarDetalle(id) {
  const item = comidas[id];
  if (!item) return;

  // 1. Modificar textos e imágenes en el DOM
  document.querySelector("#modalTitulo").innerText = item.nombre;
  document.querySelector("#modalDescripcion").innerText = item.descripcion;

  const imagen = document.querySelector("#modalImagen");
  if (item.imagen) {
    imagen.src = item.imagen;
    imagen.alt = item.nombre;
    imagen.classList.remove("d-none");
  } else {
    imagen.classList.add("d-none");
  }

  // 2. Modificar listas en el DOM
  const lista = document.querySelector("#modalLista");
  lista.innerHTML = item.ingredientes
    .map(ing => `<li class="list-group-item">${ing}</li>`)
    .join("");

  // 3. Abrir el modal
  modal.show();
}
```

---

## Eventos del Modal

Bootstrap dispara eventos personalizados en el elemento HTML del modal durante su ciclo de vida. Podemos escucharlos con `addEventListener()`:

| Evento | Momento en el que se ejecuta |
|---|---|
| `show.bs.modal` | Justo antes de que empiece a mostrarse |
| `shown.bs.modal` | Una vez que terminó de mostrarse la animación |
| `hide.bs.modal` | Justo antes de que empiece a cerrarse |
| `hidden.bs.modal` | Una vez que terminó de cerrarse y desaparecer |

### Ejemplo: Limpiar el modal al cerrarse

Para evitar que se vea contenido anterior mientras carga un nuevo elemento, podemos escuchar el evento `hidden.bs.modal` y reiniciar los campos:

```js
const elementoModal = document.getElementById("modalDetalle");

elementoModal.addEventListener("hidden.bs.modal", () => {
  // Limpiar campos para la próxima apertura
  document.querySelector("#modalTitulo").innerText = "Cargando...";
  document.querySelector("#modalDescripcion").innerText = "";
  document.querySelector("#modalLista").innerHTML = "";
  document.querySelector("#modalImagen").classList.add("d-none");
});
```

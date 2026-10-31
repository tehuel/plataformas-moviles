---
title: "5.4: Modales con Bootstrap"
---

Una **ventana modal** permite mostrar información detallada superpuesta sin salir de la página actual.

En lugar de crear un modal distinto para cada elemento, la práctica habitual es **tener un único modal en el HTML** y usar JavaScript para actualizar su contenido en el DOM antes de abrirlo.

## 1. Estructura HTML

Colocamos un único modal en el HTML (generalmente antes de cerrar el `<body>`):

```html
<div class="modal fade" id="modalDetalle" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalTitulo"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <img id="modalImagen" class="img-fluid mb-2" src="" alt="">
        <p id="modalDescripcion"></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
```

## 2. Abrir el modal desde JavaScript

Bootstrap incluye la clase global `bootstrap.Modal`. Seleccionamos el modal usando `document.querySelector()`:

```js
// 1. Seleccionamos el elemento en el DOM usando un selector de ID
const elementoModal = document.querySelector("#modalDetalle");

// 2. Creamos la instancia del modal de Bootstrap
const modal = new bootstrap.Modal(elementoModal);

// 3. Lo abrimos desde código
modal.show();
```

## 3. Ejemplo: Cargar datos dinámicos en el Modal

Al hacer clic en un botón o tarjeta, actualizamos los datos en el DOM con `document.querySelector()` y luego abrimos el modal:

```html
<button class="btn btn-primary" onclick="mostrarDetalle('Empanadas', 'https://...', 'Relleno de carne y condimentos.')">
  Ver detalle
</button>
```

```js
// Instanciamos el modal una sola vez
const modal = new bootstrap.Modal(document.querySelector("#modalDetalle"));

function mostrarDetalle(nombre, imagen, descripcion) {
  // Modificamos el contenido del DOM con selectores de ID
  document.querySelector("#modalTitulo").innerText = nombre;
  document.querySelector("#modalImagen").src = imagen;
  document.querySelector("#modalDescripcion").innerText = descripcion;

  // Abrimos el modal con los datos ya cargados
  modal.show();
}
```

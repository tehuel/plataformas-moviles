---
title: "5.4: Modales con Bootstrap"
---

Una **ventana modal** permite mostrar información superpuesta en la pantalla sin salir de la página actual. Con Bootstrap podemos controlarla de dos formas según la necesidad:

---

## 1. Controlar Modal desde HTML (Contenido fijo)

Cuando la ventana modal siempre muestra la misma información fija (por ejemplo: términos y condiciones, un mensaje de ayuda o un formulario estático), no hace falta escribir código JavaScript.

Bootstrap permite abrir y cerrar el modal directamente desde las etiquetas HTML usando atributos `data-bs-*`:

- `data-bs-toggle="modal"`: indica que el botón abre un modal.
- `data-bs-target="#modalAyuda"`: especifica qué modal abrir usando un selector de ID.
- `data-bs-dismiss="modal"`: colocado en un botón dentro del modal, lo cierra.

```html
<!-- Botón que abre el modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalAyuda">
  Ver ayuda
</button>

<!-- Estructura del modal en el HTML -->
<div class="modal fade" id="modalAyuda" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Centro de Ayuda</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <p>Este es un texto informativo fijo que no cambia.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
```

---

## 2. Controlar Modal desde JavaScript (Contenido dinámico)

Cuando mostramos un listado de elementos (productos, comidas, contactos) y queremos ver el detalle de cada uno al hacer clic, **no creamos un modal por cada elemento**. En su lugar:

1. Dejamos **un único modal vacío** en el HTML.
2. Al hacer clic en un botón, usamos `document.querySelector()` para **actualizar el contenido en el DOM**.
3. Usamos la API de Bootstrap (`bootstrap.Modal`) para **abrir el modal desde JavaScript**.

### Estructura HTML

```html
<!-- Botones de ejemplo -->
<button class="btn btn-outline-primary" onclick="mostrarDetalle('Empanadas', 'https://...', 'Relleno criollo tradicional.')">
  Ver Empanadas
</button>

<button class="btn btn-outline-primary" onclick="mostrarDetalle('Alfajores', 'https://...', 'Rellenos de dulce de leche.')">
  Ver Alfajores
</button>

<!-- Modal único para mostrar cualquier detalle -->
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

### Código JavaScript

```js
// 1. Instanciamos el modal una sola vez usando su selector de ID
const modal = new bootstrap.Modal(document.querySelector("#modalDetalle"));

// 2. Función que actualiza el DOM y abre el modal
function mostrarDetalle(nombre, imagen, descripcion) {
  // Modificamos los elementos internos del modal con querySelector
  document.querySelector("#modalTitulo").innerText = nombre;
  document.querySelector("#modalImagen").src = imagen;
  document.querySelector("#modalDescripcion").innerText = descripcion;

  // Abrimos el modal con los datos cargados
  modal.show();
}
```

---
title: "5.4: Modales con Bootstrap"
---

El componente **modal** de Bootstrap permite mostrar información superpuesta sin salir de la página actual. Se puede controlar de dos formas:

## 1. Desde HTML (contenido fijo)

Si el contenido no cambia (por ejemplo, un mensaje de ayuda o términos), se abre directamente con atributos `data-bs-*` en el botón, sin escribir código JavaScript:

```html
<button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalAyuda">
  Ver ayuda
</button>

<div class="modal fade" id="modalAyuda" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Centro de Ayuda</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <p>Texto fijo que no cambia.</p>
      </div>
    </div>
  </div>
</div>
```

---

## 2. Desde JavaScript (contenido dinámico)

Cuando mostramos datos variables (por ejemplo, el detalle al hacer clic en un elemento de una lista), usamos **un único modal** en el HTML y actualizamos su contenido en el DOM antes de abrirlo.

### HTML

```html
<button class="btn btn-primary" onclick="abrirDetalle('Empanadas', 'Relleno criollo tradicional.')">
  Ver Empanadas
</button>

<div class="modal fade" id="modalDetalle" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalTitulo"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <p id="modalDescripcion"></p>
      </div>
    </div>
  </div>
</div>
```

### JavaScript

```js
// Instanciamos el modal una sola vez
const modal = new bootstrap.Modal(document.querySelector("#modalDetalle"));

function abrirDetalle(titulo, descripcion) {
  // Modificamos el contenido del DOM con selectores de ID
  document.querySelector("#modalTitulo").innerText = titulo;
  document.querySelector("#modalDescripcion").innerText = descripcion;

  // Abrimos el modal con los datos cargados
  modal.show();
}
```

---
title: "5.3: tp-12 (Lista de Compras)"
tags: "tp"
---

# Objetivo

Construir una lista de compras donde se puedan agregar productos dinámicamente utilizando JavaScript y el DOM.

# Formato de Entrega

- Entregar un archivo HTML con el código solicitado y las funcionalidades implementadas.
- Subir el trabajo al repositorio de entregas, en el directorio `/tp-12/`.

## HTML Inicial

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lista de Compras - DOM y JavaScript</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>
<body>
    <div class="container my-1 my-sm-2 my-md-4 my-lg-5">
        <h1>Lista de Compras</h1>
        <div class="card">
            <div class="card-body">
                <h2>Listado de Productos</h2>
                
                <ul id="lista-productos">
                    <li>Pan</li>
                </ul>

                <hr class="hr">

                <h2>Agregar Producto</h2>
                <form id="form-producto">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" aria-label="Nombre del Producto">
                        <button class="btn btn-primary" type="submit">Agregar Producto</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
    <script type="text/javascript">
        /**
         * agregarProducto()
         * esta función se va a llamar cuando el usuario envía el formulario con el nombre del producto para agregar.
         */
        function agregarProducto(nombreProducto) {
            // su implementación
        }

        function handlerFormulario(evento) {
            evento.preventDefault();
            const input = evento.target.querySelector('input');
            const nombreProducto = input.value;
            input.value = "";
            agregarProducto(nombreProducto);
        }

        document.querySelector('form').addEventListener('submit', handlerFormulario);
    </script>
</body>
</html>
```

# Consigna

Implementar las siguientes funcionalidades en la lista de compras:

- Agregar productos: sumar nuevos productos a la lista.
- Limpiar la lista: opción para borrar todos los productos.
- Ordenar productos: posibilidad de ordenar la lista alfabéticamente.
- Eliminar productos: cada producto debe poder eliminarse de forma individual.

# Bonus Tracks

- Habilitar la edición del nombre de un producto ya agregado.
- Marcar productos como comprados: Permitir marcar/desmarcar productos como comprados (por ejemplo, tachando el texto).
- Persistencia local: Guardar la lista de productos en `localStorage` para que no se pierda al recargar la página.
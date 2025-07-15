---
title: "5.3: tp-14 (Lista de Contactos)"
tags: "tp"
---

# Objetivo

Construir una lista de contactos, ordenada alfabéticamente, y agregar funcionalidades avanzadas de gestión.

# Formato de Entrega

- Entregar un archivo HTML con el código solicitado y las funcionalidades implementadas.
- Subir el trabajo al repositorio de entregas, en el directorio `/tp-14/`.

## HTML Inicial

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lista de Contactos - DOM y JavaScript</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>
<body>
    <div class="container my-1 my-sm-2 my-md-4 my-lg-5">
        <h1>Lista de Contactos</h1>
        <div class="card">
            <div class="card-body">
                <h2>Contactos</h2>

                <ul id="lista-contactos"></ul>

                <hr class="hr">

                <h2>Nuevo Contacto</h2>
                <form id="form-producto">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="nombre" id="input-nombre" placeholder="Nombre" aria-label="Nombre">
                        <input type="text" class="form-control" name="apellido" id="input-apellido" placeholder="Apellido" aria-label="Apellido">
                    </div>
                    <button class="btn btn-primary" type="submit">Agregar Contacto</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
    <script type="text/javascript">
        let contactos = [
            {
                nombre: 'Juan',
                apellido: 'Perez',
            },
        ];

        /**
         * agregarContacto()
         * esta función se va a llamar cuando el usuario envía el formulario con el nuevo contacto para agregar.
         */
        function agregarContacto(nombre, apellido) {
            // su implementación
        }

        /**
         * mostrarListado()
         * esta función se encarga de mostrar en el DOM la lista de todos los contactos guardados en la variable global contactos.
         */
        function mostrarListado() {
            // su implementación
        }

        function handlerFormulario(e) {
            e.preventDefault();
            const inputNombre = e.target.querySelector('#input-nombre');
            const inputApellido = e.target.querySelector('#input-apellido');

            const nombre = inputNombre.value;
            const apellido = inputApellido.value;

            inputNombre.value = "";
            inputApellido.value = "";

            agregarContacto(nombre, apellido);
        }

        document.querySelector('form').addEventListener('submit', handlerFormulario);
    </script>
</body>
</html>
```

# Consigna

Implementar las siguientes funcionalidades:

- Agregar contactos a la lista.
- Ordenar el listado de contactos alfabéticamente.
- Agregar opción de ordenar por nombre o por apellido.
- Agregar un nuevo campo teléfono al formulario y a la lista de contactos.
- Agregar la opción de marcar como favorito un contacto.
- Agregar opción para ver sólo los contactos favoritos.

# Bonus Track

- Permitir editar los datos de un contacto ya agregado.
- Agregar la opción de eliminar contactos individualmente.
- Permitir seleccionar varios contactos y eliminarlos juntos.
- Agregar un buscador para filtrar contactos por nombre, apellido o teléfono.

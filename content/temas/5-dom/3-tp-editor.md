---
title: "5.3: tp-11 (Editor de Texto)"
tags: "tp"
---

# Objetivo

El objetivo de este trabajo práctico es desarrollar un editor de texto básico que permita aplicar distintos estilos al texto utilizando JavaScript y manipulaciones del DOM.


# Formato de Entrega

- Crear un archivo HTML en la ruta `/tp-11/index.html` con el contenido inicial proporcionado.
- Subir el archivo al repositorio de entregas.

## HTML Inicial

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editor de Texto - DOM y JavaScript</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>
<body>
    <div class="container my-1 my-sm-2 my-md-4 my-lg-5">
        <h1>Editor de Texto</h1>
        <div class="card">
            <div class="card-body">
                <h2>Texto</h2>

                <p class="texto" id="texto">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec elementum auctor libero, vel imperdiet est. Etiam blandit facilisis ex, nec cursus metus pharetra quis. Fusce imperdiet nisl nibh, ac aliquet ante elementum vitae.</p>

                <hr class="hr">

                <h2>Opciones de Formato</h2>
                <div class="row">
                    <div class="col-12 col-md-4 my-1">
                        <button id="btn-negrita" class="btn d-block w-100 btn-primary" data-formato="negrita">
                            Bold (Negrita)
                        </button>
                    </div>
                    <div class="col-12 col-md-4 my-1">
                        <button id="btn-cursiva" class="btn d-block w-100 btn-primary" data-formato="cursiva">
                            Italic (Cursiva)
                        </button>
                    </div>
                    <div class="col-12 col-md-4 my-1">
                        <button id="btn-subrayado" class="btn d-block w-100 btn-primary" data-formato="subrayado">
                            Underline (Subrayado)
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
    <script type="text/javascript">
        /**
         * funcionNegrita()
         * Esta función se ejecuta cuando el usuario selecciona la opción Bold (negrita).
         */
        function funcionNegrita() {
            // Implementación pendiente
        }

        /**
         * funcionCursiva()
         * Esta función se ejecuta cuando el usuario selecciona la opción Italic (cursiva).
         */
        function funcionCursiva() {
            // Implementación pendiente
        }

        /**
         * funcionSubrayado()
         * Esta función se ejecuta cuando el usuario selecciona la opción Underline (subrayado).
         */
        function funcionSubrayado() {
            // Implementación pendiente
        }

        function handlerBoton(e) {
            // Obtiene el valor del atributo "data-formato" del botón que disparó el evento
            const funcionBoton = e.target.dataset.formato;
            switch (funcionBoton) {
                case 'negrita':
                    funcionNegrita();
                    break;
                case 'cursiva':
                    funcionCursiva();
                    break;
                case 'subrayado':
                    funcionSubrayado();
                    break;
            }
        }
        document.querySelectorAll('button.btn').forEach(e => e.addEventListener('click', handlerBoton));
    </script>
</body>
</html>
```

# Consigna

- Implementar las funciones de estilo que ya están definidas en el HTML inicial: negrita, cursiva y subrayado.
- Añadir un nuevo botón que aplique un estilo adicional al texto (por ejemplo, cambiar el color del texto).
- Incluir un campo de entrada (input) que permita al usuario editar el texto mostrado.
- Mostrar el estado actual de cada estilo en los botones correspondientes. Esto puede hacerse cambiando el color o el texto del botón para indicar si el estilo está activado o no.
- Agregar una funcionalidad para modificar el tamaño del texto.

# Bonus Track

- (Opcional) Explorar y añadir otras funcionalidades que puedan mejorar la experiencia del editor de texto.

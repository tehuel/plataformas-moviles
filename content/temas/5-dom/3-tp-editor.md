---
title: "5.3: tp-11 (Editor de Texto)"
tags: "tp"
---

El objetivo es construir un muy simple Editor de Texto donde se puedan aplicar distintos estilos a un texto.

- Agregar un nuevo botón con un estilo adicional (puede ser para aplicar un color al texto, por ejemplo).
- Agregar la posibilidad de editar el texto, con un input para escribir un nuevo texto.
- Mostrar el estado actual de cada estilo en el botón (si está activado o no). Puede ser cambiando el color o el texto del propio botón.
- Agregar la funcionalidad de modificar el tamaño del texto.


## HTML

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Editor de Texto - DOM y JavaScript</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script type="text/javascript">
        /**
         * funcionNegrita()
         * esta función se va a llamar cuando el usuario selecciona la opción Bold (negrita).
         */
        function funcionNegrita() {
            // su implementación
        }

        /**
         * funcionCursiva()
         * esta función se va a llamar cuando el usuario selecciona la opción Bold (negrita).
         */
        function funcionCursiva() {
            // su implementación
        }

        /**
         * funcionSubrayado()
         * esta función se va a llamar cuando el usuario selecciona la opción Bold (negrita).
         */
        function funcionSubrayado() {
            // su implementación
        }

        function handlerBoton(e) {
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

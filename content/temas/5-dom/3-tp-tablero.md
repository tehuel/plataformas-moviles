---
title: "5.3: tp-14 (Tablero de Puntos)"
tags: "tp"
---

# Objetivo

Construir un tablero para mostrar y gestionar el puntaje de un partido entre 2 equipos.

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
    <title>Tablero de Puntos - DOM y JavaScript</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
    <div class="container my-1 my-sm-2 my-md-4 my-lg-5">
    	<h1>Tablero de Puntos</h1>
        <div class="card">
            <div class="card-body">
                <div class="row text-center">
                    <div class="col-5">
                        <span class="display-1">0</span>
                        <p class="m-0">Local</p>
                    </div>
                    <div class="col-2">
                        <span class="display-1">:</span>
                    </div>
                    <div class="col-5">
                        <span class="display-1">0</span>
                        <p class="m-0">Visitante</p>
                    </div>
                </div>

                <hr class="hr">

                <h2>Actualizar Contador</h2>
                <div class="row">
                    <div class="col-12 col-sm-4 my-1">
                        <button class="btn d-block w-100 btn-primary">
                            Punto Local
                        </button>
                    </div>
                    <div class="col-12 col-sm-4 my-1">
                        <button class="btn d-block w-100 btn-primary">
                            Punto Visitante
                        </button>
                    </div>
                    <div class="col-12 col-sm-4 my-1">
                        <button class="btn d-block w-100 btn-danger">
                            Reinicio
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
```

# Consigna

Implementar las siguientes funcionalidades:

- Agregar un botón para incrementar (+) y otro para decrementar (-) los puntos de cada equipo.
- Agregar la acción de invertir puntaje, para intercambiar los puntos entre el equipo local y el equipo visitante.
- Agregar la acción de finalizar partido, que deshabilita los botones de puntaje, para que ya no se puedan sumar puntos. Los botones se deben volver a habilitar cuando se reinicia el tablero.

# Bonus Track

- Permitir cambiar los nombres de los equipos.
- Personalización de colores: Permitir cambiar el color de fondo o los colores de los equipos.
- Atajos de teclado: Permitir controlar el tablero usando el teclado (por ejemplo, teclas para sumar/restar puntos).
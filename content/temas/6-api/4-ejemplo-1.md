---
title: "6.4: Ejemplo de Conexión con API"
---

# API Lorem Picsum

[Lorem Picsum](https://picsum.photos) es una API para obtener imagenes.

La siguiente solicitud, por ejemplo devuelve una imagen al azar de 200x300 píxeles:

```shell
https://picsum.photos/200/300
```

Esta API también nos permite pedir una imágen específica, a partir de un id. Por ejemplo, para conseguir la imágen con id #0:

```shell
https://picsum.photos/id/0/200/300
```

También podemos pedirle que nos devuelva no la imagen, sino sus datos, mediante id:

```shell
https://picsum.photos/id/0/info
```

Según la documentación, cada imagen tiene los siguientes atributos:

```json
{
    "id":"0",
    "author":"Alejandro Escamilla",
    "width":5000,
    "height":3333,
    "url":"https://unsplash.com/photos/yC-Yzbqy7PY",
    "download_url":"https://picsum.photos/id/0/5000/3333"
}
```

Sabiendo esto, podemos hacer un sitio simple que nos permita obtener y mostrar imagenes aleatorias.

# Conexión desde JS

Para poder obtener datos de una api en JavaScript existe el comando [`fetch`](https://developer.mozilla.org/es/docs/Web/API/Window/fetch). Su estructura es la siguiente:

```js
fetch(url)
    .then((response) => response.json())    // Convierte los datos a json
    .then((data) => {                       // Crea una nueva función, pasando los datos obtenidos como parámetro
        console.log(data)                   // (O cualquier código js)
    })
```

Entonces, por ejemplo, si pasamos la siguiente url: 'https://picsum.photos/id/0/info', obtenemos todos los datos de la imagen '0'

```js
fetch(`https://picsum.photos/id/0/info`)
    .then((response) => {
        return response.json();
    })
    .then((data) => {
        console.log(data);
    })
```
Resultado:

{{< figure src="/img/ejemplofetch.png" title="Respuesta de API" >}}

## Sintaxis Alternativa: `async/await`

Una sintaxis alternativa al uso de `fetch().then()` es el uso de `async/await`. La idea en ambos casos es la misma, esperar el resultado del pedido HTTP.

El uso de `await fetch()` sólo está permitido dentro de funciones marcadas como `async`.

```js
async function obtenerImagenDesdeApi() {
    const response = await fetch(`https://picsum.photos/id/0/info`);
    const data = await response.json();
    console.log(data);
}
```

# Obtener imagen aleatoria

Para obtener una imagen aleatoria necesitamos generar un id. Para esto podemos armar una función:

```js
function generarNumeroAleatorio(limite) {
    return Math.floor(Math.random() * limite);
}
```

Para pedir a la API una imagen usando un id, es necesario modificar la función de conexión para que acepte un id como parametro:

```js
async function obtenerImagenDesdeApi(id) {
    const response = await fetch(`https://picsum.photos/id/${id}/info`);
    const data = await response.json();
    return data;
}
```

Combinando ambas funciones, podemos conseguir los `datosDeImagen`:

```js
const idAleatorio = generarNumeroAleatorio(100);
const datosDeImagen = await obtenerImagenDesdeApi(idAleatorio);
```

# Mostrar imagen en el DOM

Para generar la estructura HTML de una imagen y mostrarla en el DOM, podemos armar una función, que reciba un string con la URL de una imagen y genere un elemento `<img>`.

```js
function mostrarImgEnDom(src) {
    // creo un nuevo elemento <img>
    const elementoImg = document.createElement('img');
    elementoImg.src = src;
    elementoImg.classList.add('img-fluid'); // clase de bootstrap

    // agrego el elemento <img> al DOM
    document.querySelector('#contenedorImagenes').appendChild(elementoImg);
}
```

# Código Final

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Ejemplo Lorem Picsum</title>
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center">Ejemplo Lorem Picsum</h1>

        <button id="botonObtenerImagen" class="btn btn-primary my-3" onclick="handlerBoton()">   
            Obtener Imagen
        </button>

        <div id="contenedorImagenes"></div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function generarNumeroAleatorio(limite) {
            return Math.floor(Math.random() * limite);
        }

        async function obtenerImagenDesdeApi(id) {
            const response = await fetch(`https://picsum.photos/id/${id}/info`);
            const data = await response.json();
            return data;
        }

        function mostrarImgEnDom(src) {
            const elementoImg = document.createElement('img');
            elementoImg.src = src;
            elementoImg.classList.add('img-fluid');

            document.querySelector('#contenedorImagenes').appendChild(elementoImg);
        }

        async function handlerBoton() {
            document.querySelector('#botonObtenerImagen').disabled = true; // desactivo el botón
            const idAleatorio = generarNumeroAleatorio(100);
            const datosDeImagen = await obtenerImagenDesdeApi(idAleatorio);
            const urlDeImagen = datosDeImagen.download_url;
            mostrarImgEnDom(urlDeImagen);
            document.querySelector('#botonObtenerImagen').disabled = false; // vuelvo a activar el boton
        }
    </script>
</body>
</html>
```

---
title: "3.6.1: tp-6 (Grilla Bootstrap)"
tags: "tp"
---

# Objetivo

Practicar el uso del sistema de grillas de Bootstrap para construir diferentes layouts responsivos.

# Formato de Entrega

- Crear los siguientes archivos (todo dentro de una carpeta `/tp-6/`):
    - `/tp-6/layout-1.html`
    - `/tp-6/layout-2.html`
    - `/tp-6/layout-3.html`
    - `/tp-6/index.html` (índice con enlaces a cada uno de los layouts).
- Subir todos los archivos al repositorio de entregas.

## HTML Inicial

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Layout N</title>
    <style>
        .content {padding: 2em 0.5em; text-align: center;}
        .s1 {background-color: #ca9f77;}
        .s2 {background-color: #cbc168;}
        .s3 {background-color: #a3c55b;}
        .s4 {background-color: #76d179;}
        .s5 {background-color: #85e3c1;}
        .s6 {background-color: #79bfe5;}
    </style>
</head>
<body>
    <div class="container-sm g-0">
        <div class="row g-0">
            <div class="col">
                <div class="content s1">sección 1</div>
            </div>
            <div class="col">
                <div class="content s2">sección 2</div>
            </div>
            <div class="col">
                <div class="content s3">sección 3</div>
            </div>
            <div class="col">
                <div class="content s4">sección 4</div>
            </div>
            <div class="col">
                <div class="content s5">sección 5</div>
            </div>
            <div class="col">
                <div class="content s6">sección 6</div>
            </div>
        </div>
    </div>
</body>
</html>
```

# Consigna 

Para cada layout, realizar las modificaciones necesarias al HTML inicial para que el sistema de grilla se comporte de la misma forma que se ve en las imagenes. Esto incluye realizar las modificaciones necesarias para instalar bootstrap en cada uno de los documentos.

## 1. Layout 1

![](/img/layout-1.png)

## 2. Layout 2

![](/img/layout-2.png)

## 3. Layout 3

![](/img/layout-3.png)

## 4. Índice

Una vez realizados los 3 layouts, crear un nuevo archivo `tp-6/index.html` con un listado de links apuntando a cada uno de los layouts creados, por ejemplo: 

```html
<ul>
    <li>
        <a href="layout-1.html">Layout 1</a>
    </li>
    <li>
        <a href="layout-2.html">Layout 2</a>
    </li>
    <li>
        <a href="layout-3.html">Layout 3</a>
    </li>
</ul>
```

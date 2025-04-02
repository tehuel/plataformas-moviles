---
title: "0.1: tp-0 (Github)"
tags: "tp"
---

# Repositorio en GitHub

El objetivo del trabajo es crear un repositorio de GitHub en el que vamos a realizar las entregas de los trabajos prácticos a lo largo del año.


## Usuario de Github

Crear usuario en [GitHub](https://github.com) (si es que todavía no tienen).

## Repositorio

Crear un nuevo repositorio, con el nombre `plataformas-moviles-entregas`.

> Atención al nombre, debe ser exacto:
> - todo en minúscula
> - todo en plural
> - separar con guión medio (`-`)
> - sin punto al final

<details>
    <summary>(Screenshot)</summary>

{{< figure src="/img/github-nuevo-repo.png" >}}

</details>

<details>
    <summary>(Otros Ajustes del nuevo repo)</summary>

- "Description": opcional, puede ser "Repositorio de entregas para la materia Plataformas Móviles".
- "Public/Private": Dejar marcado Public, es necesario en este caso que el repo sea público para que todo funcione.

</details>

## Archivo `index.html` dentro del repo

Dentro del repositorio recién creado, agregar un nuevo archivo.

<details>
    <summary>(Si el repo está vacío)</summary>

{{< figure src="/img/github-new-file-1.png" >}}

</details>

<details>
    <summary>(Si el repo ya tiene archivos)</summary>

{{< figure src="/img/github-new-file-2.png" >}}

</details>

El nombre del archivo debe ser `index.html`, y el contenido puede ser un HTML, por ejemplo:

```html
<!DOCTYPE html>
<html>
   <head>
      <title>Hola Mundo!</title>
   </head>
   <body>
     <h1>Trabajos Prácticos</h1>
     <p>Listado de trabajos prácticos para la materia Plataformas Móviles</p>
     <ul>
       <li><a href="tp-1/">Primer Trabajo</a></li>
     </ul>
   </body>
</html>
```


# Github Pages

Activar GitHub Pages.

1. Ir a la sección `settings` del repositorio.
2. Ir a la sección `pages` dentro de `settings` del repositorio.
3. Seleccionar la branch `main` y la carpeta `root` del repositorio.
4. Click en `save` para guardar los cambios.
5. Esperar unos minutos a que el servicio se active.

{{< figure src="/img/tp-1-pages.png" >}}

Si todo salió bien, al volver a entrar a la sección pages se debería ver el link en un recuadro.

<details>
    <summary>(Screenshot: link en recuadro)</summary>

{{< figure src="/img/github-pages-link.png" >}}

</details>

## Link en Detalles

Agregar link a detalles del repositorio.

<details>
    <summary>(Screenshot: link en detalles)</summary>

{{< figure src="/img/github-repo-details.png" >}}

</details>


## Resultado

Si acceden a la URL `http://{usuario}.github.io/plataformas-moviles-entregas` deberian ver la página publicada.

## Posibles Poblemas

- Error 404
- Página en blanco

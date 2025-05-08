---
title: "3.6: tp-5 (Bootstrap)"
tags: "tp"
---

# Objetivo

Integrar el framework Bootstrap para mejorar la presentación y la funcionalidad de una página web.

# Formato de Entrega

- Crear un archivo HTML en la ruta `/tp-5/index.html` con el contenido del HTML inicial.
- Subir el archivo HTML junto con todos los recursos que considere necesarios al repositorio de entregas de la materia.

## HTML Inicial

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Control de Versiones con Git</title>
</head>
<body>
    <h1>Control de Versiones con Git</h1>

    <p><strong>Git</strong> es un sistema de control de versiones distribuido, ampliamente utilizado en el desarrollo de
        software moderno. Fue creado para gestionar proyectos de forma rápida, eficiente y colaborativa.</p>

    <h2>Comandos más populares de Git</h2>
    <ul>
        <li><code>git init</code> - Inicializa un nuevo repositorio Git en el directorio actual. Este comando crea un
            repositorio vacío.</li>
        <li><code>git clone [url]</code> - Clona un repositorio remoto en tu máquina local. Ejemplo:
            <code>git clone https://github.com/usuario/repositorio.git</code>.</li>
        <li><code>git status</code> - Muestra el estado del repositorio: archivos modificados, nuevos archivos no
            rastreados, cambios preparados para el commit, etc.</li>
        <li><code>git add [archivo]</code> - Agrega un archivo o cambios específicos al área de preparación (staging
            area) para el commit.</li>
        <li><code>git commit -m "[mensaje]"</code> - Crea un commit con los archivos añadidos al área de preparación,
            agregando un mensaje descriptivo.</li>
        <li><code>git push</code> - Sube los cambios locales al repositorio remoto. Generalmente se usa después de un
            commit para actualizar el repositorio remoto.</li>
        <li><code>git pull</code> - Obtiene y fusiona los cambios del repositorio remoto al repositorio local.
            Equivalente a <code>git fetch</code> seguido de <code>git merge</code>.</li>
        <li><code>git checkout [rama]</code> - Cambia a una rama específica del repositorio. Si la rama no existe, se
            puede crear con <code>git checkout -b [rama]</code>.</li>
    </ul>

    <h2>Comparación con otros sistemas</h2>
    <table class="table">
        <thead>
            <tr>
                <th>Sistema</th>
                <th>Tipo</th>
                <th>Popularidad</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Git</td>
                <td>Distribuido</td>
                <td>Muy alta</td>
            </tr>
            <tr>
                <td>SVN</td>
                <td>Centralizado</td>
                <td>Media</td>
            </tr>
            <tr>
                <td>Mercurial</td>
                <td>Distribuido</td>
                <td>Baja</td>
            </tr>
            <tr>
                <td>Perforce</td>
                <td>Centralizado</td>
                <td>Especializado (AAA, empresas)</td>
            </tr>
        </tbody>
    </table>

    <h2>¿Ya usaste Git?</h2>
    <p>Completá el siguiente formulario para contarnos tu experiencia:</p>

    <form class="form">
        <label for="nombre">Tu nombre:</label>
        <input type="text" id="nombre" name="nombre" class="form-control">

        <label for="experiencia">¿Qué usás más?</label><br>
        <select id="experiencia" name="experiencia" class="form-select">
            <option value="git">Git</option>
            <option value="github">Git + GitHub</option>
            <option value="otro">Otro sistema</option>
            <option value="ninguno">Todavía no uso ninguno</option>
        </select>

        <input type="submit" value="Enviar" class="btn btn-primary mt-2">
    </form>
</body>
</html>
```

# Consigna

## 1 - Instalar Bootstrap

Instalar Bootstrap en el documento utilizando alguna de las dos formas vistas en clase:

- **CDN**: Agregar el enlace al archivo CSS y JS de Bootstrap desde su servidor oficial.
- **Archivos locales**: Descargar los archivos de Bootstrap y enlazarlos desde el proyecto.

## 2 - Usar Clases de Bootstrap

Aplicar las siguientes modificaciones utilizando clases de Bootstrap:

- Centrar el título `<h1>`.
- Cambiar el tamaño del primer párrafo para que sea más grande.
- Cambiar el estilo del botón de envío del formulario.
- Cambiar el estilo y color de la tabla.
- Agregar margenes y sombra al listado de comandos.

## 3 - Usar Componentes de Bootstrap

Agregar al menos **dos componentes** de Bootstrap a la página. Algunas sugerencias:

- **Cards**: Contener alguno de los elementos actuales en una tarjeta.
- **List Group**: Para mostrar listados de una forma estilizada.
- **Navbar**: Agregar una barra de navegación en la parte superior de la página.
- **Accordion**: Para mostrar componentes o secciones de una a la vez
- **Carousel**: Incluir un carrusel de imágenes.
- **Container**: Para agregar un espaciado a todo el documento

## 4 - Bonus Track

Agregar algunos de los componentes más avanzados, activados a través de botones:

- Alert
- Modal
- Collapse
- Toasts
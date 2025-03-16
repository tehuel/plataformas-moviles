---
title: "2.1: Estructura del documento"
---

HTML, que significa "Lenguaje de Marcado de Hipertexto" (en inglés Hypertext Markup Language), es un estándar fundamental para la creación de páginas web. 

HTML proporciona una estructura para la creación de documentos web y se utiliza para describir y definir el contenido de una página web, como texto, imágenes, enlaces, formularios, tablas, entre otros elementos. La esencia de HTML es el "marcado" de elementos mediante etiquetas, que son códigos encerrados entre corchetes angulares (`<>`). Cada etiqueta representa un tipo de contenido o estructura y puede contener atributos que proporcionan información adicional sobre el elemento.

La estructura básica de un documento HTML se compone de las siguientes etiquetas:
- `<!DOCTYPE html>`: Define la versión de HTML que se está utilizando. En este caso, se usa HTML5.
- `<html>`: Representa la raiz de un documento HTML. El resto de elementos descienden de este elemento.
- `<head>`: Provee información general (metadatos) acerca del documento, incluyendo su título y enlaces a scripts y hojas de estilos. El usuario no puede interactuar con los elementos dentro de esta etiqueta
- `<body>`: Representa el contenido de un documento HTML. Contiene textos, enlaces, imagenes, etc.

```html
<!DOCTYPE html>
<html>
<head>
    <title>Título del sitio</title>
    <!--Aquí suele haber enlaces a elementos externos-->
</head>
<body>
    <!--Aquí se incluye el contenido de la página-->
</body>
</html>
```

> En el ejemplo se puede observar que las etiquetas se *cierran* escribiendo `</etiqueta>`

## Elementos del "body"

Dentro de la etiqueta `<body>` se puede incluir el contenido del documento, mediante diferentes etiquetas. Algunoa de ellos son
- `<h1>`, `<h2>` ... `<h6>`: Representan títulos. Se ordenan del más importante (h1) al menos importante (h6).
- `<p>`: Etiqueta de párrafo.
- `<div>`: Significa "division" y funciona para seccionar o agrupar contenido.
- `<span>`: Sirve para aplicar estilo al texto o agrupar elementos en línea.
- `<a>`: Permite agregar un vínculo o enlace.
- `<img>`: Permite agregar imágenes.
- `<form>`: Agrega un formulario.
- `<label>`: Se utiliza para asociar un texto descriptivo con un elemento de formulario.
- `<input>`: Crea un espacio para recibir datos del usuario.

[Documentación de Referencia de Elementos HTML](https://developer.mozilla.org/es/docs/Web/HTML/Element)

## Atributos

Los atributos proporcionan información adicional sobre los elementos y les permiten tener características específicas. Estos se definen dentro de las etiquetas mediante un nombre clave y su valor.
Algunos ejemplos son:
-**id**: Define un edentificador único para el elemento
- **src**: Especifica la fuente de la imagen
- **alt**: Proporciona un texto alternativo para la imagen en caso de que la misma no se pueda cargar
- **href**: Especifica la URL destino de un enlace

### Sitio web de ejemplo

```html
<!DOCTYPE html>
<html>
<head>
    <title>Título del sitio</title>
</head>
<body>
    <h1>Este es un sitio web</h1>
    <p>Lo escribí yo usando HTML</p>
    <div>
      <img src="https://i.pinimg.com/736x/ce/27/da/ce27daa6646f005c7cfb8cfe88ba7f27.jpg" alt="html"/>
      <p>Para recordar que <i>HTML</i> <b>no es un lenguaje de programación</b></p>
    </div>
</body>
</html>
```

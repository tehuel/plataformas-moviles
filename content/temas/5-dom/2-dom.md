---
title: "5.2: DOM"
---
Vimos distintas operaciones que podemos realizar conectando con el *Modelo de Objetos del Documento* (DOM, por sus siglas en inglés). [Referencia en MDN](https://developer.mozilla.org/es/docs/Web/API/Document_object_model/Using_the_Document_Object_Model)

## Organización en Árbol

Podemos pensar la representación del documento HTML como una estructura de árbol, donde encontramos nodos, ramas y hojas todos partiendo desde un nodo raíz.

![](/img/dom-tree.png)

Fuente: https://en.wikipedia.org/wiki/Document_Object_Model

## Buscar Elementos

Para buscar y seleccionar elementos dentro del DOM podemos usar `document.querySelector()` y `document.querySelectorAll()`.

```js
// buscar elementos dentro del documento
document.querySelector(); // nos devuelve el primer elemento
document.querySelectorAll(); // nos devuelve una lista de elementos

let primerParrafo = document.querySelector('p');
let todosLosParrafos = document.querySelectorAll('p');

// podemos usar selectores de CSS con todas las condiciones que necesitemos
let elementoConCondiciones = document.querySelector('div#id > p.clase'); 
```

Como alternativa, podemos usar otros métodos para buscar elementos específicos.

```js
document.getElementById('id');
document.getElementsByClassName('clase');
document.getElementsByTagName('tag');
document.getElementsByName('nombre');
```

Las búsquedas funcionan para encontrar elementos dentro de otros elementos.

```html
<!-- Estructura en HTML -->
<div class="padre">
	<p class="hijo">Elemento Hijo</p>
</div>
```

```js
// podemos buscar un elemento inicial
let elementoPadre = document.querySelector('div.padre');

// y luego buscamos el elemento hijo sólo dentro del elemento padre
let elementoHijo = elementoPadre.querySelector('p.hijo');	
```

## Crear Elementos

```js
let nuevoElemento = document.createElement('etiqueta');

// por ejemplo para crear un párrafo
let nuevoParrafo = document.createElement('p');
nuevoParrafo.innerText = "Este es el contenido del nuevo párrafo.";
```

Para conocer todos los atributos (además del `innerText` que usamos en el ejemplo) y métodos que se pueden usar en el nuevo elemento, se puede consultar la [documentación de `element` en MDN](https://developer.mozilla.org/es/docs/Web/API/Element).

## Mostrar Elementos

Luego de crear elementos, tenemos que decidir en que parte del arbol del DOM los vamos a mostrar. Para eso podemos agregar nuestro nuevo elemento como un hijo de otro elemento ya existente en el DOM. Para esto podemos usar `.append()` y `.prepend()`.

```js
// agregar como primer hijo
elementoPadre.prepend(elemetoHijo);

// agregar como último hijo
elementoPadre.append(elementoHijo);
```

## Clonar Elementos

Una forma más rápida de crear elementos nuevos es hacerlo a partir de otros elementos ya existentes en el DOM. Para esto podemos usar `.cloneNode()`. 

Si le pasamos como parámetro el valor `true`, esto hace una *clonación profunda* (es decir, copia todos los elementos internos también), de otra manera se hace una *clonación superficial* donde sólo se copia el elemento más externo.

```html
<!-- Estructura en HTML -->
<div class="padre">
	<p class="hijo">Elemento Hijo</p>
</div>
```

```js
let elementoPadre = document.querySelector('div.padre');

// hacemos una *clonacion superficial* de elementoPadre en nuevoElemento
let nuevoElemento = elementoPadre.cloneNode();

// hacemos una *clonación profunda* de elementoPadre (y todo su contenido) en nuevoElemento
let nuevoElemento = elementoPadre.cloneNode(true);
```

## Eliminar Elementos

```js
let elementoPadre = document.querySelector('div.padre');
elementoPadre.remove();
```

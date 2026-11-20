---
title: "5.2: DOM dinámico, Formularios y Estado"
weight: 20
tipo: "apunte"
opcional: false
---

## Crear, Mostrar y Eliminar Elementos

### Crear elementos

```js
let nuevoElemento = document.createElement('etiqueta');

// por ejemplo para crear un párrafo
let nuevoParrafo = document.createElement('p');
nuevoParrafo.innerText = "Este es el contenido del nuevo párrafo.";
```

### Mostrar elementos

Luego de crear elementos, tenemos que decidir en qué parte del árbol del DOM los vamos a mostrar. Para agregar un nuevo elemento como hijo de otro ya existente en el DOM usamos `.append()` y `.prepend()`:

```js
// agregar como primer hijo
elementoPadre.prepend(elementoHijo);

// agregar como último hijo
elementoPadre.append(elementoHijo);
```

### Eliminar elementos

```js
let elementoPadre = document.querySelector('div.padre');
elementoPadre.remove();
```

## Eventos de Formularios

### `Input` en un campo de texto

```html
<input type="text" id="nombre" placeholder="Escribí tu nombre">
<p id="saludo"></p>

<script>
  const campoTexto = document.querySelector('#nombre');
  const parrafoSaludo = document.querySelector('#saludo');

  // puedo definir la función handler directamente
  campoTexto.addEventListener("input", () => {
    parrafoSaludo.textContent = "Hola, " + campoTexto.value;
  });
</script>
```

### `Submit` en un formulario

Las funciones que se usan como manejadoras de eventos reciben como parámetro un objeto `Event` con detalles del evento que se ejecutó. En formularios usamos `preventDefault()` para evitar que el navegador recargue la página al enviarse.

```html
<form id="miFormulario">
  <input type="text" name="nombre" placeholder="Nombre" required>
  <input type="email" name="correo" placeholder="Correo">
  <button type="submit">Enviar</button>
</form>

<script>
  const form = document.querySelector('#miFormulario');

  function handlerFormulario(objetoEvent) {
    objetoEvent.preventDefault(); // Evitar recargar la página
    const datos = new FormData(form); // Crear objeto FormData con los valores del formulario

    console.log("Nombre:", datos.get("nombre"));
    console.log("Correo:", datos.get("correo"));
  }

  form.addEventListener('submit', handlerFormulario);
</script>
```

## Patrón Estado → Render

Cuando una aplicación maneja listados que cambian (se agregan, editan, filtran u ordenan ítems), conviene separar **los datos** de **lo que se muestra en pantalla**:

1. **Estado en memoria**: guardamos los datos en una variable (por ejemplo, una lista de objetos).
2. **Función de render**: una función recorre ese estado, limpia el contenedor del DOM y vuelve a dibujar los elementos HTML actualizados.
3. **Eventos**: cada acción del usuario modifica el estado en memoria y vuelve a llamar a la función de render.

```html
<ul id="lista-tareas"></ul>
<button id="btn-agregar">Agregar tarea</button>

<script>
  // 1. Estado en memoria
  let tareas = [
    { texto: "Repasar HTML y CSS" },
    { texto: "Practicar DOM" },
  ];

  // 2. Renderizar el estado en el DOM
  function mostrarListado() {
    const contenedor = document.querySelector('#lista-tareas');
    contenedor.innerHTML = "";

    tareas.forEach((tarea) => {
      const li = document.createElement('li');
      li.innerText = tarea.texto;
      contenedor.append(li);
    });
  }

  // 3. El evento actualiza el estado y vuelve a renderizar
  document.querySelector('#btn-agregar').addEventListener('click', () => {
    tareas.push({ texto: "Nueva tarea" });
    mostrarListado();
  });

  mostrarListado();
</script>
```

---

- [Referencia de Eventos en MDN](https://developer.mozilla.org/es/docs/Web/API/Document_Object_Model/Events)
- [`addEventListener()` en MDN](https://developer.mozilla.org/es/docs/Web/API/EventTarget/addEventListener)

---

## Detalles adicionales

<details>
    <summary>Clonar elementos con <code>cloneNode()</code></summary>

Una forma alternativa de crear elementos nuevos es hacerlo a partir de otros ya existentes en el DOM usando `.cloneNode()`.

Si le pasamos como parámetro el valor `true`, hace una *clonación profunda* (copia todos los elementos internos también); de otra manera hace una *clonación superficial* donde solo se copia el elemento más externo.

```html
<!-- Estructura en HTML -->
<div class="padre">
	<p class="hijo">Elemento Hijo</p>
</div>
```

```js
let elementoPadre = document.querySelector('div.padre');

// hacemos una *clonación superficial* de elementoPadre en copiaSuperficial
let copiaSuperficial = elementoPadre.cloneNode();

// hacemos una *clonación profunda* de elementoPadre (y todo su contenido) en copiaProfunda
let copiaProfunda = elementoPadre.cloneNode(true);
```

</details>

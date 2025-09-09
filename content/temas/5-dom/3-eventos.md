---
title: "5.3: Eventos"
---

En JavaScript, los eventos son acciones que ocurren en la página web y a las que podemos responder con código, como un clic en un botón, el envío de un formulario, mover el mouse o presionar una tecla. 

Para reaccionar a los eventos se utilizan **_manejadores de eventos_ (event handlers)**, que son funciones que se ejecutan cuando ocurre un evento específico.

Por ejemplo, con el atributo `onclick="miFuncion()"` o con el código `addEventListener("click", miFuncion)` podemos indicar que al hacer clic en un elemento se ejecute la función `miFuncion`. 

Se puede hacer directo desde HTML:

```html
<!-- Evento desde HTML -->
<button onclick="miFuncion()">
	Hacer Algo
</button>

<script>
	// se define el handler de evento desde JS
	function miFuncion() {
		console.log("Hice Algo!")
	}
</script>
```

O también se puede hacer desde JS, usando el DOM

```html
<!-- No se asocia desde HTML -->
<button>
	Hacer Algo
</button>

<script>
	// se define el handler de evento desde JS
	function miFuncion() {
		console.log("Hice Algo!")
	}

	// y también se asocia el evento al elemento desde JS
	document.querySelector('button').addEventListener('click', miFuncion);
</script>
```

---

## Ejemplos

Algunos ejemplos de cómo usar diferentes eventos en elementos HTML.

### `Click` en botón

```html
<button id="boton">Hacé click</button>

<script>
  // la funcion que quiero ejecutar al hacer click
  function clickHandler() {
    alert("Hiciste click en el botón!");
  }

  // asocio función al elemento
  const boton = document.querySelector('#boton');
  boton.addEventListener("click", clickHandler);
</script>
```

### `Input` en un campo de texto

```html
<input type="text" id="nombre" placeholder="Escribí tu nombre">
<p id="saludo"></p>

<script>
  const campoTexto = document.querySelector('#nombre');
  const parrafoSaludo = document.querySelector('#saludo');

  // puedo definir la función hander directamente
  campoTexto.addEventListener("input", () => {
    parrafoSaludo.textContent = "Hola, " + campoTexto.value;
  });
</script>
```

### `Submit` en un formulario

Las funciones que se usan como manejadoras de eventos reciben como parámetro un objeto `Event` con detalles del evento que se ejecutó.

```html
<form id="miFormulario" onsubmit="handlerFormulario">
  <input type="text" name="nombre" placeholder="Nombre" required>
  <input type="email" name="correo" placeholder="Correo">
  <button type="submit">Enviar</button>
</form>

<script>
  function handlerFormulario(objetoEvent) {
    objetoEvent.preventDefault(); // Evitar recargar la página
    const datos = new FormData(form); // Crear objeto FormData con los valores del formulario

    console.log("Nombre:", datos.get("nombre"));
    console.log("Correo:", datos.get("correo"));
  };
</script>
```

---

- Referencia de Eventos en MDN: https://developer.mozilla.org/es/docs/Web/API/Document_Object_Model/Events
- `addEventListener()` en MDN: https://developer.mozilla.org/es/docs/Web/API/EventTarget/addEventListener
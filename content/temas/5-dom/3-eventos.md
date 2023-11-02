---
title: "5.3: Eventos"
---

Otra funcionalidad que vimos fue la de conectar eventos con nuestro código.

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

O también se puede hacer desde el DOM

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

Referencia de `addEventListener()`: https://developer.mozilla.org/es/docs/Web/API/EventTarget/addEventListener

---
title: "3.3: tp-3 (Especificidad)"
---

Tercer trabajo práctico, donde nos enfrentamos al desafío de usar la especificidad de los selectores CSS para aplicar estilos.

# Consigna

Agregar el siguiente archivo HTML dentro del repositorio de entregas creado en GitHub, en la ubicación `/tp-3/index.html`.

```html
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>TP3 - Especificidad CSS</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style type="text/css">
		body {
			font-size: 18px;
			background-color: #ffe;
			color: #210;
		}

		#contenedor {
			max-width: 40ch;
			margin: 2rem auto;
			padding: 1rem;
		}

		h1 {
			font-size: 2rem;
			text-align: left;
		}

		p {
			font-family: sans-serif;
		}

		#primer-parrafo {
			font-size: 1.3rem;
			background-color: #eec;
		}

		p.importante em {
			font-weight: bold;
			color: #144;
		}

		p.novelas a {
			outline: none;
			text-decoration: none;
		}
		p.novelas a:hover {
			text-decoration: underline;
			background-color: #ccd;
		}

		body p.fuente.parrafo {
			color: #999 !important;
			font-size: 0.9rem;
			opacity: 75%;
			text-align: center;
		}

	</style>
</head>
<body>
	<article id="contenedor">
		<h1 class="titulo">Gandalf</h1>
		
		<p id="primer-parrafo" class="importante parrafo">
			Gandalf es un personaje ficticio perteneciente al <em>legendarium</em> del escritor británico <a href="https://es.wikipedia.org/wiki/J._R._R._Tolkien">J. R. R. Tolkien.</a>
		</p>
		
		<p class="novelas parrafo">
			Es uno de los principales personajes de las novelas <a href="https://es.wikipedia.org/wiki/El_hobbit">El hobbit</a> y <a href="https://es.wikipedia.org/wiki/El_Señor_de_los_Anillos">El Señor de los Anillos</a>, aunque también aparece en <span class="complicado" style="color: #622">El Silmarillion</span>, donde se narran sus orígenes.
		</p>
	</article>

	<p class="fuente parrafo">
		Fuente: <a href="https://es.wikipedia.org/wiki/Gandalf">https://es.wikipedia.org/wiki/Gandalf</a>
	</p>
</body>
</html>
```

# Reglas

Crear en el repositorio de Github un archivo `style.css` al mismo nivel que el archivo HTML anterior, esto sería en `/tp-3/style.css`.

Dentro de este archivo CSS, siempre teniendo en cuenta las reglas ya existentes en el HTML, implementar las siguientes reglas:

1. Una regla para centrar (declaración `text-align: center`) el título `<h1>`.

2. Una regla para aplicar una fuente con serifas (declaración `font-family: serif;`) a todos los párrafos del documento.

3. Una regla para que el elemento con id `#primer-parrafo` tenga color de fondo `#CEE`.

4. Una regla para cambiar el color a `#933` para los elementos `<em>` del primer párrafo.

5. Una regla para que todos los links muestren outline (declaración `outline: 1px solid #333`).

6. Una regla para que el texto `p.fuente` tenga su opacidad en 100% (se puede usar la declaración `opacity: 100%;`).

7. Una regla para que los párrafos sin id **no** tengan sombra (`text-shadow: none`). 

# Bonus Track

1. Una regla para que el texto del elemento `p.fuente` tenga color `#000`.

2. Una regla para que el elemento con la clase `.complicado` aparezca en negrita y con color `#C62`.

> **Atención**
> 
> - No modificar la estructura de las etiquetas HTML ya existentes.
> - Antes de utilizar `!important`, asegurarse de que no exista otra alternativa.
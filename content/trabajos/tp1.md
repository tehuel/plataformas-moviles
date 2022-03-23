---
title: "TP1 - HTML y GitHub"
---

Primer trabajo práctico. Vamos a arrancar armando nuestro repositorio en GitHub y publicándolo en la web con GitHub Pages.

## Fecha de Entrega

Lunes 28 de Marzo. Lo vamos a revisar durante la clase

<span id="timer"></span>

<script type="text/javascript">
    function updateTimer() {
        const future = new Date('2022-03-28T18:00:00-03:00')
        const now = new Date();
        const elapsed = future - now > 0;
        const diff = Math.abs(future - now);

        const days = Math.floor(diff / (1000 * 60 * 60 * 24));
        const hours = Math.floor(diff / (1000 * 60 * 60));
        const mins = Math.floor(diff / (1000 * 60));
        const secs = Math.floor(diff / 1000);
        
        const d = days;
        const h = hours - days * 24;
        const m = mins - hours * 60;
        const s = secs - mins * 60;

        const message = {
            e: elapsed ? "Faltan" : "Pasó hace",
            d: d != 1 ? `${d} días` : `${d} día`,
            h: h != 1 ? `${h} horas` : `${h} hora`,
            m: m != 1 ? `${m} minutos` : `${m} minuto`,
            s: s != 1 ? `${s} segundos` : `${s} segundo`,
        }            
        document.getElementById("timer").innerText = `${message.e} ${message.d}, ${message.h}, ${message.m} y ${message.s}.`
    }
    updateTimer();
    setInterval('updateTimer()', 1000);
</script>

## Consigna

### Primera Parte: Repositorio en GitHub

- Crear usuario en [GitHub](https://github.com) (si es que todavía no tienen).
- Crear un nuevo repositorio, con el nombre `plataformas-moviles-entregas`.
- Dentro del repositorio recién creado, agregar:
    - un archivo `index.html` en el nivel raíz.
    - una carpeta `tp-1` en el nivel raíz.
    - un archivo `index.html` dentro de la carpeta `tp-1`. Debería quedar con la forma: ![](/img/tp-1-repositorio.png)
- Activar GitHub Pages. ![](/img/tp-1-pages.png)
    1. Ir a la sección `settings` del repositorio.
    2. Ir a la sección `pages` dentro de `settings` del repositorio.
    2. Seleccionar la branch `main` y la carpeta `root` del repositorio.
    2. Click en `save` para guardar los cambios.

### Segunda Parte: Contenido en HTML

- Elegir un artículo de la wikipedia
- Seleccionar todo el texto del artículo y copiarlo en el archivo HTML que creamos en `tp-1/index.html`.
- Agregar todas las etiquetas HTML que considere necesarias para que el artículo mantenga una estructura correcta, teniendo en cuenta: 
    - Respetar los niveles de *heading*, usando las etiquetas de [`<h1>` hasta `<h6>`](https://developer.mozilla.org/es/docs/Web/HTML/Element/Heading_Elements).
    - Conservar los resaltados con [`<strong>`](https://developer.mozilla.org/es/docs/Web/HTML/Element/strong) y [`<em>`](https://developer.mozilla.org/es/docs/Web/HTML/Element/em).
    - Pensar en la [semántica de las etiquetas](https://es.wikipedia.org/wiki/HTML_semántico).
- Subir y publicar en GitHub el archivo HTML creado.
--- 

Tip: Para navegar hacia un artículo random de la wikipedia se puede usar este link especial: https://es.wikipedia.org/wiki/Special:Random

---
title: "3.4: Media Queries"
---

## Media Queries

La idea de Media Queries es hacer consultas sobre las características del dispositivo.

Con esto podemos aplicar de forma condicional estilos CSS.

https://developer.mozilla.org/es/docs/Web/CSS/Specificity

## Documento de ejemplo

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
@media print {
    p {
        color: blue !important;
    }
}

@media screen {
    p {
        background-color: yellow;
    }
}

@media (min-width: 320px) {
    html {
        background-color: cadetblue;
    }
}

#primer-parrafo {
    color: gray;
}

.parrafo {
    color: green;
}

p {
    color: red;
}

* {
    color: blueviolet;
}
    </style>
</head>
<body>
    <p 
        class="parrafo" 
        id="primer-parrafo"
    >
        Hola Mundo
    </p>
    <p id="mensaje">Estoy en una pantalla chica!</p>
</body>
</html>
```

## Compatibildad de Navegadores

Hablamos por un momento de los distintos niveles de compatibilidad que presentan las versiones de los navegadores para las diferentes media queries (y para cualquier otra característica de la plataforma web), y que nosotros como programadores vamos a decidir si esa compatibilidad es importante para nuestros proyectos.

Por ejemplo, la siguiente tabla se puede encontrar respecto a [la regla `@media` de CSS en MDN](https://developer.mozilla.org/es/docs/Web/CSS/@media#compatibilidad_con_navegadores):
![Tabla de Compatibilidad](/img/compatibilidad-media-css.png)

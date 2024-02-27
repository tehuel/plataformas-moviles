---
title: "3.3: Especificidad"
---

Se entiende la especifidad como una importancia que se le da a las declaraciones de CSS para determinar que reglas aplicar sobre los elementos.

La especifidad solo se aplica cuando el mismo elemento es objeto de múltiples declaraciones.

Por ejemplo, si se tuviese definido un estilo para todas las imágenes de un sitio, pero quisiéramos que la imagen principal se viese diferente, se deberá agregar un selector de mayor importancia que el resto.

## Tipos de selectores

- Selectores de tipo (etiquetas): Afectan a todos los elementos con la misma etiqueta.
- Selectores de Clase: Sobrescriben a los electores de tipo. Afectan a todos los elementos con la misma clase.
- Selectores de ID: Sobreescriben a los dos anteriores. Impacta en los elementos en base a su id.
- Estilo Inline: Son aquellos escritos dentro de la etiqueta html(`<p style="font-weight: bold"></p>`). Sobreescribe a los estilos definidos en el archivo .css. Se puede decir que tienen la mayor especifidad
- Important: Es una excepcion que, al emplearse, sobrescribe a cualquier otro selector. Su uso es una **mala práctica** y debería evitarse.

## Ejemplos

### Cálculo de Especificidad

![](/img/specificity.png)

### Batificity

A modo de ejemplo, existe el sitio http://batificity.com/
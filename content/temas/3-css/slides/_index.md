---
title: "Presentación CSS"
outputs:
  - "Reveal"
---

# CSS

{{% fragment %}}
Cascading Style Sheets
{{% /fragment %}}

{{% fragment %}}
*Hojas de Estilo en Cascada*
{{% /fragment %}}

---

![](/img/css-peter.gif)

---

## ¿Para qué usamos CSS?

{{% fragment %}}
Para definir cómo se va a ver el contenido que presentamos
{{% /fragment %}}

---

## ¿Cómo incluimos CSS?

{{% fragment %}}
Vinculando un archivo CSS con `<link />`

`<link rel="stylesheet" href="estilo.css" />`
{{% /fragment %}}

{{% fragment %}}
Definiendo el CSS dentro `<style>`

`<style>...</style>`
{{% /fragment %}}

{{% fragment %}}
Agregando (inline) el atributo `style=""`

`<p style="...">`
{{% /fragment %}}

---

![](/img/regla-css.png)

---

# Selectores

{{% fragment %}}
Contestan a la pregunta: "**¿Qué queremos estilizar?**"
{{% /fragment %}}

{{% fragment %}}
- `<etiquetas>`
- `.clases`
- `#id`
- Selector universal (`*`)
- `!important`
{{% /fragment %}}

---

*Los selectores pueden unirse para combinar su funcionamiento*

{{% fragment %}}

```css
p.resaltado {
/**/
}
```

{{% /fragment %}}

{{% fragment %}}
selecciona todos los párrafos que tengan la clase "resaltado"
{{% /fragment %}}

{{% fragment %}}
```css
div p {
/**/
}
```

{{% /fragment %}}

{{% fragment %}}
selecciona todos los párrafos que tengan algun ancestro div
{{% /fragment %}}


---

# Especificidad

---

![](/img/specificity.png)

--- 

Demo

[Batificity](http://batificity.com/)

---

links

- Especificación: https://www.w3.org/Style/CSS/specs.en.html
- Concepto: https://developer.mozilla.org/es/docs/Learn/CSS/First_steps/What_is_CSS
- Selectores: https://developer.mozilla.org/es/docs/Learn/CSS/First_steps/How_CSS_is_structured
- Referencia: https://developer.mozilla.org/es/docs/Web/CSS/Reference
- Referencia Selectores: https://developer.mozilla.org/es/docs/Web/CSS/Reference#selectores
- Epecificidad: https://developer.mozilla.org/es/docs/Web/CSS/Specificity

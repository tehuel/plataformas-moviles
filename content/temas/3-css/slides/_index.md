---
title: "Presentación CSS"
outputs:
  - "Reveal"
---

# CSS

{{% fragment %}}
Cascade Style Sheets
{{% /fragment %}}

{{% fragment %}}
*Hojas de estilo en cascada*
{{% /fragment %}}

---

# ¿Para qué usamos CSS?

{{% fragment %}}
Para definir cómo se va a ver el contenido que presentamos
{{% /fragment %}}

---

# ¿Cómo incluíamos CSS?

{{% fragment %}}
- Usando `<link rel="stylesheet" href="miestilo.css" />`
{{% /fragment %}}
{{% fragment %}}
- Con una etiqueta `<style>`
{{% /fragment %}}
{{% fragment %}}
- Agregando el atributo `style=""` a una etiqueta html (inline)
{{% /fragment %}}

---

# Sintaxis

Para escribir css usamos reglas

```css
p {
  color: red;
}
```

---

# Sintaxis

{{< figure src="/img/regla-css.png" >}}

---

# Selectores

Contestan a la pregunta: "**¿Qué queremos estilizar?**"
{{% fragment %}}
- <Etiqueta>
- .clases
- #ID
- Selector universal (*)
{{% /fragment %}}
- !important

---

*Nota: Los selectores pueden unirse para combinar su funcionamiento*

```css
/* selecciona todos los párrafos que tengan la case "resaltado" */
p.resaltado {
    /**/
}

/* selecciona todos los párrafos que tengan algun ancestro div */
div p {
    /**/
}
```

---

# Especificidad

Cálculo para determinar que reglas aplicar sobre los elementos

{{< figure src="/img/specificity.png" >}}

---

Links:

- Concepto: https://developer.mozilla.org/es/docs/Learn/CSS/First_steps/What_is_CSS
- Selectores: https://developer.mozilla.org/es/docs/Learn/CSS/First_steps/How_CSS_is_structured
- Epecificidad: https://developer.mozilla.org/es/docs/Web/CSS/Specificity



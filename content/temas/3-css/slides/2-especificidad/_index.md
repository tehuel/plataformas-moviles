---
title: "2 - Especificidad en CSS"
weight: 20
outputs:
  - "Reveal"
---

# Especificidad

---

![Diagrama de cálculo de especificidad de selectores CSS](/img/specificity.png)

---


|||
|-|-|
| selector universal | `*` |
| elementos (pseudo-elementos)  | `p` |
| clases, atributos (pseudo-clases) | `.resaltado` |
| ids | `#primero` |
| estilos en línea (inline) | `<p style=".">` |
| modificador | `!important` |

---

Demo

[Batificity](http://batificity.com/)

---

links

- Especificidad: https://developer.mozilla.org/es/docs/Web/CSS/Specificity
- Especificación W3C: https://www.w3.org/TR/selectors/#specificity-rules
- Batificity: http://batificity.com/

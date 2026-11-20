# Plan de Reestructuración de la Materia

Documento de trabajo vivo para diseñar, revisar y acordar la reorganización de contenidos, clases y trabajos prácticos de **Proyecto de Desarrollo de Software para Plataformas Móviles** antes de aplicar cambios sobre `content/` y `layouts/`.

---

## 1. Objetivo y principios de diseño

### Los 6 criterios infaltables

Tomando como norte el **Trabajo Integrador** y el enfoque de **Plataformas Móviles** (7.º año de Programación), el camino principal debe garantizar seis capacidades irrenunciables:

1. **Publicación real y enfoque web multiplataforma**: entender por qué se elige la plataforma web para llegar a móvil y desktop, y manejar el flujo **Git + GitHub + GitHub Pages** para publicar y probar resultados en un dispositivo real desde el inicio.
2. **HTML estructurado, semántico y con accesibilidad básica**: usar jerarquía correcta de encabezados, etiquetas semánticas (`header`, `nav`, `main`, `section`, `footer`), formularios bien etiquetados (`<label>` + `<input>`) e imágenes con `alt`. La accesibilidad deja de ser un borrador aislado y pasa a integrarse como criterio transversal.
3. **CSS esencial y diseño responsivo práctico**: dominar selectores básicos, noción práctica de cascada y diseño *mobile-first* apoyado en el **sistema de grilla y componentes de Bootstrap** para resolver interfaces adaptables sin empantanarse en CSS artesanal de nicho.
4. **JavaScript orientado a datos reales**: consolidar sintaxis, funciones, listas, objetos y colecciones de objetos (`forEach`, `map`, `filter`, `sort`, `includes`), que son la estructura exacta con la que llegan los datos de una API.
5. **Ciclo interactivo del DOM**: seleccionar elementos, responder a eventos (`click`, `input`, `submit` con `preventDefault`) y sostener el patrón **Estado en memoria → Renderizar en el DOM → Evento actualiza estado → Volver a renderizar**.
6. **Consumo de APIs HTTP y JSON**: interpretar documentación, comprender *request/response* y códigos de estado, usar `fetch()` con `async/await`, manejar errores y estados de carga, y mostrar los resultados en la interfaz.

### Criterios estructurales

- **Los apuntes como guión y disparadores de clase**: los temas breves que hoy están en páginas sueltas no se eliminan; se consolidan en apuntes por bloque de clase manteniendo cada disparador como un subtítulo `##` visible para guiar la explicación en el aula.
- **Ritmo 1 clase de tema nuevo → 1 TP de aplicación**: cada encuentro que introduce un tema viene acompañado de un trabajo práctico concreto para aplicarlo (con dos excepciones intencionales: la **Clase 1** introductoria/diagnóstica sin TP entregable y el tramo de **APIs**, dividido en dos clases para acompañar el salto de complejidad).
- **Estándar editorial de Unidad 6**: cuerpo principal conciso y accionable + bloque final `## Detalles adicionales` con secciones colapsables (`<details>`).
- **Opcionales dentro de su unidad**: el material desplazado del camino principal no se borra; queda clasificado dentro de su propia unidad (`opcional: true`) para reutilizarse como desafío, práctica guiada o repaso según las necesidades de cada curso.

---

## 2. Resumen comparativo (Antes vs. Después)

| Dimensión | Estado actual | Propuesta |
| :--- | :---: | :---: |
| **Unidades** | 8 (`0-base` a `7-integrador`) | **7** (`1-web` a `7-integrador`) |
| **Apuntes / clases temáticas** | 28 apuntes (+1 borrador) desparejos | **14 clases temáticas** (+ tramo iterativo del Integrador) |
| **TPs obligatorios** | 18 (+ Trabajo Integrador) | **12 TPs obligatorios** (+ Trabajo Integrador) |
| **Opcionales clasificados** | 0 (todo en el camino principal) | **5 TPs opcionales + 1 actividad diagnóstica + 1 guía opcional + `<details>`** |

---

## 3. Programa propuesto clase a clase

### Unidad 1: La Web y el Entorno de Trabajo

- **Clase 1: La Plataforma Web y Diagnóstico** *(sin TP)*
  - *Disparadores:* plataformas móviles vs. desarrollo nativo, cómo funciona un navegador y HTTP, historia y monopolios, estándares y especificaciones.
  - *Actividad en clase:* Diagnóstico inicial *(sin entrega obligatoria de TP)*.
- **Clase 2: Git, GitHub y GitHub Pages**
  - *Disparadores:* Git vs. GitHub, usuario, repositorio de entregas y publicación con GitHub Pages.
  - **TP 1: Repositorio de entregas y GitHub Pages**

### Unidad 2: HTML

- **Clase 3: HTML — Estructura, Semántica y Accesibilidad básica**
  - *Disparadores:* estructura del documento, etiquetas y atributos, HTML semántico, criterios básicos de accesibilidad (`alt`, `label`, encabezados, contraste).
  - **TP 2: Artículo estructurado con HTML**

### Unidad 3: CSS y Diseño Responsivo

- **Clase 4: CSS — Sintaxis, Selectores y Cascada**
  - *Disparadores:* inclusión de CSS, anatomía de una regla, selectores básicos/combinados/pseudoclases, noción práctica de cascada y especificidad.
  - **TP 3: Selectores CSS**
  - *Opcional / desafío:* Especificidad CSS.
- **Clase 5: Diseño Responsivo y Grilla de Bootstrap**
  - *Disparadores:* diseño responsivo, media queries y breakpoints; framework vs. librería; instalación de Bootstrap, contenedor vs. contenido, grilla de 12 columnas.
  - **TP 4: Grilla responsiva con Bootstrap** *(3 layouts responsivos)*
  - *Opcional / desafío:* Media Queries avanzadas.
- **Clase 6: Componentes de Bootstrap y Maquetado**
  - *Disparadores:* componentes reutilizables (cards, navbar, botones, carrusel, formularios) y colores semánticos.
  - **TP 5: Maquetado responsivo desde diseño** *(wireframe Figma)*
  - *Opcional / práctica guiada:* Primeros pasos con Bootstrap.

### Unidad 4: JavaScript

- **Clase 7: JavaScript — Entornos, Sintaxis y Funciones**
  - *Disparadores:* stack front/back, compilado vs. interpretado, tipado dinámico; tipos primitivos, condicionales, bucles y funciones.
  - **TP 6: Funciones en JavaScript**
- **Clase 8: JavaScript — Listas (Arrays)**
  - *Disparadores:* definición, operaciones básicas, recorridos y métodos clave (`forEach`, `map`, `filter`, `sort`, `includes`).
  - **TP 7: Listas en JavaScript**
- **Clase 9: JavaScript — Objetos**
  - *Disparadores:* modelado de entidades, propiedades y valores, acceso por punto y corchetes, asignación y comparación.
  - **TP 8: Objetos en JavaScript**
- **Clase 10: JavaScript — Listas y Objetos**
  - *Disparadores:* colecciones como arrays de objetos, inserción y acceso combinado, operaciones (`sort`, `map`, `filter`) sobre colecciones.
  - **TP 9: Listas y Objetos en JavaScript**

### Unidad 5: DOM y Eventos

- **Clase 11: DOM y Eventos básicos** *(interacción sobre elementos existentes)*
  - *Disparadores:* interfaces y APIs del navegador; árbol del DOM; buscar y modificar elementos (`querySelector`, `innerText`, `classList`, atributos); eventos básicos (`click`, `addEventListener`).
  - **TP 10: Tablero de Puntos**
  - *Opcional / alternativo:* Editor de Texto.
- **Clase 12: DOM dinámico, Formularios y Estado**
  - *Disparadores:* crear y eliminar nodos (`createElement`, `append`, `remove`); formularios y `submit` (`preventDefault`, `input`); patrón **Estado (array de objetos) → Render**.
  - **TP 11: Lista de Contactos**
  - *Opcional / práctica guiada:* Lista de Compras.

### Unidad 6: APIs HTTP

- **Clase 13: Arquitectura, JSON y Primer consumo de una API**
  - *Disparadores:* interfaces → APIs → APIs HTTP; separación front-end / back-end; formato JSON (`parse`/`stringify`); request/response, endpoints, parámetros y pestaña Red; primer pedido con `fetch` y `async/await`.
  - **TP 12 (Parte 1) / Práctica guiada: Explorar una API y listar resultados en el DOM** *(ejemplo Lorem Picsum o listado inicial)*
- **Clase 14: Consumo completo de APIs y Manejo de Errores**
  - *Disparadores:* manejo de errores (`response.ok`, `try/catch`), estados de carga (spinner / deshabilitar botón), consulta de detalle a partir de una selección.
  - **TP 12 (Entrega completa): Aplicación con API externa** *(PokéAPI o TheMealDB)*
  - *Opcional / puente al Integrador:* Guía para usar Google Sheets como API.

### Unidad 7: Trabajo Integrador

- **Clases 15 en adelante: Proyecto Integrador en equipo**
  - Iteraciones semanales con tablero Kanban, diseño responsivo probado en móvil y desktop, consumo de API externa y presentación final.

---

## 4. Mapeo de contenidos actuales → destino propuesto

| Archivo(s) actual(es) en `content/temas/` | Destino propuesto | Notas de migración |
| :--- | :--- | :--- |
| `0-base/0-conceptos.md` + `1-web/1-navegadores.md` + `1-web/2-historia.md` + `1-web/3-especificaciones.md` | **Clase 1: La Plataforma Web y Diagnóstico** | Consolidar todos los disparadores como subtítulos `##`. |
| `0-base/0-tp-diagnostico.md` | **Actividad en Clase 1 (sin entrega de TP)** | Mantener como actividad diagnóstica inicial fuera de las entregas obligatorias. |
| `0-base/1-github.md` | **Clase 2: Git, GitHub y GitHub Pages** | Pasa a ser la segunda clase dentro de Unidad 1. |
| `0-base/1-tp-github.md` (`tp-0`) | **TP 1 (obligatorio)** | Entrega inicial de repositorio y GitHub Pages. |
| `2-html/1-estructura.md` + `2-html/2-semantica.md` + `2-html/3-accesibilidad.md` (borrador) | **Clase 3: HTML — Estructura, Semántica y Accesibilidad básica** | Unificar en un recorrido continuo; accesibilidad deja de ser un borrador vacío. |
| `2-html/1-tp-html.md` (`tp-1`) | **TP 2 (obligatorio)** | Artículo estructurado desde Wikipedia. |
| `3-css/1-sintaxis.md` + `3-css/2-selectores.md` + `3-css/3-especificidad.md` | **Clase 4: CSS — Sintaxis, Selectores y Cascada** | Noción práctica en el cuerpo principal; cálculo de especificidad a `<details>`. |
| `3-css/2-tp-selectores.md` (`tp-2`) | **TP 3 (obligatorio)** | Práctica central de selectores CSS. |
| `3-css/3-tp-especificidad.md` (`tp-3`) | **Opcional / desafío** | Queda dentro de Unidad 3 como desafío opcional. |
| `3-css/4-media-queries.md` + `3-css/5-frameworks.md` + `3-css/6-bootstrap.md` + `3-css/61-grilla.md` | **Clase 5: Diseño Responsivo y Grilla de Bootstrap** | Media queries de nicho (`print`, `hover`, `dppx`) y comparativa larga a `<details>`. |
| `3-css/4-tp-media-queries.md` (`tp-4`) | **Opcional / desafío** | Desafío opcional de media queries avanzadas. |
| `3-css/6-tp-bootstrap.md` (`tp-5`) | **Opcional / práctica guiada** | Práctica guiada previa o de apoyo en clase. |
| `3-css/61-tp-bootstrap-grilla.md` (`tp-6`) | **TP 4 (obligatorio)** | Los 3 layouts responsivos con grilla de 12 columnas. |
| `3-css/62-componentes.md` | **Clase 6: Componentes de Bootstrap y Maquetado** | Componentes reutilizables y colores semánticos. |
| `3-css/62-tp-bootstrap-2.md` (`tp-7`) | **TP 5 (obligatorio)** | Maquetado responsivo desde wireframe en Figma. |
| `4-js/1-contexto.md` + `4-js/2-sintaxis.md` | **Clase 7: JavaScript — Entornos, Sintaxis y Funciones** | Integrar los disparadores de entornos al inicio del apunte de sintaxis. |
| `4-js/2-tp-funciones.md` (`tp-8`) | **TP 6 (obligatorio)** | Ejercicios de funciones en JavaScript. |
| `4-js/3-listas.md` | **Clase 8: JavaScript — Listas (Arrays)** | Casos avanzados (arrays dispersos, `delete`, listas anidadas, `reduce`) a `<details>`. |
| `4-js/3-tp-listas.md` (`tp-9`) | **TP 7 (obligatorio)** | Ejercicios de listas en JavaScript. |
| `4-js/4-objetos.md` | **Clase 9: JavaScript — Objetos** | Propiedades, acceso por punto/corchetes y asignación. |
| `4-js/4-tp-objetos.md` (`tp-10`) | **TP 8 (obligatorio)** | Ejercicios de objetos en JavaScript. |
| `4-js/5-listas-y-objetos.md` | **Clase 10: JavaScript — Listas y Objetos** | Colecciones de objetos y operaciones combinadas. |
| `4-js/5-tp-listas-y-objetos.md` (`tp-11`) | **TP 9 (obligatorio)** | Ejercicios de colecciones de objetos. |
| `5-dom/1-interfaces.md` + `5-dom/2-dom.md` (lectura/modificación) + `5-dom/3-eventos.md` (`click`) | **Clase 11: DOM y Eventos básicos** | Métodos legacy (`getElementById`, etc.) y `cloneNode` en `<details>`. |
| `5-dom/3-tp-tablero.md` (`tp-15`) | **TP 10 (obligatorio)** | Sube como primer TP de DOM por su menor complejidad. |
| `5-dom/3-tp-editor.md` (`tp-12`) | **Opcional / alternativo a Tablero** | Queda disponible en Unidad 5 como práctica o alternativa. |
| `5-dom/2-dom.md` (creación/eliminación) + `5-dom/3-eventos.md` (`submit`, `input`, Estado → Render) | **Clase 12: DOM dinámico, Formularios y Estado** | Explicitar el patrón Estado (array de objetos) → Render. |
| `5-dom/3-tp-lista-contactos.md` (`tp-14`) | **TP 11 (obligatorio)** | Consolida estado en memoria, renderizado y filtros. |
| `5-dom/3-tp-lista-compras.md` (`tp-13`) | **Opcional / práctica guiada** | Queda en Unidad 5 como práctica guiada previa. |
| `6-api/1-arquitectura.md` + `6-api/2-json.md` + `6-api/3-api-http.md` + `6-api/4-ejemplo-1.md` | **Clases 13 y 14: APIs HTTP** | Mantener la estructura actual y sus bloques `<details>`. |
| `6-api/5-tp-api.md` (`tp-16`) | **TP 12 (obligatorio)** | PokéAPI / TheMealDB (en 2 hitos o entrega única al cierre de Clase 14). |
| `6-api/4-ejemplo-2.md` | **Guía opcional / recurso para el Integrador** | Se enlaza como puente práctico hacia el Trabajo Integrador. |
| `7-integrador/_index.md` | **Unidad 7 / Trabajo Integrador** | Incluirlo también al cierre del listado en `/trabajos-practicos/`. |
| `1-web/slides/`, `2-html/slides/`, `3-css/slides/` | **Se conservan** | Enlazadas desde la cabecera de cada unidad sin mezclarse en la lista de apuntes. |

---

## 5. Cambios técnicos previstos en Hugo

*(A detallar e implementar una vez cerradas las decisiones de contenido.)*

- **Frontmatter unificado**: incorporar `weight`, `tipo` (`"apunte"` | `"tp"` | `"actividad"`) y `opcional: true | false` en las páginas de `content/temas/` para dejar de depender de prefijos en nombres de archivo o en el título.
- **`layouts/_default/list.html` y `layouts/partials/badges.html`**: botón a Presentaciones (si existen) y un único listado por unidad ordenado por `weight` según el orden de las clases (tema → TP del tema → opcionales del tema → siguiente tema), con badges separados para el tipo (`TP`, `Actividad en clase`, `Guía`) y para la opcionalidad (`Opcional`).
- **`layouts/trabajos-practicos/list.html`**: mostrar un único listado cronológico agrupado por unidad (sin separar principal/opcional en bloques distintos), identificando cada entrega con sus badges (`TP`, `Actividad en clase`, `Opcional`) e incluyendo el **Trabajo Integrador** al cierre.
- **Limpiezas puntuales detectadas durante la revisión**:
  - `content/temas/3-css/4-media-queries.md`: quitar las reglas de especificidad pegadas al final del bloque `<style>` del ejemplo.
  - `content/temas/3-css/6-tp-bootstrap.md`: revisar las clases Bootstrap ya incluidas en el HTML inicial (`table`, `form-control`, `btn btn-primary`) antes de que el estudiante instale el framework.
  - `content/temas/4-js/3-tp-listas.md`: explicitar en `contarAprobados` cuál es la nota mínima de aprobación.
  - Agregar en los TPs de Bootstrap, DOM y APIs un paso de verificación responsive (DevTools y prueba en celular real vía GitHub Pages).

---

## 6. Decisiones resueltas e implementadas

- [x] **Carpetas de entrega de los alumnos**: se adoptaron nombres semánticos (`tp-html/`, `tp-selectores/`, `tp-bootstrap-grilla/`, `tp-bootstrap-layout/`, `tp-funciones/`, `tp-listas/`, `tp-objetos/`, `tp-listas-y-objetos/`, `tp-tablero/`, `tp-lista-contactos/`, `tp-api/`, y los opcionales `tp-especificidad/`, `tp-media-queries/`, `tp-bootstrap-intro/`, `tp-editor/`, `tp-lista-compras/`) para evitar colisiones y futuras renumeraciones.
- [x] **Extensión de los TPs de JavaScript**: se conservaron completas las funciones y casos de prueba de los 4 TPs (`tp-funciones`, `tp-listas`, `tp-objetos`, `tp-listas-y-objetos`), explicitando en `contarAprobados` que la aprobación es con nota mayor o igual a 7.
- [x] **Unidad 6 (APIs en 2 clases)**: se conservaron los 4 apuntes existentes (`1-arquitectura`, `2-json`, `3-api-http`, `4-ejemplo-picsum`), Google Sheets quedó como guía opcional (`ejemplo-google-sheets.md`, `tipo: "guia"`, `opcional: true`) y `tp-api.md` como TP único, indicando en el esquema de la unidad la distribución sugerida en 2 clases.
- [x] **HTML (Clase 3)**: se consolidó Estructura + Semántica + Accesibilidad básica en un único apunte (`content/temas/2-html/1-html.md`), reemplazando el borrador vacío de accesibilidad.
- [x] **Ubicación física de opcionales**: se ubicaron dentro de su unidad correspondiente con `opcional: true` en el frontmatter y separación visual en los templates de unidad y de `/trabajos-practicos/`.
- [x] **Enlace desde `README.md`**: se mantuvo `PLAN-REESTRUCTURACION.md` en la raíz sin referenciarlo desde `README.md` para no mezclar el plan de trabajo con la documentación operativa del sitio.

---
title: "6.5: Ejemplo API con Google Sheets"
---

En este ejemplo se muestra cómo usar Google Sheets como una pequeña base de datos accesible mediante API, transformando su contenido en formato JSON.

Google Sheets es una opción muy conveniente para almacenar y publicar datos porque permite editarlos desde cualquier navegador o dispositivo, sin necesidad de configurar servidores ni bases de datos propias.

## 1. Crear la hoja de cálculo

- Crear una nueva hoja en Google Sheets (puede ser usando [sheets.new](https://sheets.new)).
- Utilizar la primera fila para definir los nombres de los campos (por ejemplo: nombre, email, telefono).
- Abrir el menú “Compartir” y configurar la opción “Cualquier persona con el enlace” - “Lector” para permitir el acceso a la hoja.

{{< figure src="/img/compartir-planilla.png" >}}

## 2. Obtener el ID de la hoja

El ID de la hoja es la parte central de la URL de Google Sheets:

```bash
https://docs.google.com/spreadsheets/d/<ID_DE_LA_PLANILLA>/edit
```

Por ejemplo, en la URL https://docs.google.com/spreadsheets/d/1UC7JtMbxsSQA53OykkaUTbAVAoG208rTNSio1qY7lDM/edit?usp=sharing, el ID es:

```bash
1UC7JtMbxsSQA53OykkaUTbAVAoG208rTNSio1qY7lDM
```

## 3. Convertir la hoja a JSON con `benborgers/opensheet`

Para obtener los datos en formato JSON puede utilizarse el servicio gratuito [opensheet.elk.sh](https://github.com/benborgers/opensheet#readme):

```bash
https://opensheet.elk.sh/<ID_DE_LA_PLANILLA>/<NOMBRE_O_NUMERO_DE_LA_HOJA>
```
En donde: 

- `<ID_DE_LA_PLANILLA>` corresponde al ID obtenido en el paso anterior.
- `<NOMBRE_O_NUMERO_DE_LA_HOJA>` puede ser el nombre de la pestaña o su índice (1 para la primera hoja, 2 para la segunda, etc.).

Para la hoja del ejemplo anterior, la URL queda:

```bash
https://opensheet.elk.sh/1UC7JtMbxsSQA53OykkaUTbAVAoG208rTNSio1qY7lDM/1
```

Al abrir esa URL se obtiene una representación en JSON de los datos de la hoja, como una lista de objetos donde cada objeto representa una fila:

```json
[
  {
    "Planeta": "Mercurio",
    "Tipo": "Terrestre",
    "Diámetro": "4879 km",
    "Lunas": "0"
  },
  {
    "Planeta": "Venus",
    "Tipo": "Terrestre",
    "Diámetro": "12104 km",
    "Lunas": "0"
  }
]
```

## 4. Usar los datos en una aplicación

Con este *endpoint* es posible consumir los datos con `fetch()` desde JavaScript igual que con cualquier otra API HTTP:

```js
async function obtenerPlanetas() {
    const respuesta = await fetch("https://opensheet.elk.sh/1UC7JtMbxsSQA53OykkaUTbAVAoG208rTNSio1qY7lDM/1");
    const planetas = await respuesta.json();
    console.log(planetas);
}
```

Podemos ver un ejemplo completo en funcionamiento que genera una tabla y permite filtrar por texto en tiempo real:
👉 [Ver demo de API con Sheets](/api-sheets.html)

---

## Detalles adicionales

<details>
    <summary>Privacidad de la hoja compartida</summary>

Al configurar el permiso como "Cualquier persona con el enlace - Lector", la hoja y todos sus datos quedan disponibles públicamente en internet. 

**Nunca** guardes contraseñas, claves secretas ni datos personales sensibles en hojas configuradas de esta manera.

</details>

<details>
    <summary>Caché y actualización de datos</summary>

Usando este servicio intermedio, los cambios o ediciones realizados en la hoja de cálculo pueden tardar unos minutos en verse reflejados en el JSON debido al tiempo de caché del servidor.

</details>
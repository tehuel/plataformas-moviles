---
title: "6.4: Ejemplo API con Google Sheets"
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

Al abrir esa URL se obtiene una representación en JSON de los datos de la hoja.

## 4. Usar los datos en una aplicación

Con este _endpoint_ es posible consumir los datos desde cualquier lenguaje o framework que trabaje con JSON y HTTP.

> Nota: Usando este método de conexión, las ediciones y cambios realizados en los datos de la hoja pueden tardar algunos minutos en verse reflejados en el JSON debido a cierto tiempo de cache.


Siguiendo con esta idea podemos construir aplicaciones usando estos datos en JSON, como por ejemplo:
[API Sheets](/api-sheets.html)
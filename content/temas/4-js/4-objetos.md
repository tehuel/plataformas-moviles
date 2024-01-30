---
title: "4.4: Objetos"
---

Los objetos son estructuras que podemos definir para agrupar valores correspondientes a una entidad.

Los objetos se componen de propiedades con sus respectivos valores. Estas propiedades proporcionan información sobre el objeto

## Declaración y creación de Objetos

```js
var objetoAlumno = {
    nombre: "Juan",
    apellido: "Pérez",
    "edad": 18,
    "nombre.y.apellido": "Juan Pérez II",
};
```

Acceder los valores dentro de los campos (atributos, claves) de un objeto


```js
// acceso por sintáxis de punto
alumno.edad;

// acceso por sintáxis de corchetes
alumno["edad"]
alumno["nombre.y.apellido"]

// el acceso por corchetes se puede usar para acceder a campos con nombres calculados
var campoImportante = "nombre";
alumno[campoImportante]
campoImportante = "apellido";
alumno[campoImportante]
```

Tipos de valores dentro de los campos de un objeto

```js
var objetoConDatosDeDistintosTipos = {
    unValorBooleano: true,
    unValorNumerico: 2,
    unValorString: "aaaaa",
    unValorLista: [],
    unValorObjeto: {},
}
```


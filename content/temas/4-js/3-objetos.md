---
title: "4.3: Objetos"
weight: 30
tipo: "apunte"
opcional: false
---

Los objetos son estructuras que podemos definir para agrupar valores correspondientes a una entidad.

Los objetos se componen de propiedades con sus respectivos valores. Estas propiedades proporcionan información sobre el objeto.

## Declaración y creación de Objetos

```js
let alumno = {
    nombre: "Juan",
    apellido: "Pérez",
    "edad": 18,
    "Un.Campo.Apodo": "Jota Pe",
};

let objetoVacio = {};
```

## Acceso a propiedades

```js
// acceso por sintaxis de punto
alumno.edad;

// acceso por sintaxis de corchetes
alumno["edad"]
alumno["Un.Campo.Apodo"]

// el acceso por corchetes se puede usar para acceder a campos con nombres calculados
let campoImportante = "nombre";
alumno[campoImportante]
campoImportante = "apellido";
alumno[campoImportante]
```

## Asignación de valores

```js
// sintaxis de punto
alumno.edad = 19;

// sintaxis de corchetes
alumno["edad"] = 18;
alumno["Un.Campo.Apodo"] = "Juampi";
```

## Tipos de valores en un objeto

```js
let objetoConDatosDeDistintosTipos = {
    unValorBooleano: true,
    unValorNumerico: 2,
    unValorString: "aaaaa",
    unValorLista: [],
    unValorObjeto: {},
}
```

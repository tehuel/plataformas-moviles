---
title: "4.5: Listas y Objetos"
---

Queremos almacenar un listado de alumnos. Evaluamos distintas opciones

```js
// la posicion indica que alumno refiere en los listados
var listadoDeNombres = ["Lionel", "Sahid"]
var listadoDeApellidos = []
var listaDeEdades = [18, 19, 20]
```

```js
// objeto con todos los alumnos
var objetoDeAlumnos = {
    nombre_1: "Lionel",
    apellido_1: "",
    edad_1: 18,

    nombre_2: "Sahid",
    apellido_2: "",
    edad_2: 19,
}
```

```js
// Un objeto para cada alumno, dentro de otro objeto.
var objetoListaAlumnos = {
    alumno_1: {
        nombre: "Lionel",
        apellido: "",
        edad: 18,
    },
    alumno_2: {
        nombre: "Sahid",
        apellido: "",
        edad: 19,
    }
}
```

```js
// un objeto para cada alumno, una lista para contener a todos los alumnos
var listaDeAlumnos = [
    {
        nombre: "Lionel",
        apellido: "",
        edad: 18,
    },
    {
        nombre: "Sahid",
        apellido: "",
        edad: 19,
    },
]
```

## Agregar nuevos valores

```js
// Agrego un nuevo alumno como objeto
listaDeAlumnos.push({
    nombre: "Agustin",
    apellido: "",
    edad: 19,
});

// Agrego otro nuevo alumno desde variable
let otroNuevoAlumno = {
    nombre: "Camila",
    apellido: "",
    edad: 19,
};
listaDeAlumnos.push(otroNuevoAlumno);

// Agrego un alumno creado desde una función
let resultadoDeCrearNuevoAlumno = crearNuevoAlumno("Fabian", "", 20);
listaDeAlumnos.push(resultadoDeCrearNuevoAlumno);

//...

console.log("Lista de alumnos actualizada: ", listaDeAlumnos);
```

## Accediendo a valores dentro de una lista de objetos

```js
// accedo a campos dentro de los alumnos, dentro del listado
var nombreDelAlumno = listaDeAlumnosEjemplo[1].nombre;
var apellidoDelAlumno = listaDeAlumnosEjemplo[1].apellido;
```

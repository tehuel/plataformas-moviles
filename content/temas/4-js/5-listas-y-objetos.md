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

```js
// Agrego un nuevo alumno al listado
listaDeAlumnos[2] = {
    nombre: "Agustin",
    apellido: "",
    edad: 19,

}
console.log("Lista Nueva de Alumnos: ", listaDeAlumnos);

```

Creo un nuevo alumno y lo agrego al listado

```js
// function crearNuevoAlumno(nombre, apellido, edad) {
//     return {
//         nombre,
//         apellido,
//         edad,
//     };
// }
// var nuevaListaDeAlumnos = agregarAlumno(listaDeAlumnos, datosDelAlumno);
```

## Accediendo a valores dentro de una lista de objetos

```js
var alumnoA = {
    nombre: "Lionel",
    apellido: "",
    edad: 18,
};

var alumnoB = {
    nombre: "Sahid",
    apellido: "",
    edad: 19,
};

// creo un listado de alumnos
var listaDeAlumnosEjemplo = [
    alumnoA,
    alumnoB,
];

// accedo a campos dentro de los alumnos, dentro del listado
var nombreDelAlumno = listaDeAlumnosEjemplo[1].nombre;
var apellidoDelAlumno = listaDeAlumnosEjemplo[1].apellido;
```

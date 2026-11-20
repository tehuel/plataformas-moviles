---
title: "1.1: La Plataforma Web"
weight: 10
tipo: "apunte"
opcional: false
---

Queremos usar la plataforma web para desarrollar nuestras aplicaciones, ya que funciona en todas las plataformas —antiguas, actuales y futuras— y es completamente abierta, basada en especificaciones.

## Plataformas Móviles

¿Cómo definimos qué es y qué no es una plataforma móvil?

¿Cómo clasificamos celulares y computadoras? ¿Qué criterio podemos utilizar?

> Clasificar se define en el diccionario de la Real Academia Española como “disponer por clases algo”, o sea, organizar y dividir un conjunto de elementos según un criterio.

No podemos clasificar smartphones y computadoras de una manera absoluta, sin importar el criterio que usemos, ni queremos hacer esa separación. Hacer aplicaciones separadas implica más trabajo y requiere un lenguaje y una tecnología diferente para cada sistema operativo:

- Windows
	- C, C++
	- C#
	- DirectX, OpenGL
- Linux
	- C, C++
	- OpenGL
- macOS
	- Xcode
	- Swift, SwiftUI
	- Metal
- Android
	- Android Studio
	- Java
	- Kotlin
- iOS
	- Xcode
	- Swift, SwiftUI

## Cómo funciona un navegador

Para empezar a trabajar con la plataforma web es necesario entender el proceso que permite su funcionamiento.

¿Qué pasa cuando accedemos desde un navegador a un sitio web?

- Escribimos la URL.
- El navegador consulta al DNS por la IP asociada a esa URL.
- El navegador consulta al servidor web en la IP por el contenido en esa URL, a través de HTTP.
- El servidor web responde la consulta HTTP con el contenido del sitio, generalmente en HTML.
- El navegador procesa, interpreta y muestra ese contenido.

Este proceso se puede ver tanto en navegadores de hace 30 años como en navegadores actuales.

## Protocolo HTTP

HTTP, que significa Protocolo de Transferencia de Hipertexto (*Hypertext Transfer Protocol* en inglés), es un protocolo de comunicación utilizado para la transferencia de datos en la web.

- Cliente y Servidor
- Solicitud y Respuesta
- Métodos HTTP
- Códigos de Estados
- "Sin Estado" (*stateless*)

Más adelante profundizamos cómo usar HTTP desde JavaScript en [6.3: API HTTP](/temas/6-api/3-api-http/).

## Historia y Monopolios

Recorremos la historia de los navegadores y las problemáticas que puede tener un monopolio en ese territorio:

- Hace que la web deje de ser estándar.
- Hace que los sitios dejen de funcionar en todos los navegadores.
- Hace que las empresas "sean dueñas" de internet.

## Estándares y Especificaciones

Todas las tecnologías que componen la web están definidas por estándares, y eso permite la interoperabilidad y la compatibilidad entre dispositivos y navegadores.

---

## Detalles adicionales

<details>
    <summary>Ejemplos cotidianos (enchufes, talles, husos horarios y tamaño de papel)</summary>

### Fichas de Enchufes

![Mapa mundial de los distintos tipos de fichas y enchufes eléctricos](https://elordenmundial.com/wp-content/uploads/2021/11/Mapa-enchufes-mundo.png)

[Fuente](https://elordenmundial.com/mapas-y-graficos/el-mapa-de-los-enchufes-en-el-mundo/)

### Talles de Zapatillas

![Tabla comparativa de talles de zapatillas en distintos sistemas](https://fitzrovia.com.ar/img/cms/talles%20reebok.jpg)

[Fuente](https://fitzrovia.com.ar/info/13-guia-de-talles)

### Husos Horarios

![Mapa mundial de husos horarios](https://proyectoviajero.com/wp-content/uploads/2022/11/husos_horarios_mundo-XL.jpg)

[Fuente](https://proyectoviajero.com/mapas-mundo/mapa-de-los-husos-horarios/)

### Tamaño de Papel

![Comparativa de tamaños de papel estándar](https://i0.wp.com/vemployed.com/wp-content/uploads/2015/03/tamanosdelpapel.jpg)

[Fuente](https://vemployed.com/tamanos-del-papel/)

</details>

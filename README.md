# Ciu práctica 9
shaders y censurar imagenes

## Autor 
**Doramas Báez Bernal** <br/>
Correo: doramas.baez101@alu.ulpgc.es

## Gif
<div align="center">
  <img src="/shaders/animacion.gif" alt="gif de la practica 9">
  <p align="center">
    Figura 1: Ejemplo de ejecucion
  </p>
</div>

## Índice
* [Introducción](#introducción)
* [Dependencias](#dependencias) 
* [Desarrollo](#desarrollo)
    * [Información general](#informaciónGeneral)
    * [Shader](#Shader)
* [Referencias](#referencias)

## Introducción
El objetivo de esta practica es familiarizarnos con el uso de shaders en processing. En este caso se han utilizado shaders de fragmentos, con el objetivo de simular el tipico censurado que se aplica a las imágenes.

## Dependencias
Para poder ejecutar la práctica, necesitamos clonar este repositorio y poder ejecutar processing. 
* La librería **GifAnimation** que se utilizó para la obtención del gif. Sin embargo, ya que no es necesario para el funcionamiento de la aplicación en este caso todo el código relacionado se encuentra comentado. No obstante, por si fuera necesario, en el siguiente [enlace](https://github.com/extrapixel/gif-animation) se encuentra la guía de instalación.

## Desarrollo

### Información general <a id="informaciónGeneral"></a>

Básicamente disponemos de un menú cuando iniciamos la aplicación, en el que se nos explicarán los controles. Los propios iconos del menú, se han creado utilizando adobe xd, para intentar mantener la estética de las prácticas anteriores. En este caso, disponemos de los siguientes controles:
 - ruedaMouse: Podemos aumentar el tamaño del circulo que se utilizará para la censura de la imagen.
 - clickMouse: Nos permitirá elegir el sitio donde queremos mostrar dicho circulo.
 - Enter: Cambiar entre modo pausa y modo resume.

 

### Shader<a id="Shader"></a>
Se va a aplicar el shader sobre un círculo (pudiendo encajar con la cara de una persona o un objeto), con el objetivo de censurar dicho contenido. Se ha intentado hacer el típico pixelado de cuadritos negros con un cierto movimiento. Para ello, se ha modificado un ejemplo de la asignatura, aumentando la densidad de pixelado y haciendo una rotación sobre dichos pixeles para dar una sensaciónde movimiento.



## Referencias

* [Guion de prácticas](https://cv-aep.ulpgc.es/cv/ulpgctp20/pluginfile.php/126724/mod_resource/content/22/CIU_Pr_cticas.pdf)
* [GifAnimation](https://github.com/extrapixel/gif-animation)
* [Adobe xd](https://www.adobe.com/es/products/xd.html)
* [processing.org](https://processing.org/)

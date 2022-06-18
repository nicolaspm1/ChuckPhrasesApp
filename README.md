# ChuckNorrisApp

Esta APP consiste en un app que realice de práctica para fortalecer algunos conceptos. Es una simple app que consume una API de chuck Norris que devuelve frases según la categoría seleccionada. Consta de 2 vistas creadas con Xibs y usando Autolayout.
Los datos se consumen por medio de una API a través de Alamofire y usando como gestor de paquetes Cocoapods.

## Características Desarrollo

- Lenguaje: Swift
-  Patrón de Arquitectura: MVVM
-  API: [Chuck Norris Jokes API](https://api.chucknorris.io)
-  IDE: XCode


## Vistas

### Vista 1

Esta vista consta de un UIPickerView, el cual obtiene sus opciones usando un endpoint de la API mencionada.

<img width="329" alt="Captura de Pantalla 2022-06-18 a la(s) 11 05 54" src="https://user-images.githubusercontent.com/69824165/174442243-3d6be13e-cce6-4e8e-86bd-d905c01ce242.png">


- Misma vista, pero con orientación landscape.

<img width="680" alt="Captura de Pantalla 2022-06-18 a la(s) 11 07 23" src="https://user-images.githubusercontent.com/69824165/174442258-35acd1bb-9b05-4bc7-baa6-3398a98a6a2b.png">


### Vista 2

Vista muy simple en la que dentro, creamos otra vista con fondo rojo que contendrá la frase/broma que trae de unos de los endpoints, dependiendo de que se seleccionó en el UIPickerView de la primer vista.

<img width="336" alt="Captura de Pantalla 2022-06-18 a la(s) 11 06 18" src="https://user-images.githubusercontent.com/69824165/174442265-2ba0426b-2d2e-495c-b364-d51b29f30952.png">



- Misma vista, pero con orientación landscape.

<img width="681" alt="Captura de Pantalla 2022-06-18 a la(s) 11 06 57" src="https://user-images.githubusercontent.com/69824165/174442271-775e345b-8515-431d-9ae9-114e0e4af34b.png">

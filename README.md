# ChuckNorrisApp

Esta APP consiste en un app que realice de práctica para fortalecer algunos conceptos. Es una simple app que consume una API de chuck Norris que devuelve frases según la categoría seleccionada. Consta de 2 vistas creadas con Xibs y usando Autolayout.
Los datos se consumen por medio de una API a través de Alamofire y usando como gestor de paquetes Cocoapods.

## Características Desarrollo

- Lenguaje: Swift
-  Patrón de Arquitectura: MVVM
-  API: [Chuck Norris Jokes API](https://api.chucknorris.io)
-  IDE: XCode


## Vistas

La vista principal contiene un tabBar. Según se seleccione un item, aparecerán las siguientes vistas.

### Vista 1
Esta vista consta de un UIPickerView, el cual obtiene sus opciones usando un endpoint de la API mencionada. Todos los componentes gráficos están embebidos en un UITableView.

<img width="322" alt="Captura de Pantalla 2022-06-20 a la(s) 23 24 09" src="https://user-images.githubusercontent.com/69824165/174703156-774b2c88-14a2-4648-b67f-905cd393d552.png">



### Vista 2
Esta vista solo consta de un botón, el cual al presionar nos lleva a la vista 3. La diferencia con la vista 1, es que está usa un endpoint de la API el cual obtiene un frase de manera random. En la vista 1 se obtenía según la categoría seleccionada del pickerView.

<img width="323" alt="Captura de Pantalla 2022-06-20 a la(s) 23 23 53" src="https://user-images.githubusercontent.com/69824165/174703193-ed333e6b-a64e-4fda-9268-6e23326e9659.png">


### Vista 3

Vista muy simple en la que dentro, creamos otra vista con fondo rojo que contendrá la frase/broma que trae de unos de los endpoints, dependiendo de que se seleccionó en el UIPickerView de la primer vista.

<img width="324" alt="Captura de Pantalla 2022-06-20 a la(s) 23 24 30" src="https://user-images.githubusercontent.com/69824165/174703221-db5c46a5-e540-4f9e-9c8e-4c2cab0ff612.png">



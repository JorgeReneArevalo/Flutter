import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundPage extends StatefulWidget {
  const BackgroundPage({Key? key}) : super(key: key);

  @override
  _BackgroundPageState createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> {
  //Declaracion de variables
  //Color fondo = Colors.blue;
  List<Color> colores = [
    Colors.black87,
    Colors.blue,
    Colors.red,
    Colors.orange,
    Colors.deepPurple
  ];
  int contador = 0;
  Color fondo = Colors.blue;
  double ancho = 150;
  double alto = 150;
  Random generador = Random();
  //Ejemplo del boton

  bool procesando = false;
  String mensaje = "Login";
  //Build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Background state'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: fondo,
            width: ancho,
            height: alto,
          ),
          Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  onPressed: !procesando
                      ? () {
                          procesando = true;
                          mensaje = "Espere...";
                          setState(() {});
                          mostrarCambios();
                        }
                      : null,
                  child: Text(mensaje),
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Cambiar color');
          //Calculos para cmabiar el fondo
          if (contador == colores.length - 1) {
            contador = 0;
          } else {
            contador++;
            fondo = colores[contador];
            ancho = generador.nextInt(500) + 30.0;
            alto = generador.nextInt(800) + 30.0;
          }
          setState(() {
            //No se debe poner funciones
            // contador++;
            // //fondo = Colors.amber;
            // fondo = colores[contador];
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void mostrarCambios() {
    Future.delayed(Duration(seconds: 2), () {
      procesando = false;
      mensaje = 'Login';
      setState(() {});
    });
  }
}

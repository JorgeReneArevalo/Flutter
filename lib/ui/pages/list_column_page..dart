import 'package:flutter/material.dart';

class ListColumnPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    appBar: AppBar(
      title: Text('Lista Columnas'),
    ),
    body: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Columnas'),
          ],
        ),
       
        Column(
          children: [
            Text('Columnas nuevos'),
            Text('Columnas nuevos'),
            Text('Columnas nuevos'),
            Text('Columnas nuevos'),
            Text('Columnas nuevos'),
            Text('Columnas nuevos'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Columnas'),
            Text('Columnas'),
          ],
        ),
   
        Container(
          color: Colors.orangeAccent[400],
          width: double.infinity,
          height: 800,
          child: Center(child: Text('Columnas')),
        ),
        Container(
          color: Colors.amber,
          width: double.infinity,
          height: 300,
          child: Center(child: Text('Columnas')),
        ),
      ],
    ),
  );
  }

}
import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    appBar: AppBar(
      title: Text('Columnas'),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Columnas'),
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
        Text('Columnas'),
        Text('Columnas'),
        Container(
          //color: Colors.orangeAccent[400],
          width: double.infinity,
          //height: 120,
          child: Center(child: Text('Columnas')),
        ),
      ],
    ),
  );
  }

}
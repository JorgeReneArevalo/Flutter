import 'package:flutter/material.dart';

class ListRowPage extends StatelessWidget {
  const ListRowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Text('Hola'),
          Text('Hola 1'),
          Text(
            'Hola 2', 
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700
            ),
          ),
          Text('Hola 3'),
          Row(
            children: [
              Container(
                width: 60,
                height: 80,
                color: Colors.blue,
              ),
              Container(
                width: 600,
                height: 80,
                color: Colors.orange,
              )
            ],
          )
        ],
      ),
    );
  }
}
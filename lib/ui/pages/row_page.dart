import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rows'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
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
                width: 60,
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
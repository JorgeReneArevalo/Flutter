import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/dev2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 30,
            right: 30,
            bottom: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 200,
            child: Center(
              child: Text(
                'Bienvenido',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 40
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

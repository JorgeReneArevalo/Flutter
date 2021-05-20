import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pageview'),
      ),
      body: PageView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              //child: GestureDetector(
              child: InkWell(
                onTap: () {
                  print('Presiona imagen');
                },
                child: Container(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    'assets/images/Windows-10-Dark-Theme.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              //child: GestureDetector(
              child: InkWell(
                onTap: () {
                  print('Presiona imagen');
                },
                child: Container(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    'assets/images/dev2.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 50, top: 100),
                child: Text('Texto'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.ac_unit_rounded),
                  label: Text('Boton'),
                ),
              ),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.red, 
              )
            ],
          ),
          Row(
            children: [
              Text('Texto'),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit_rounded),
                label: Text('Boton'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

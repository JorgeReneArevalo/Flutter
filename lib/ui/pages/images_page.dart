import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.network(
                  'https://s3.eu-central-1.amazonaws.com/media.tutored/223',
                ),
              ),
              ClipRRect(
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
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

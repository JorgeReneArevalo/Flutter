import 'package:app_prueba/models/ruta_item_model.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      /*body: ListView(
        children: [
          ListTile(
            title: Text('Ejemplo botones'),
            leading: Icon(Icons.calendar_today),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, 'botones-page');
            },
          ),
        ],
      ),*/
      body: ListView.builder(
        itemCount: paginas.length,
        itemBuilder: (BuildContext contex, int index) {
          final ruta = paginas[index];
          return ListTile(
            title: Text('${ruta.titulo}'),
            leading: Icon(Icons.calendar_today),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, ruta.ruta);
            },
          );
        },
      ),
    );
  }
}

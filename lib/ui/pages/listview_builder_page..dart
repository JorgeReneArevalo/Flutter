import 'package:app_prueba/models/usuario_model.dart';
import 'package:app_prueba/ui/widgets/alert_dialog_widget.dart';
import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
      ),
      //body: PageView.builder(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final usuario = usuarios[index];
          // /*if (usuario.usuarioActivo) {
          //   return ListTile(
          //     //title: Text('${usuarios[index].usuarioNombre}'),
          //     //subtitle: Text('Activo ${usuarios[index].usuarioActivo}'),
          //     title: Text('${usuario.usuarioNombre}'),
          //     subtitle: Text('Activo ${usuario.usuarioActivo}'),
          //   );
          // } else {
          //   return Container(
          //     color: Colors.red,
          //     width: double.infinity,
          //     height: 40,
          //   );
          // }*/
          return ListTile(
              //title: Text('${usuarios[index].usuarioNombre}'),
              //subtitle: Text('Activo ${usuarios[index].usuarioActivo}'),
              title: Text('${usuario.usuarioNombre}'),
              subtitle: Text('Activo ${usuario.usuarioActivo}'),
              onTap: () {
                print('${usuario.usuarioNombre}');
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDilogs(
                      usuario: usuario,
                      onPressOk: () {
                        print('OK');
                        Navigator.of(context).pop();
                      },
                    );
                  },
                );
              });
        },
        itemCount: usuarios.length,
      ),
    );
  }
}

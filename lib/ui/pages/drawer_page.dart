import 'package:app_prueba/ui/widgets/menu_item_widget.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Page'),
      ),
      body: Center(
        child: Text('Drawer Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Jorge'),
              accountEmail: Text('jarevalo.@icreativa.com'),
              //currentAccountPicture: Image.network('https://icon-library.com/images/default-user-icon/default-user-icon-7.jpg'),
              currentAccountPicture: Image.network(
                  'https://icon-library.com/images/default-user-icon/default-user-icon-7.jpg'),
            ),
            MenuItem(
              title: 'Nueva opcion',
              leading: Icons.note_add,
              trailing: Icons.play_arrow,
              dibujarTrailing: false,
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:ffi';

import 'package:app_prueba/models/usuario_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Material para andriod
//Cupertino para IOS
// class AlertDilogs extends StatelessWidget {
//   const AlertDilogs({
//     Key? key,
//     required this.title,
//     required this.content,
//   }) : super(key: key);
class AlertDilogs extends StatelessWidget {
  const AlertDilogs({
    Key? key,
    required this.usuario,
    required this.onPressOk,
    this.andriod = true,
  }) : super(key: key);
  /*final String title;
  final String content;*/
  final UsuarioModel usuario;
  final VoidCallback onPressOk;
  final bool andriod;
  @override
  Widget build(BuildContext context) {
    return andriod
        ? AlertDialog(
            title: Text('${usuario.usuarioNombre}'),
            content: Text('${usuario.usuarioId}'),
            //title: Text('TITULO'),
            //content: Text('Content'),
            actions: [
              TextButton(
                onPressed: onPressOk,
                child: Text('OK'),
              ),
              TextButton(
                onPressed: () {
                  print('CANCEL');
                  Navigator.of(context).pop();
                },
                child: Text('CANCEL'),
              ),
            ],
          )
        : CupertinoAlertDialog(
            title: Text('${usuario.usuarioNombre}'),
            content: Text('${usuario.usuarioId}'),
            actions: [
              CupertinoDialogAction(
                child: Text('Hola'),
                onPressed: onPressOk,
              ),
            ],
          );
  }
}

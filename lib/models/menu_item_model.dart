import 'package:app_prueba/ui/widgets/menu_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItemModel {
  MenuItemModel({
    required this.id,
    required this.titulo,
    this.leading = Icons.note,
  });
  int id;
  String titulo;
  IconData leading;
}

/*final List<MenuItemModel> opciones = [
  MenuItemModel(id: 1, titulo: 'Opcion 1'),
  MenuItemModel(id: 2, titulo: 'Opcion 2'),
  MenuItemModel(id: 3, titulo: 'Opcion 3'),
  MenuItemModel(id: 4, titulo: 'Opcion 1'),
  MenuItemModel(id: 5, titulo: 'Opcion 2'),
  MenuItemModel(id: 6, titulo: 'Opcion 3'),
  MenuItemModel(id: 7, titulo: 'Opcion 1'),
];*/
final List<MenuItemModel> opciones = List.generate(
    40, (index) => MenuItemModel(id: index, titulo: 'opcion ${index + 1}'));

final List<Widget> listaOpciones = opciones
    .map(
      (e) => MenuItem(
        title: e.titulo,
        leading: e.leading,
      ),
    )
    .toList();

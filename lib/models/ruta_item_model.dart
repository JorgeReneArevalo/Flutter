// To parse this JSON data, do
//
//     final rutaItemModel = rutaItemModelFromJson(jsonString);

import 'dart:convert';

RutaItemModel rutaItemModelFromJson(String str) =>
    RutaItemModel.fromJson(json.decode(str));

String rutaItemModelToJson(RutaItemModel data) => json.encode(data.toJson());

class RutaItemModel {
  RutaItemModel({
    required this.titulo,
    required this.ruta,
  });

  String titulo;
  String ruta;

  factory RutaItemModel.fromJson(Map<String, dynamic> json) => RutaItemModel(
        titulo: json["titulo"],
        ruta: json["ruta"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "ruta": ruta,
      };
}

List<RutaItemModel> paginas = [
  RutaItemModel(ruta: 'botones-page', titulo: 'Botones page'),
  RutaItemModel(ruta: 'background-color', titulo: 'Background page'),
  RutaItemModel(ruta: 'menu', titulo: 'Menu'),
];

// To parse this JSON data, do
//
//     final usuarioModel = usuarioModelFromJson(jsonString);
//Viene de base es from json
//To json para hacer post
import 'dart:convert';

UsuarioModel usuarioModelFromJson(String str) =>
    UsuarioModel.fromJson(json.decode(str));

String usuarioModelToJson(UsuarioModel data) => json.encode(data.toJson());

class UsuarioModel {
  UsuarioModel({
    required this.usuarioNombre,
    required this.usuarioId,
    required this.usuarioActivo,
  });

  String usuarioNombre;
  int usuarioId;
  bool usuarioActivo;

  factory UsuarioModel.fromJson(Map<String, dynamic> json) => UsuarioModel(
        usuarioNombre: json["usuario_nombre"],
        usuarioId: json["usuario_id"],
        usuarioActivo: json["usuario_activo"],
      );

  Map<String, dynamic> toJson() => {
        "usuario_nombre": usuarioNombre,
        "usuario_id": usuarioId,
        "usuario_activo": usuarioActivo,
      };
}

List<UsuarioModel> usuarios = List.generate(
    10,
    (index) => UsuarioModel(
        usuarioNombre: 'Usuario ${index + 1}',
        usuarioId: index,
        usuarioActivo: index % 2 == 0
        //usuarioActivo: index % 2 == 0 ? true : false//
        ));

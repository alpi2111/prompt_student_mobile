// To parse this JSON data, do
//
//     final student = studentFromJson(jsonString);

import 'dart:convert';

StudentModel studentFromJson(String str) => StudentModel.fromJson(json.decode(str));

String studentToJson(StudentModel data) => json.encode(data.toJson());

class StudentModel {
    final String nombre;
    final String apellidos;
    final int grado;
    final String grupo;
    final String urlFoto;
    final String matricula;

    StudentModel({
        this.nombre,
        this.apellidos,
        this.grado,
        this.grupo,
        this.urlFoto,
        this.matricula,
    });

    factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
        nombre: json["nombre"],
        apellidos: json["apellidos"],
        grado: json["grado"],
        grupo: json["grupo"],
        urlFoto: json["url_foto"],
        matricula: json["matricula"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "apellidos": apellidos,
        "grado": grado,
        "grupo": grupo,
        "url_foto": urlFoto,
        "matricula": matricula,
    };
}

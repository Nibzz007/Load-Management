// To parse this JSON data, do
//
//     final irrigationMethodModel = irrigationMethodModelFromJson(jsonString);

import 'dart:convert';

IrrigationMethodModel irrigationMethodModelFromJson(String str) =>
    IrrigationMethodModel.fromJson(json.decode(str));

String irrigationMethodModelToJson(IrrigationMethodModel data) =>
    json.encode(data.toJson());

class IrrigationMethodModel {
  String message;
  List<Datum> data;
  int statusCode;

  IrrigationMethodModel({
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory IrrigationMethodModel.fromJson(Map<String, dynamic> json) =>
      IrrigationMethodModel(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        statusCode: json["status_code"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "status_code": statusCode,
      };
}

class Datum {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  String name;
  String nameMr;

  Datum({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.nameMr,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        name: json["name"],
        nameMr: json["name_mr"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "name": name,
        "name_mr": nameMr,
      };
}

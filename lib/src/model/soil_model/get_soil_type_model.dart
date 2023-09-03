// To parse this JSON data, do
//
//     final allSoilTypeModel = allSoilTypeModelFromJson(jsonString);

import 'dart:convert';

AllSoilTypeModel allSoilTypeModelFromJson(String str) =>
    AllSoilTypeModel.fromJson(json.decode(str));

String allSoilTypeModelToJson(AllSoilTypeModel data) =>
    json.encode(data.toJson());

class AllSoilTypeModel {
  String message;
  List<Datum> data;
  int statusCode;

  AllSoilTypeModel({
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory AllSoilTypeModel.fromJson(Map<String, dynamic> json) =>
      AllSoilTypeModel(
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

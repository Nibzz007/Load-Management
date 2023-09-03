// To parse this JSON data, do
//
//     final irrigationMethodInfoModel = irrigationMethodInfoModelFromJson(jsonString);

import 'dart:convert';

IrrigationMethodInfoModel irrigationMethodInfoModelFromJson(String str) =>
    IrrigationMethodInfoModel.fromJson(json.decode(str));

String irrigationMethodInfoModelToJson(IrrigationMethodInfoModel data) =>
    json.encode(data.toJson());

class IrrigationMethodInfoModel {
  String message;
  Data data;
  int statusCode;

  IrrigationMethodInfoModel({
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory IrrigationMethodInfoModel.fromJson(Map<String, dynamic> json) =>
      IrrigationMethodInfoModel(
        message: json["message"],
        data: Data.fromJson(json["data"]),
        statusCode: json["status_code"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
        "status_code": statusCode,
      };
}

class Data {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  String name;
  String nameMr;

  Data({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.nameMr,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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

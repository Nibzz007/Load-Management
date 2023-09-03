// To parse this JSON data, do
//
//     final cropInfoModel = cropInfoModelFromJson(jsonString);

import 'dart:convert';

CropInfoModel cropInfoModelFromJson(String str) =>
    CropInfoModel.fromJson(json.decode(str));

String cropInfoModelToJson(CropInfoModel data) => json.encode(data.toJson());

class CropInfoModel {
  String message;
  Data data;
  int statusCode;

  CropInfoModel({
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory CropInfoModel.fromJson(Map<String, dynamic> json) => CropInfoModel(
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
  String waterRequirement;

  Data({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.nameMr,
    required this.waterRequirement,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        name: json["name"],
        nameMr: json["name_mr"],
        waterRequirement: json["water_requirement"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "name": name,
        "name_mr": nameMr,
        "water_requirement": waterRequirement,
      };
}

// To parse this JSON data, do
//
//     final allCropListModel = allCropListModelFromJson(jsonString);

import 'dart:convert';

AllCropListModel allCropListModelFromJson(String str) =>
    AllCropListModel.fromJson(json.decode(str));

String allCropListModelToJson(AllCropListModel data) =>
    json.encode(data.toJson());

class AllCropListModel {
  String message;
  List<Datum> data;
  int statusCode;

  AllCropListModel({
    required this.message,
    required this.data,
    required this.statusCode,
  });

  factory AllCropListModel.fromJson(Map<String, dynamic> json) =>
      AllCropListModel(
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
  String waterRequirement;

  Datum({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.nameMr,
    required this.waterRequirement,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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

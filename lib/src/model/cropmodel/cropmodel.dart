import 'package:hive_flutter/adapters.dart';
part 'cropmodel.g.dart';
@HiveType(typeId: 2)
class CropModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  DateTime? createdAt;
  @HiveField(2)
  DateTime? updatedAt;
  @HiveField(3)
  String? name;
  @HiveField(4)
  String? nameMr;
  @HiveField(5)
  String? waterRequirement;

  CropModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.nameMr,
    required this.waterRequirement,
  });
}

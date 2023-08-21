import 'package:hive_flutter/adapters.dart';
part 'soilmodel.g.dart';

@HiveType(typeId: 4)
class SoilModel {
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
  SoilModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.nameMr,
  });
}

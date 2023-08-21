import 'package:hive_flutter/adapters.dart';
part 'irrigationmodel.g.dart';

@HiveType(typeId: 3)
class IrrigatioModel {
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
  IrrigatioModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.nameMr,
  });
}

import 'package:hive_flutter/adapters.dart';
part 'farmer_add_model.g.dart';

@HiveType(typeId: 1)
class FarmerModel {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? number;
  @HiveField(2)
  String? ghatNumber;
  @HiveField(3)
  String? area;
  @HiveField(4)
  int? id;

  FarmerModel({
    this.name,
    this.number,
    this.ghatNumber,
    this.area,
    this.id,
  });
}

import 'package:hive_flutter/adapters.dart';
part 'transformermodel.g.dart';
@HiveType(typeId: 5)
class TransforerModel{
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
  String? village;
  @HiveField(6)
  String? district;
  @HiveField(7)
  int? powerRating;
  @HiveField(8)
  dynamic lat;
  @HiveField(9)
  dynamic long;

  TransforerModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.nameMr,
    this.village,
    this.district,
    this.powerRating,
    this.lat,
    this.long,
  });

}
import 'package:hive_flutter/adapters.dart';
import 'package:load_management/src/model/cropmodel/cropmodel.dart';
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
  @HiveField(5)
  List<CropModel>?crops;


  FarmerModel({
    this.name,
    this.number,
    this.ghatNumber,
    this.area,
    this.id,
  });
}

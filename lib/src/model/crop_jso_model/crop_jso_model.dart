import 'package:json_annotation/json_annotation.dart';

part 'crop_jso_model.g.dart';

@JsonSerializable()
class CropJsoModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'name_mr')
  String? nameMr;
  @JsonKey(name: 'water_requirement')
  String? waterRequirement;

  CropJsoModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.nameMr,
    this.waterRequirement,
  });

  factory CropJsoModel.fromJson(Map<String, dynamic> json) {
    return _$CropJsoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CropJsoModelToJson(this);
}

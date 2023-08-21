import 'package:json_annotation/json_annotation.dart';

part 'soil_json_model.g.dart';

@JsonSerializable()
class SoilJsonModel {
  int? id;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  String? name;
  @JsonKey(name: 'name_mr')
  String? nameMr;

  SoilJsonModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.nameMr,
  });

  factory SoilJsonModel.fromJson(Map<String, dynamic> json) {
    return _$SoilJsonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SoilJsonModelToJson(this);
}

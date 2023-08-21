import 'package:json_annotation/json_annotation.dart';

part 'irrrigation_json_model.g.dart';

@JsonSerializable()
class IrrrigationJsonModel {
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

  IrrrigationJsonModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.nameMr,
  });

  factory IrrrigationJsonModel.fromJson(Map<String, dynamic> json) {
    return _$IrrrigationJsonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IrrrigationJsonModelToJson(this);
}

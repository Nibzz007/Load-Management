import 'package:json_annotation/json_annotation.dart';

import 'crop.dart';

part 'user_api_model.g.dart';

@JsonSerializable()
class UserApiModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'crops')
  List<Crop>? crops;
  @JsonKey(name: 'pumps')
  List<dynamic>? pumps;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  String? name;
  @JsonKey(name: 'name_mr')
  String? nameMr;
  @JsonKey(name: 'gat_number')
  String? gatNumber;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @JsonKey(name: 'total_area')
  int? totalArea;

  UserApiModel({
    this.id,
    this.crops,
    this.pumps,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.nameMr,
    this.gatNumber,
    this.phoneNumber,
    this.totalArea,
  });

  factory UserApiModel.fromJson(Map<String, dynamic> json) {
    return _$UserApiModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserApiModelToJson(this);
}

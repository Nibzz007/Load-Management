import 'package:json_annotation/json_annotation.dart';

part 'crop.g.dart';

@JsonSerializable()
class Crop {
  @JsonKey(name: 'Soybean')
  String? crop;
  @JsonKey(name: 'irrigation_method')
  String? irrigationMethod;
  @JsonKey(name: 'soil_type')
  String? soilType;
  @JsonKey(name: 'area')
  int? area;

  Crop({this.crop, this.irrigationMethod, this.soilType, this.area});

  factory Crop.fromJson(Map<String, dynamic> json) => _$CropFromJson(json);

  Map<String, dynamic> toJson() => _$CropToJson(this);
}

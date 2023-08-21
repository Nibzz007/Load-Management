import 'package:json_annotation/json_annotation.dart';

part 'transformers_json_model.g.dart';

@JsonSerializable()
class TransformersJsonModel {
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
  @JsonKey(name: 'village')
  String? village;
  @JsonKey(name: 'district')
  String? district;
  @JsonKey(name: 'power_rating')
  int? powerRating;
  @JsonKey(name: 'lat')
  dynamic lat;
  @JsonKey(name: 'long')
  dynamic long;

  TransformersJsonModel({
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

  factory TransformersJsonModel.fromJson(Map<String, dynamic> json) {
    return _$TransformersJsonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TransformersJsonModelToJson(this);
}
/* {
            "id": 1,
            "created_at": "2023-08-11T06:35:18.226097Z",
            "updated_at": "2023-08-11T06:35:18.226109Z",
            "name": "Dhanora Makta",
            "name_mr": "धानोरा मक्ता",
            "village": "Dhanora",
            "district": "Nanded",
            "power_rating": 100.0,
            "lat": null,
            "long": null
        } */

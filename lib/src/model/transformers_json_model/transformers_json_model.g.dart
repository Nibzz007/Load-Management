// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transformers_json_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransformersJsonModel _$TransformersJsonModelFromJson(
        Map<String, dynamic> json) =>
    TransformersJsonModel(
      id: json['id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      name: json['name'] as String?,
      nameMr: json['name_mr'] as String?,
      village: json['village'] as String?,
      district: json['district'] as String?,
      powerRating: json['power_rating'] as int?,
      lat: json['lat'],
      long: json['long'],
    );

Map<String, dynamic> _$TransformersJsonModelToJson(
        TransformersJsonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'name': instance.name,
      'name_mr': instance.nameMr,
      'village': instance.village,
      'district': instance.district,
      'power_rating': instance.powerRating,
      'lat': instance.lat,
      'long': instance.long,
    };

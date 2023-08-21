// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soil_json_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SoilJsonModel _$SoilJsonModelFromJson(Map<String, dynamic> json) =>
    SoilJsonModel(
      id: json['id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      name: json['name'] as String?,
      nameMr: json['name_mr'] as String?,
    );

Map<String, dynamic> _$SoilJsonModelToJson(SoilJsonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'name': instance.name,
      'name_mr': instance.nameMr,
    };

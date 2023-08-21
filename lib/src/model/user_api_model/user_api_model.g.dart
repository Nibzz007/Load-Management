// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserApiModel _$UserApiModelFromJson(Map<String, dynamic> json) => UserApiModel(
      id: json['id'] as int?,
      crops: (json['crops'] as List<dynamic>?)
          ?.map((e) => Crop.fromJson(e as Map<String, dynamic>))
          .toList(),
      pumps: json['pumps'] as List<dynamic>?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      name: json['name'] as String?,
      nameMr: json['name_mr'] as String?,
      gatNumber: json['gat_number'] as String?,
      phoneNumber: json['phone_number'] as String?,
      totalArea: json['total_area'] as int?,
    );

Map<String, dynamic> _$UserApiModelToJson(UserApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'crops': instance.crops,
      'pumps': instance.pumps,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'name': instance.name,
      'name_mr': instance.nameMr,
      'gat_number': instance.gatNumber,
      'phone_number': instance.phoneNumber,
      'total_area': instance.totalArea,
    };

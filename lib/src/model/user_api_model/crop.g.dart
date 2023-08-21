// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crop _$CropFromJson(Map<String, dynamic> json) => Crop(
      crop: json['crop'] as String?,
      irrigationMethod: json['irrigation_method'] as String?,
      soilType: json['soil_type'] as String?,
      area: json['area'] as int?,
    );

Map<String, dynamic> _$CropToJson(Crop instance) => <String, dynamic>{
      'crop': instance.crop,
      'irrigation_method': instance.irrigationMethod,
      'soil_type': instance.soilType,
      'area': instance.area,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmer_add_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FarmerModelAdapter extends TypeAdapter<FarmerModel> {
  @override
  final int typeId = 1;

  @override
  FarmerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FarmerModel(
      name: fields[0] as String?,
      number: fields[1] as String?,
      ghatNumber: fields[2] as String?,
      area: fields[3] as String?,
      id: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FarmerModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.number)
      ..writeByte(2)
      ..write(obj.ghatNumber)
      ..writeByte(3)
      ..write(obj.area)
      ..writeByte(4)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FarmerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

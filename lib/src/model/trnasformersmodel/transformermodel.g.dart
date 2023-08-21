// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transformermodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransforerModelAdapter extends TypeAdapter<TransforerModel> {
  @override
  final int typeId = 5;

  @override
  TransforerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransforerModel(
      id: fields[0] as int?,
      createdAt: fields[1] as DateTime?,
      updatedAt: fields[2] as DateTime?,
      name: fields[3] as String?,
      nameMr: fields[4] as String?,
      village: fields[5] as String?,
      district: fields[6] as String?,
      powerRating: fields[7] as int?,
      lat: fields[8] as dynamic,
      long: fields[9] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, TransforerModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.updatedAt)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.nameMr)
      ..writeByte(5)
      ..write(obj.village)
      ..writeByte(6)
      ..write(obj.district)
      ..writeByte(7)
      ..write(obj.powerRating)
      ..writeByte(8)
      ..write(obj.lat)
      ..writeByte(9)
      ..write(obj.long);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransforerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

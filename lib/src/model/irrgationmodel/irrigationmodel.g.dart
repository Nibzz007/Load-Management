// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'irrigationmodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IrrigatioModelAdapter extends TypeAdapter<IrrigatioModel> {
  @override
  final int typeId = 3;

  @override
  IrrigatioModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IrrigatioModel(
      id: fields[0] as int?,
      createdAt: fields[1] as DateTime?,
      updatedAt: fields[2] as DateTime?,
      name: fields[3] as String?,
      nameMr: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, IrrigatioModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.createdAt)
      ..writeByte(2)
      ..write(obj.updatedAt)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.nameMr);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IrrigatioModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

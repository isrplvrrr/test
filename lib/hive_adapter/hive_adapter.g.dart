// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeldereyAdapter extends TypeAdapter<Selderey> {
  @override
  final int typeId = 0;

  @override
  Selderey read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Selderey(
      specialization: fields[8] as String?,
      isBought: fields[7] as bool,
      liters: fields[0] as int?,
      isSaved: fields[6] as bool,
      count: fields[4] as int?,
      id: fields[5] as int?,
      image: fields[1] as String?,
      name: fields[2] as String?,
      price: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Selderey obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.liters)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.count)
      ..writeByte(5)
      ..write(obj.id)
      ..writeByte(6)
      ..write(obj.isSaved)
      ..writeByte(7)
      ..write(obj.isBought)
      ..writeByte(8)
      ..write(obj.specialization);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeldereyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SaveDBAdapter extends TypeAdapter<SaveDB> {
  @override
  final int typeId = 1;

  @override
  SaveDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaveDB(
      selderey: fields[0] as Selderey,
    );
  }

  @override
  void write(BinaryWriter writer, SaveDB obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.selderey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaveDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HistoryDBAdapter extends TypeAdapter<HistoryDB> {
  @override
  final int typeId = 2;

  @override
  HistoryDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HistoryDB(
      name: fields[0] as String?,
      phone: fields[1] as String?,
      mail: fields[2] as String?,
      comment: fields[3] as String?,
      total: fields[4] as int?,
      bouquetName: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HistoryDB obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.phone)
      ..writeByte(2)
      ..write(obj.mail)
      ..writeByte(3)
      ..write(obj.comment)
      ..writeByte(4)
      ..write(obj.total)
      ..writeByte(5)
      ..write(obj.bouquetName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HistoryDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

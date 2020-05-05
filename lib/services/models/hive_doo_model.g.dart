// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_doo_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveDooModelAdapter extends TypeAdapter<HiveDooModel> {
  @override
  final typeId = 0;

  @override
  HiveDooModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveDooModel()
      ..title = fields[0] as String
      ..quotes = fields[1] as String
      ..cycle = fields[2] as HiveCycleModel;
  }

  @override
  void write(BinaryWriter writer, HiveDooModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.quotes)
      ..writeByte(2)
      ..write(obj.cycle);
  }
}

class HiveCycleModelAdapter extends TypeAdapter<HiveCycleModel> {
  @override
  final typeId = 1;

  @override
  HiveCycleModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveCycleModel()
      ..isEveryday = fields[0] as bool
      ..dayOfWeeks = (fields[1] as List)?.cast<bool>();
  }

  @override
  void write(BinaryWriter writer, HiveCycleModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.isEveryday)
      ..writeByte(1)
      ..write(obj.dayOfWeeks);
  }
}

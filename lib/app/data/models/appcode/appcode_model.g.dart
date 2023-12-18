// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appcode_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppcodeModelAdapter extends TypeAdapter<AppcodeModel> {
  @override
  final int typeId = 1;

  @override
  AppcodeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppcodeModel(
      idserver: fields[0] as String?,
      sid: fields[1] as String?,
      clientAppname: fields[2] as String?,
      clientAppengine: fields[3] as String?,
      clientTel: fields[4] as String?,
      clientRegno: fields[5] as String?,
      clientAddress: fields[6] as String?,
      clientPostcode: fields[7] as String?,
      clientDistrict: fields[8] as String?,
      clientState: fields[9] as String?,
      customer: fields[10] as String?,
      clientLogo: fields[11] as String?,
      logo: fields[12] as String?,
      appConfig: fields[13] as String?,
      url: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AppcodeModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.idserver)
      ..writeByte(1)
      ..write(obj.sid)
      ..writeByte(2)
      ..write(obj.clientAppname)
      ..writeByte(3)
      ..write(obj.clientAppengine)
      ..writeByte(4)
      ..write(obj.clientTel)
      ..writeByte(5)
      ..write(obj.clientRegno)
      ..writeByte(6)
      ..write(obj.clientAddress)
      ..writeByte(7)
      ..write(obj.clientPostcode)
      ..writeByte(8)
      ..write(obj.clientDistrict)
      ..writeByte(9)
      ..write(obj.clientState)
      ..writeByte(10)
      ..write(obj.customer)
      ..writeByte(11)
      ..write(obj.clientLogo)
      ..writeByte(12)
      ..write(obj.logo)
      ..writeByte(13)
      ..write(obj.appConfig)
      ..writeByte(14)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppcodeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

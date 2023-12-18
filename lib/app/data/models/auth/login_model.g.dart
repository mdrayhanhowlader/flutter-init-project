// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginModelAdapter extends TypeAdapter<LoginModel> {
  @override
  final int typeId = 2;

  @override
  LoginModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginModel(
      userId: fields[0] as String?,
      userSid: fields[1] as int?,
      userImage: fields[2] as String?,
      userName: fields[3] as String?,
      userHp: fields[4] as String?,
      userIc: fields[5] as String?,
      userAddr: fields[6] as String?,
      userMel: fields[7] as String?,
      schName: fields[8] as String?,
      schAddr: fields[9] as String?,
      userServerid: fields[10] as String?,
      userJob: fields[11] as String?,
      userJobstatus: fields[12] as String?,
      userJobdiv: fields[13] as String?,
      userJobstart: fields[14] as String?,
      userJobend: fields[15] as String?,
      systemAccess: fields[16] as String?,
      systemConfig: fields[17] as String?,
      bosConfig: fields[18] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginModel obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.userSid)
      ..writeByte(2)
      ..write(obj.userImage)
      ..writeByte(3)
      ..write(obj.userName)
      ..writeByte(4)
      ..write(obj.userHp)
      ..writeByte(5)
      ..write(obj.userIc)
      ..writeByte(6)
      ..write(obj.userAddr)
      ..writeByte(7)
      ..write(obj.userMel)
      ..writeByte(8)
      ..write(obj.schName)
      ..writeByte(9)
      ..write(obj.schAddr)
      ..writeByte(10)
      ..write(obj.userServerid)
      ..writeByte(11)
      ..write(obj.userJob)
      ..writeByte(12)
      ..write(obj.userJobstatus)
      ..writeByte(13)
      ..write(obj.userJobdiv)
      ..writeByte(14)
      ..write(obj.userJobstart)
      ..writeByte(15)
      ..write(obj.userJobend)
      ..writeByte(16)
      ..write(obj.systemAccess)
      ..writeByte(17)
      ..write(obj.systemConfig)
      ..writeByte(18)
      ..write(obj.bosConfig);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

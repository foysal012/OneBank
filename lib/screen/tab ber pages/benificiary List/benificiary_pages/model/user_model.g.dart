// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelOwnBankAdapter extends TypeAdapter<UserModelOwnBank> {
  @override
  final int typeId = 0;

  @override
  UserModelOwnBank read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModelOwnBank(
      accountNo: fields[0] as String?,
      accountTitle: fields[1] as String?,
      nickName: fields[2] as String?,
      mobileNo: fields[3] as String?,
      emailad: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModelOwnBank obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.accountNo)
      ..writeByte(1)
      ..write(obj.accountTitle)
      ..writeByte(2)
      ..write(obj.nickName)
      ..writeByte(3)
      ..write(obj.mobileNo)
      ..writeByte(4)
      ..write(obj.emailad);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelOwnBankAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserModelOtherBankAdapter extends TypeAdapter<UserModelOtherBank> {
  @override
  final int typeId = 1;

  @override
  UserModelOtherBank read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModelOtherBank(
      bankName: fields[0] as String?,
      branchName: fields[1] as String?,
      accountNo: fields[2] as String?,
      accountTitle: fields[3] as String?,
      nickName: fields[4] as String?,
      mobileNo: fields[5] as String?,
      emailad: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModelOtherBank obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.bankName)
      ..writeByte(1)
      ..write(obj.branchName)
      ..writeByte(2)
      ..write(obj.accountNo)
      ..writeByte(3)
      ..write(obj.accountTitle)
      ..writeByte(4)
      ..write(obj.nickName)
      ..writeByte(5)
      ..write(obj.mobileNo)
      ..writeByte(6)
      ..write(obj.emailad);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelOtherBankAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserModelMFSAdapter extends TypeAdapter<UserModelMFS> {
  @override
  final int typeId = 2;

  @override
  UserModelMFS read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModelMFS(
      mfsName: fields[0] as String?,
      accountNo: fields[1] as String?,
      nickName: fields[2] as String?,
      mobileNo: fields[3] as String?,
      remark: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModelMFS obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.mfsName)
      ..writeByte(1)
      ..write(obj.accountNo)
      ..writeByte(2)
      ..write(obj.nickName)
      ..writeByte(3)
      ..write(obj.mobileNo)
      ..writeByte(4)
      ..write(obj.remark);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelMFSAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

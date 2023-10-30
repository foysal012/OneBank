import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModelOwnBank extends HiveObject{

  @HiveField(0)
  String? accountNo;
  @HiveField(1)
  String? accountTitle;
  @HiveField(2)
  String? nickName;
  @HiveField(3)
  String? mobileNo;
  @HiveField(4)
  String? emailad;

  UserModelOwnBank(
      {this.accountNo,
      this.accountTitle,
      this.nickName,
      this.mobileNo,
      this.emailad}
      );
}


@HiveType(typeId: 1)
class UserModelOtherBank{

  @HiveField(0)
  String? bankName;
  @HiveField(1)
  String? branchName;
  @HiveField(2)
  String? accountNo;
  @HiveField(3)
  String? accountTitle;
  @HiveField(4)
  String? nickName;
  @HiveField(5)
  String? mobileNo;
  @HiveField(6)
  String? emailad;

  UserModelOtherBank(
      {
        this.bankName,
        this.branchName,
        this.accountNo,
        this.accountTitle,
        this.nickName,
        this.mobileNo,
        this.emailad}
      );
}

@HiveType(typeId: 2)
class UserModelMFS{
  @HiveField(0)
  String? mfsName;
  @HiveField(1)
  String? accountNo;
  @HiveField(2)
  String? nickName;
  @HiveField(3)
  String? mobileNo;
  @HiveField(4)
  String? remark;

  UserModelMFS(
      {
        this.mfsName,
        this.accountNo,
        this.nickName,
        this.mobileNo,
        this.remark}
      );
}
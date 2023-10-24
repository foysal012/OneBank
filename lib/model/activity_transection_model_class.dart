import 'package:flutter/material.dart';

class ActivityTransectionModelClass{

  String? accountHolderName;
  String? accountNo;
  String? date;
  int? amount;
  String? trxId;
  String? payment;

  ActivityTransectionModelClass(
      {this.accountHolderName,
      this.accountNo,
      this.date,
      this.amount,
      this.trxId,
      this.payment});

  static List<ActivityTransectionModelClass> generatedListofTransection = [
    ActivityTransectionModelClass(
      accountNo: "124 567 0987 1234",
      accountHolderName: "Sajjad Hasan",
      date: "2023-10-09",
      trxId: "7651-0918-078543",
      amount: 2000000,
      payment: "InWord"
    ),

    ActivityTransectionModelClass(
        accountNo: "124 567 0987 7641",
        accountHolderName: "Jahidul Fahad",
        date: "2023-10-11",
        trxId: "7651-0918-983410",
        amount: -100000,
        payment: "Out"
    ),

    ActivityTransectionModelClass(
        accountNo: "124 567 0987 4159",
        accountHolderName: "Fazle Rabbi",
        date: "2023-10-13",
        trxId: "7651-0918-120954",
        amount: -50000,
        payment: "Out"
    ),

    ActivityTransectionModelClass(
        accountNo: "124 567 0987 34567",
        accountHolderName: "Rahul Reza",
        date: "2023-10-13",
        trxId: "7651-0918-765216",
        amount: 500000,
        payment: "InWord"
    ),

    ActivityTransectionModelClass(
        accountNo: "124 567 0987 865432",
        accountHolderName: "Nahid Hasan",
        date: "2023-10-17",
        trxId: "7651-0918-765219",
        amount: -300000,
        payment: "Out"
    ),

    ActivityTransectionModelClass(
        accountNo: "124 567 0987 1257",
        accountHolderName: "MujTabir",
        date: "2023-10-19",
        trxId: "7651-0918-076543",
        amount: 100000,
        payment: "InWord"
    ),

    ActivityTransectionModelClass(
        accountNo: "124 567 0987 1234",
        accountHolderName: "Abir Hasan",
        date: "2023-10-13",
        trxId: "7651-0918-097541",
        amount: 1000000,
        payment: "InWord"
    ),

    ActivityTransectionModelClass(
        accountNo: "124 567 0987 2178",
        accountHolderName: "Alamin Mondol",
        date: "2023-10-21",
        trxId: "7651-0918-125678",
        amount: -1100000,
        payment: "Out"
    ),
    ActivityTransectionModelClass(
        accountNo: "124 567 0987 2315",
        accountHolderName: "Rana Hossain",
        date: "2023-10-21",
        trxId: "7651-0918-098564",
        amount: 800000,
        payment: "InWord"
    ),
    ActivityTransectionModelClass(
        accountNo: "124 567 0987 1900",
        accountHolderName: "Sajib Hasan",
        date: "2023-10-23",
        trxId: "7651-0918-098765",
        amount: 600000,
        payment: "InWord"
    ),
  ];
}
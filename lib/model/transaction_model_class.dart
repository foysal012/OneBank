import 'package:flutter/material.dart';

class TransactionModelClass{

int? amount;
int? trxId;
String? title;
String? mediumAddress;
String? date;

TransactionModelClass(
    {this.amount, this.trxId, this.title, this.mediumAddress, this.date});

 static List<TransactionModelClass> generatedTransactionList = [

   TransactionModelClass(
     title: "Money transferred from",
     mediumAddress: "Google Pay New Yourk",
     amount: 325,
     date: "Date April 5, 2023",
     trxId: 100032500
   ),
   TransactionModelClass(
       title: "Money transferred from",
       mediumAddress: "Paypal London",
       amount: 1457,
       date: "Date April 17, 2023",
       trxId: 100071900
   ),
   TransactionModelClass(
       title: "Money transferred from",
       mediumAddress: "Bkash Pay Dhaka",
       amount: -10795,
       date: "Date May 09, 2023",
       trxId: 100061800
   ),
   TransactionModelClass(
       title: "Money transferred from",
       mediumAddress: "Nagad Pay Chattagram",
       amount: -999,
       date: "Date May 29, 2023",
       trxId: 100039500
   ),
   TransactionModelClass(
       title: "Money transferred from",
       mediumAddress: "Ali Pay Tokyo",
       amount: -1100,
       date: "Date June 11, 2023",
       trxId: 100092100
   ),
   TransactionModelClass(
       title: "Money transferred from",
       mediumAddress: "Apple Pay Hoston",
       amount: 1400,
       date: "Date June 23, 2023",
       trxId: 100011100
   ),
   TransactionModelClass(
       title: "Money transferred from",
       mediumAddress: "Amazone Pay Nairobi",
       amount: 1700,
       date: "Date June 26, 2023",
       trxId: 100019600
   ),
   TransactionModelClass(
       title: "Money transferred from",
       mediumAddress: "Rocket Pay Rajshahi",
       amount: -500,
       date: "Date July 1, 2023",
       trxId: 100087600
   ),
   TransactionModelClass(
       title: "Money transferred from",
       mediumAddress: "Uapy Pay Khulna",
       amount: -800,
       date: "Date July 10, 2023",
       trxId: 100057300
   ),
   TransactionModelClass(
       title: "Money transferred from",
       mediumAddress: "Payoneer Pay Istanbul",
       amount: 1000,
       date: "Date july 22, 2021",
       trxId: 100001900
   ),
 ];
}
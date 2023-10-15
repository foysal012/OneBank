import 'package:flutter/material.dart';

class OperatorModelClass{

  String? img;
  String? name;

  OperatorModelClass({this.img, this.name});

  static List<OperatorModelClass> operatorList = [
    OperatorModelClass(
      img: "images/w5.png",
      name: "GP"
    ),
    OperatorModelClass(
        img: "images/w6.png",
        name: "Banglalink"
    ),
    OperatorModelClass(
        img: "images/w7.png",
        name: "Robi"
    ),
    OperatorModelClass(
        img: "images/w8.png",
        name: "Taletalk"
    ),
    OperatorModelClass(
        img: "images/w9.png",
        name: "Airtel"
    ),
  ];
}
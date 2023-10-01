import 'package:flutter/material.dart';

class ButtonPageScreen{


  static void button1(dynamic ontap, String txt, Color clr, ){
    InkWell(
      onTap: ontap,
      child: Container(

        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),

        height: 60,
        width: double.infinity,

        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(15),
        ),

        child: Text("$txt",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
          fontSize: 20,
        ),
        ),
      ),
    );
  }

  static void button2( String txt,  size, Color clr, dynamic ontap,){
    InkWell(
      onTap: ontap,
      child: Text("$txt",
      style: TextStyle(
        fontSize: size,
        color: clr,
        fontWeight: FontWeight.w600,
      ),
      ),
    );
  }

}

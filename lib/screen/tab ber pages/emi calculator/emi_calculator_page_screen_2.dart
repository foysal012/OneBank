import 'package:flutter/material.dart';

class EmiCalculatorPageScreen2 extends StatefulWidget {
  const EmiCalculatorPageScreen2({Key? key}) : super(key: key);

  @override
  State<EmiCalculatorPageScreen2> createState() => _EmiCalculatorPageScreen2State();
}

class _EmiCalculatorPageScreen2State extends State<EmiCalculatorPageScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,

        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Colors.white,size: 30,)
        ),

        centerTitle: true,
        title: Text("Check Your EMI",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),

        actions: [
          Icon(Icons.help,color: Colors.white,size: 30,)
        ],
      ),

      //body: ,
    );
  }
}

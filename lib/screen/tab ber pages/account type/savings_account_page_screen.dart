import 'package:flutter/material.dart';

class SavingAccountpageScreen extends StatefulWidget {
  const SavingAccountpageScreen({Key? key}) : super(key: key);

  @override
  State<SavingAccountpageScreen> createState() => _SavingAccountpageScreenState();
}

class _SavingAccountpageScreenState extends State<SavingAccountpageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black54,),
        ),
      ),
    );
  }
}

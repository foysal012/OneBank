import 'package:flutter/material.dart';

class ActivitiesPageScreen extends StatefulWidget {
  const ActivitiesPageScreen({Key? key}) : super(key: key);

  @override
  State<ActivitiesPageScreen> createState() => _ActivitiesPageScreenState();
}

class _ActivitiesPageScreenState extends State<ActivitiesPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
      ),
    );
  }
}

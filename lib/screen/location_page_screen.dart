import 'package:flutter/material.dart';

class LocationPageScreen extends StatefulWidget {
  const LocationPageScreen({Key? key}) : super(key: key);

  @override
  State<LocationPageScreen> createState() => _LocationPageScreenState();
}

class _LocationPageScreenState extends State<LocationPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}

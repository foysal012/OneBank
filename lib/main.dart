import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onebankltd/screen/authentication/signup_page_screen.dart';
import 'package:onebankltd/screen/bottom%20nav%20ber/bottom_navigationbar_page_screen.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      //home: SignUpPageScreen(),
      home: BottomNavigationbarPageScreen(),

    );
  }
}

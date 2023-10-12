import 'package:flutter/material.dart';

class DrawerPageScreen extends StatefulWidget {
  const DrawerPageScreen({Key? key}) : super(key: key);

  @override
  State<DrawerPageScreen> createState() => _DrawerPageScreenState();
}

class _DrawerPageScreenState extends State<DrawerPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                    ),

                    Text("Foysal Joarder"),

                    Text("OBL58426652"),

                  ],
                ),
              )
          ),
          Expanded(
              flex: 4,
              child: Placeholder()),
          Expanded(
              flex: 3,
              child: Placeholder()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:onebankltd/screen/drawer/drawer_page_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key: _scafoldKey,
      drawer: DrawerPageScreen(),
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              _scafoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.black, size: 40,)
        ),

        centerTitle: true,

        title: Row(
          children: [
            Image(image: AssetImage("images/w1.png"), height: 40,width: 40,),

            Column(
              children: [
                Row(
                  children: [
                    Text("ONE",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                    ),

                    SizedBox(
                      width: 12,
                    ),

                    Text("Bank",
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 3,
                width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.3),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Text("Limited",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),

        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.notifications, size: 40,)
              ),
              Positioned(
                top: 13,
                right: 14,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                  )
              )
            ],
          )
        ],

      ),

      body: Container(
        color: Colors.red,
      ),
    );
  }
}

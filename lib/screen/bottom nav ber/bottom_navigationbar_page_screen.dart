import 'package:flutter/material.dart';
import 'package:onebankltd/screen/activities_page_screen.dart';
import 'package:onebankltd/screen/home_page_screen.dart';
import 'package:onebankltd/screen/location_page_screen.dart';
import 'package:onebankltd/screen/profile_page_screen.dart';

class BottomNavigationbarPageScreen extends StatefulWidget {
  const BottomNavigationbarPageScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationbarPageScreen> createState() => _BottomNavigationbarPageScreenState();
}

class _BottomNavigationbarPageScreenState extends State<BottomNavigationbarPageScreen> {


  List<Widget> pages = [
    HomePageScreen(),
    ActivitiesPageScreen(),
    //LocationPageScreen(),
    ProfilePageScreen(),
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },

        showSelectedLabels: false,
        showUnselectedLabels: true,
        selectedItemColor: Colors.red,
        selectedFontSize: 22,
        selectedIconTheme: IconThemeData(
          size: 25,
        ),

        unselectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),

        unselectedFontSize: 28,

        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_outlined),
          backgroundColor: Colors.grey[500],
          ),

          BottomNavigationBarItem(
            label: "Activities",
            icon: Icon(Icons.stacked_line_chart),
            backgroundColor: Colors.grey[500],
          ),

          // BottomNavigationBarItem(
          //   label: "Location",
          //   icon: Icon(Icons.location_city),
          //   backgroundColor: Colors.grey[500],
          // ),

          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
            backgroundColor: Colors.grey[500],
          ),
        ],
      ),
    );
  }
}

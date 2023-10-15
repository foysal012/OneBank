import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/account%20type/savings_account_page_screen.dart';

class ContactOblPageScreen extends StatefulWidget {
  const ContactOblPageScreen({Key? key}) : super(key: key);

  @override
  State<ContactOblPageScreen> createState() => _ContactOblPageScreenState();
}

class _ContactOblPageScreenState extends State<ContactOblPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/w4.png"),
            ),

            SizedBox(height: 10,),

            Text("Welcome To",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 8,),

            Text("One Bank Call Center",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.black,
                fontSize: 18,
              ),
            ),

            SizedBox(
              height: 8,
            ),

            Text("You are able to call this number",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black38,
                fontSize: 18,
              ),
            ),

            SizedBox(
              height: 18,
            ),

            Text("16269",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 18,
              ),
            ),

            SizedBox(
              height: 8,
            ),

            Text("or send an email to",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black38,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 18,),

            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.red,
                ),
              ),
              child: Center(child: Text("info@onebank.com.bd",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                  fontSize: 16,
                ),
              ),
              ),
            ),

            SizedBox(height: 18,),

            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.red,
              ),
              child: Center(child: Text("CALL NOW",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 16,
                ),
              )),
            ),

          ],
        ),
      ),
    );
  }
}

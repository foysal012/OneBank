import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill_payment_page_screen.dart';

class FundTransferPageScreen extends StatefulWidget {
  const FundTransferPageScreen({Key? key}) : super(key: key);

  @override
  State<FundTransferPageScreen> createState() => _FundTransferPageScreenState();
}

class _FundTransferPageScreenState extends State<FundTransferPageScreen> {
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 15,),

              Text("Fund Transfer Dashboard",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                  fontSize: 25,
                ),
              ),

              SizedBox(
                height: 18,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReUseAbleWidget(
                    onTap: (){

                    },
                    img: "images/w5.png",
                    name: "Own Bank",
                  ),
                  ReUseAbleWidget(
                    onTap: (){

                    },
                    img: "images/w6.png",
                    name: "Other Bank",
                  ),
                ],
              ),

              SizedBox(height: 5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReUseAbleWidget(
                    onTap: (){

                    },
                    img: "images/w7.png",
                    name: "Transfer From Credit Card",
                  ),
                  ReUseAbleWidget(
                    onTap: (){

                    },
                    img: "images/w8.png",
                    name: "Sl. Instraction",
                  ),
                ],
              ),

              ReUseAbleWidget(
                onTap: (){

                },
                img: "images/w9.png",
                name: "Fund Transfer History",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

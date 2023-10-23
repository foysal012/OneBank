import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill_payment_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/fund%20transfer/fund_transfer_page_screen_2.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/fund%20transfer/fund_transfer_page_screen_3.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/fund%20transfer/fund_transfer_page_screen_4.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/fund%20transfer/fund_transfer_page_screen_5.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/fund%20transfer/fund_transfer_page_screen_6.dart';

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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FundTransferPageScreen2()));
                    },
                    img: "images/w20.png",
                    name: "Own Bank",
                  ),
                  ReUseAbleWidget(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FundTransferPageScreen3()));
                    },
                    img: "images/w21.png",
                    name: "Other Bank",
                  ),
                ],
              ),

              SizedBox(height: 8,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReUseAbleWidget(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FundTransferPageScreen4()));
                    },
                    img: "images/w23.png",
                    name: "Transfer From Credit Card",
                  ),
                  ReUseAbleWidget(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FundTransferPageScreen5()));
                    },
                    img: "images/w24.png",
                    name: "Sl. Instraction",
                  ),
                ],
              ),

              SizedBox(height: 8,),

              ReUseAbleWidget(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FundTransferPageScreen6()));
                },
                img: "images/w19.png",
                name: "Fund Transfer History",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

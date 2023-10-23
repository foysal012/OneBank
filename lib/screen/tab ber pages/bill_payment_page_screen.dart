import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/account%20type/savings_account_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill%20payment/bill_payement_page_screen_3.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill%20payment/bill_payment_page_screen_2.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill%20payment/bill_payment_page_screen_4.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill%20payment/bill_payment_page_screen_5.dart';

class BillPaymentPageScreen extends StatefulWidget {
  const BillPaymentPageScreen({Key? key}) : super(key: key);

  @override
  State<BillPaymentPageScreen> createState() => _BillPaymentPageScreenState();
}

class _BillPaymentPageScreenState extends State<BillPaymentPageScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 15,),

              Text("Uitility Bill Dashboard",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BillPaymentPageScreen2() ));
                    },
                    img: "images/w15.png",
                    name: "Electricity Bill Payment",
                  ),
                  ReUseAbleWidget(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BillPaymentPageScreen3() ));
                    },
                    img: "images/w16.png",
                    name: "Water Bill Payment",
                  ),
                ],
              ),

              SizedBox(height: 5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ReUseAbleWidget(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BillPaymentPageScreen4() ));
                    },
                    img: "images/w17.png",
                    name: "Bill Report",
                  ),
                  ReUseAbleWidget(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => BillPaymentPageScreen5() ));
                    },
                    img: "images/w17.png",
                    name: "Biller List",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReUseAbleWidget extends StatelessWidget {
   ReUseAbleWidget({
    super.key, this.img, this.name, this.onTap
  });

  String? img;
  String? name;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 180,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.red,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(img!,height: 130, width: 120,),
            Text("$name")
          ],
        ),
      ),
    );
  }
}

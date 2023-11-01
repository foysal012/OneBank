import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/air_time_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill_payment_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/emi_calculator_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/fund_transfer_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/obl_banking_page_screen.dart';

class DrawerPageScreen extends StatefulWidget {
  const DrawerPageScreen({Key? key}) : super(key: key);

  @override
  State<DrawerPageScreen> createState() => _DrawerPageScreenState();
}

class _DrawerPageScreenState extends State<DrawerPageScreen> {

  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffF3E9ED),
        child: Column(
          children: [

            Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          //color: Colors.yellow,
                          image: DecorationImage(image: AssetImage("images/w3.jpg"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                      ),

                      Text("Foysal Joarder",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                      ),

                      Text("OBL58426652",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                )
            ),

            Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [

                      DrawerItemWidget(
                        onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => OblBankingPageScreen()));
                        },
                        title: "Banking",
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      DrawerItemWidget(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => FundTransferPageScreen()));
                        },
                        title: "Fund Transfer",
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      DrawerItemWidget(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => BillPaymentPageScreen()));
                        },
                        title: "Bill Pay",
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      DrawerItemWidget(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AirTimePageScreen()));
                        },
                        title: "Airtime",
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      DrawerItemWidget(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EmiCalculatorPageScreen()));
                        },
                        title: "EMI Calculator",
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DrawerItemWidget(
                            onTap: () {

                            },
                            title: "Notification",
                          ),

                          Switch(
                              value: isOn,
                              onChanged: (value){
                                setState(() {
                                  isOn = value;
                                });
                              },
                            activeColor: Colors.white,
                            activeTrackColor: Colors.red,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 5,
                      ),

                      DrawerItemWidget(
                        onTap: () {

                        },
                        title: "Settings",
                      ),

                      SizedBox(
                        height: 5,
                      ),

                    ],
                  ),
                ),),

            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Call For Support",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          fontSize: 20,
                        ),
                      ),

                      SizedBox(height: 5,),

                      Row(
                        children: [

                          InkWell(
                              onTap:(){

                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.red,
                                ),
                                child: Icon(Icons.wifi_calling_3_outlined, color: Colors.white,),
                              ),
                          ),

                          SizedBox(width: 10,),

                          Text("162453",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.red,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),

                      Spacer(),

                      InkWell(
                        onTap: (){

                        },
                        child: Row(
                          children: [
                            Icon(Icons.logout, color: Colors.red,),

                            SizedBox(width: 5,),

                            Text("Log out",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 30,),

                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class DrawerItemWidget extends StatelessWidget {
   DrawerItemWidget({
    super.key, this.title, this.onTap
  });
String? title;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [ 
          
          Row(
            children: [
              
            Icon(Icons.arrow_forward_ios),
            
            SizedBox(width: 5,),
            
            Text("$title",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black54,
              fontSize: 18,
            ),
            ),
            ],
          ),
          

        ],
      ),
    );
  }
}

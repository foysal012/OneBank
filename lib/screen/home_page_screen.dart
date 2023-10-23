import 'package:flutter/material.dart';
import 'package:onebankltd/screen/drawer/drawer_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/air_time_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill_payment_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/contact_obl_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/emi_calculator_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/fund_transfer_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/news_and_event_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/obl_banking_page_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> with SingleTickerProviderStateMixin {

  GlobalKey<ScaffoldState> _scafoldKey = GlobalKey();

  TabController? _tabController;

  bool selected = false;
  var index = 0;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key: _scafoldKey,
      drawer: DrawerPageScreen(),

      appBar: AppBar(
        backgroundColor: Colors.grey,
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
        color: Colors.grey,
        child: Column(
          children: [
            SizedBox(height: 10,),

            Expanded(
                flex: 2,
                child: Container(
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicator: BoxDecoration(
                      //color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 5,
                        color: Colors.red,
                      )
                    ),
                    indicatorColor: Colors.red,
                    onTap: (val){
                      print("Index is $val");
                    },
                    tabs: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/w10.png"),height: 80, width: 80),
                            Text("OBL Banking"),
                          ],
                        ),
                      ),

                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:  Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/w11.png"),height: 80, width: 80),
                            Text("Fund Transfer"),
                          ],
                        ),
                      ),

                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:   Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/w12.png"),height: 80, width: 80),
                            Text("Bill Payment"),
                          ],
                        ),
                      ),

                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:  Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/w13.png"),height: 80, width: 80),
                            Text("Airtime"),
                          ],
                        ),
                      ),

                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:  Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/w14.png"),height: 80, width: 80),
                            Text("Contact OBL"),
                          ],
                        ),
                      ),

                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:  Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/w19.png"),height: 80, width: 80),
                            Text("News,Event"),
                          ],
                        ),
                      ),

                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:  Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("images/w18.png"),height: 80, width: 80),
                            Text("EMI Calculator"),
                          ],
                        ),
                      ),
                    ],

                  ),
                )
            ),

            SizedBox(height: 20,),


              Expanded(
                  flex: 8,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          ),
                          child: OblBankingPageScreen()
                      ),

                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          ),
                          child: FundTransferPageScreen()
                      ),

                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          ),
                          child: BillPaymentPageScreen()
                      ),

                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          ),
                          child: AirTimePageScreen(),
                      ),

                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          ),
                          child: ContactOblPageScreen()
                      ),

                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          ),
                          child: NewAndEventPageScreen()
                      ),

                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          ),
                          child: EmiCalculatorPageScreen()
                      ),

                    ],
                  )),

          ],
        ),
      ),
    );
  }
}

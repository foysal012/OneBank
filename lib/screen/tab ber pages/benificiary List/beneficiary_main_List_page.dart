import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/beneficiary_mfs_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/beneficiary_other_bank_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/beneficiary_own_bank_page_screen.dart';

class BeneficiaryMainListPage extends StatefulWidget {
  const BeneficiaryMainListPage({Key? key}) : super(key: key);

  @override
  State<BeneficiaryMainListPage> createState() => _BeneficiaryMainListPageState();
}

class _BeneficiaryMainListPageState extends State<BeneficiaryMainListPage> with SingleTickerProviderStateMixin{

 late TabController tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white,size: 35,),
        ),

        centerTitle: true,
        title: Text("Beneficiary List",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        ),

        actions: [
          IconButton(
            onPressed: (){
              //Navigator.of(context).pop();
            },
            icon: Icon(Icons.help, color: Colors.white,size: 35,),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 80,
            width: double.infinity,
            color: Colors.red,
            child: Expanded(
              flex: 2,
              child: TabBar(
                controller: tabController,
                isScrollable: true,
                indicator: BoxDecoration(
                  //color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 5,
                      color: Colors.white,
                    )
                ),
                indicatorColor: Colors.white,
                onTap: (val){
                  print("Index is $val");
                },
                tabs: [
                  Container(
                    height: 60,
                    width: 100,
                    child: Center(child: Text("Own Bank",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                    )),
                  ),
                  Container(
                    height: 60,
                    width: 100,
                    child: Center(child: Text("Other Bank",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    )),
                  ),
                  Container(
                    height: 60,
                    width: 100,
                    child: Center(child: Text("MFS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),

          Container(
            child: Expanded(
                flex: 7,
                child: TabBarView(
                  controller: tabController,
                    children: [
                      BeneficiaryOwnBankPageScreen(),
                      BeneficiaryOtherBankPageScreen(),
                      BeneficiaryMFSPageScreen()
                    ],
                ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/own%20bank/account_beneficiary.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/own%20bank/card_beneficiary.dart';

class AddBeneficiaryOwnBankPageScreen extends StatefulWidget {
  const AddBeneficiaryOwnBankPageScreen({Key? key}) : super(key: key);

  @override
  State<AddBeneficiaryOwnBankPageScreen> createState() => _AddBeneficiaryOwnBankPageScreenState();
}

class _AddBeneficiaryOwnBankPageScreenState extends State<AddBeneficiaryOwnBankPageScreen> with SingleTickerProviderStateMixin {


 late TabController tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white,size: 30,),
        ),

        centerTitle: true,
        title: Text("Add Beneficiary (Own Bank)",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
            onPressed: (){
              //Navigator.of(context).pop();
            },
            icon: Icon(Icons.help, color: Colors.white,size: 30,),
          ),
        ],
      ),

      body: Column(
        children: [

        SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

          Container(
            height: 80,
            padding: EdgeInsets.only(
              left: 20,
              right: 20
            ),
            width: double.infinity,
            child: Expanded(
                flex: 2,
                child: TabBar(
                  controller: tabController,
                  tabs: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 2,
                                color: Colors.red,
                              )
                            ),
                            child: Center(child: Text("Account")),
                          ),
                        ),


                        Expanded(
                          flex: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 2,
                                color: Colors.red,
                              )
                          ),
                          child: Center(child: Text("Credit Card")),
                          ),
                        ),
                  ],
                )

            ),




          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

          Container(
          child: Expanded(
            flex: 7,
            child: TabBarView(
              controller: tabController,
              children: [
                AccountBeneficiary(),
                CardBeneficiary()
              ],
            ),
          ),
    )


        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
   ButtonWidget({
    super.key,
    required this.onTap,
    required this.title
  });

  VoidCallback onTap;
  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
        ),
        child: Center(child: Text("PROCEED",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        )),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({
    super.key,
    required this.control,
    required this.lavelName,
  });

  final TextEditingController control;
  String lavelName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: control,
      decoration: InputDecoration(
        label: Text("$lavelName"),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: Colors.red,
              width: 1.5,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),

      ),
    );
  }
}

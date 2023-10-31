import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/other%20bank/account_beneficiary_other_bank.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/other%20bank/card_beneficiary_other_bank.dart';

class AddBeneficiaryOtherBankPageScreen extends StatefulWidget {
  const AddBeneficiaryOtherBankPageScreen({Key? key}) : super(key: key);

  @override
  State<AddBeneficiaryOtherBankPageScreen> createState() => _AddBeneficiaryOtherBankPageScreenState();
}

class _AddBeneficiaryOtherBankPageScreenState extends State<AddBeneficiaryOtherBankPageScreen> with SingleTickerProviderStateMixin {


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
        title: Text("Add Beneficiary (Other Bank)",
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
                  // AccountBeneficiary(),
                  // CardBeneficiary()

                  AccountBeneficiaryOtherBank(),
                  CardBeneficiaryOtherBank(),
                ],
              ),
            ),
          )


          // TextFieldWidget(
          //     control: emailadController,
          //     lavelName: "Account No",
          // ),
          //
          // SizedBox(height: MediaQuery.of(context).size.height * 0.025,),
          //
          // TextFieldWidget(
          //   control: emailadController,
          //   lavelName: "Account Title",
          // ),
          //
          // SizedBox(height: MediaQuery.of(context).size.height * 0.025,),
          //
          // TextFieldWidget(
          //   control: emailadController,
          //   lavelName: "Nick Name",
          // ),
          //
          // SizedBox(height: MediaQuery.of(context).size.height * 0.025,),
          //
          // TextFieldWidget(
          //   control: emailadController,
          //   lavelName: "Mobile Number(Optional)",
          // ),
          //
          // SizedBox(height: MediaQuery.of(context).size.height * 0.025,),
          //
          // TextFieldWidget(
          //   control: emailadController,
          //   lavelName: "Email Address(Optional)",
          // ),
          //
          // SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
          //
          // ButtonWidget(
          //   onTap: (){},
          //   title: "PORCEED",
          // )

        ],
      ),
    );
  }
}



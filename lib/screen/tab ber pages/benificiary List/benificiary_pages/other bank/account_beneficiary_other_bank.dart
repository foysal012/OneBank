import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/model/user_model.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/own%20bank/add_beneficiary_own_bank_page_screen.dart';

class AccountBeneficiaryOtherBank extends StatefulWidget {
  const AccountBeneficiaryOtherBank({Key? key}) : super(key: key);

  @override
  State<AccountBeneficiaryOtherBank> createState() => _AccountBeneficiaryOtherBankState();
}

class _AccountBeneficiaryOtherBankState extends State<AccountBeneficiaryOtherBank> {
  TextEditingController bankNameController = TextEditingController();
  TextEditingController branchNameController = TextEditingController();
  TextEditingController accNoController = TextEditingController();
  TextEditingController accTitleController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController emailadController = TextEditingController();

  Box otherBankBox = Hive.box("otherbank");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [

              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

              TextFieldWidget(
                control: bankNameController,
                lavelName: "Bank Name",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: branchNameController,
                lavelName: "Branch Name",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: accNoController,
                lavelName: "Account No",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: accTitleController,
                lavelName: "Account Title",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: nickNameController,
                lavelName: "Nick Name",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: mobileNoController,
                lavelName: "Mobile Number(Optional)",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: emailadController,
                lavelName: "Email Address(Optional)",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),

              ButtonWidget(
                onTap: (){
                  if(accNoController.text != null && accTitleController.text != null && nickNameController.text != null || mobileNoController.text != null || emailadController.text != null ){

                     UserModelOtherBank userModelOtherBank = UserModelOtherBank(
                        bankName: bankNameController.text,
                       branchName: branchNameController.text,
                       accountNo: accNoController.text,
                       accountTitle: accTitleController.text,
                       nickName: nickNameController.text,
                       mobileNo: mobileNoController.text,
                       emailad: emailadController.text
                     );

                    otherBankBox.add(userModelOtherBank);
                  }

                  Navigator.of(context).pop();
                },
                title: "PORCEED",
              )

            ],
          ),
        ),
      ),
    );
  }

}

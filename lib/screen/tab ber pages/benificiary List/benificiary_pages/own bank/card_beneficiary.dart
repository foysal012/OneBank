import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/model/user_model.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/own%20bank/add_beneficiary_own_bank_page_screen.dart';

class CardBeneficiary extends StatefulWidget {
  const CardBeneficiary({Key? key}) : super(key: key);

  @override
  State<CardBeneficiary> createState() => _CardBeneficiaryState();
}

class _CardBeneficiaryState extends State<CardBeneficiary> {
  TextEditingController cardNoController = TextEditingController();
  TextEditingController cardTitleController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController emailadController = TextEditingController();

  Box ownBankBox = Hive.box("ownbank");

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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              TextFieldWidget(
                control: cardNoController,
                lavelName: "Card No",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              TextFieldWidget(
                control: cardTitleController,
                lavelName: "Card Title",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              TextFieldWidget(
                control: nickNameController,
                lavelName: "Nick Name",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              TextFieldWidget(
                control: mobileNoController,
                lavelName: "Mobile Number(Optional)",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              TextFieldWidget(
                control: emailadController,
                lavelName: "Email Address(Optional)",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              ButtonWidget(
                onTap: () {
                  if (cardNoController.text != null &&
                          cardTitleController.text != null &&
                          nickNameController.text != null ||
                      mobileNoController.text != null ||
                      emailadController.text != null) {
                    UserModelOwnBank userModelOwnBank = UserModelOwnBank(
                      accountNo: cardNoController.text,
                      accountTitle: cardTitleController.text,
                      nickName: nickNameController.text,
                      mobileNo: mobileNoController.text,
                      emailad: emailadController.text,
                    );

                    ownBankBox.add(userModelOwnBank);
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

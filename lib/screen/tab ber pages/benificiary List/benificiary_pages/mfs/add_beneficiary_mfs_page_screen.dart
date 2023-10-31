import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/model/user_model.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/own%20bank/add_beneficiary_own_bank_page_screen.dart';

class AddBeneficiaryMFSPageScreen extends StatefulWidget {
  const AddBeneficiaryMFSPageScreen({Key? key}) : super(key: key);

  @override
  State<AddBeneficiaryMFSPageScreen> createState() => _AddBeneficiaryMFSPageScreenState();
}

class _AddBeneficiaryMFSPageScreenState extends State<AddBeneficiaryMFSPageScreen> {

  TextEditingController mfsTypeController = TextEditingController();
  TextEditingController walletNoController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController emailAdController = TextEditingController();
  TextEditingController remarkController = TextEditingController();

  Box mfsBox = Hive.box("mfs");

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
        title: Text("Add Beneficiary (MFS)",
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

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [

              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),


              TextFieldWidget(
                control: mfsTypeController,
                lavelName: "MFS Type",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: walletNoController,
                lavelName: "Wallet Number",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: nickNameController,
                lavelName: "Nick Name",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: emailAdController,
                lavelName: "Email Address(Optional)",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

              TextFieldWidget(
                control: remarkController,
                lavelName: "Remarks",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),

              ButtonWidget(
                onTap: (){
                  if(mfsTypeController.text != null && walletNoController.text != null && nickNameController.text != null || emailAdController.text != null || remarkController.text != null ){

                    UserModelMFS userModelMFS = UserModelMFS(
                      mfsName: mfsTypeController.text,
                      accountNo: walletNoController.text,
                      nickName: nickNameController.text,
                      mobileNo: emailAdController.text,
                      remark: remarkController.text,
                    );

                    mfsBox.add(userModelMFS);
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

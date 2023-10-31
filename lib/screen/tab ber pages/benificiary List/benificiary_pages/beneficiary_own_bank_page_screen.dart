import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/model/user_model.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/own%20bank/add_beneficiary_own_bank_page_screen.dart';

class BeneficiaryOwnBankPageScreen extends StatefulWidget {
  const BeneficiaryOwnBankPageScreen({Key? key}) : super(key: key);

  @override
  State<BeneficiaryOwnBankPageScreen> createState() => _BeneficiaryOwnBankPageScreenState();
}

class _BeneficiaryOwnBankPageScreenState extends State<BeneficiaryOwnBankPageScreen> {

  TextEditingController searchController = TextEditingController();
  TextEditingController accNoController = TextEditingController();
  TextEditingController accTitleController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController emailadController = TextEditingController();

  Box ownBankBox = Hive.box("ownbank");

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "A/C no or title or nick name or mobile or email,",
                  prefixIcon: IconButton(
                    onPressed: (){},
                  icon: Icon(Icons.search, color: Colors.red, size: 30,),
                  )
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              ValueListenableBuilder(
                  valueListenable: ownBankBox.listenable(),
                  builder: (context, Box box, widget){
                    if(box.isEmpty){
                      return Text("No User Found");
                    }
                      return ListView.builder(
                          reverse: true,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: box.length,
                          itemBuilder: (context, index){
                            var data = box.values.toList().cast<UserModelOwnBank>();
                            return Container(
                              margin: EdgeInsets.only(
                                bottom: 20,
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              height: 130,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 3,
                                  color: Colors.red,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("AccNo: ${data[index].accountNo}"),
                                      Text("AccTitle: ${data[index].accountTitle}"),
                                      Text("NickName: ${data[index].nickName}"),
                                      Text("MobileNo: ${data[index].mobileNo}"),
                                      Text("Email add: ${data[index].emailad}"),
                                    ],
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 10,
                                      child: IconButton(
                                        onPressed: (){
                                          updateUser(
                                              data[index],
                                              data[index].accountNo.toString(),
                                              data[index].accountTitle.toString(),
                                              data[index].nickName.toString(),
                                              data[index].mobileNo.toString(),
                                              data[index].emailad.toString()
                                          );
                                        },
                                      icon: Icon(Icons.edit, color: Colors.green,),
                                      ),

                                  ),

                                  Positioned(
                                    top: 50,
                                    right: 10,
                                    child: IconButton(
                                      onPressed: (){
                                        deleteUser(data[index]);
                                      },
                                      icon: Icon(Icons.delete, color: Colors.red,),
                                    ),

                                  )
                                ],
                              )
                            );

                          });
                  }
              )


            ],
          ),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddBeneficiaryOwnBankPageScreen()));
        },
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: Icon(Icons.add, color: Colors.white, size: 40,),
      ),
      ),
    );
  }

  void updateUser( UserModelOwnBank userModelOwnBank, String accNo, String accName, String nickName, String mobileNo, String emailad) async{

    accTitleController.text = accName;
    accNoController.text = accNo;
    nickNameController.text = nickName;
    mobileNoController.text = mobileNo;
    emailadController.text = emailad;
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [

                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),


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

                        userModelOwnBank.accountNo = accNoController.text;
                        userModelOwnBank.accountTitle = accTitleController.text;
                        userModelOwnBank.nickName = nickNameController.text;
                        userModelOwnBank.mobileNo = mobileNoController.text;
                        userModelOwnBank.emailad = emailadController.text;

                        userModelOwnBank.save();

                      }

                      Navigator.of(context).pop();
                    },
                    title: "PORCEED",
                  )

                ],
              ),
            ),
          );
        }
    );
  }

  void deleteUser(UserModelOwnBank userModelOwnBank) async{
    //await ownBankBox.deleteAt(userModelOwnBank as int);
    await userModelOwnBank.delete();

  }
}

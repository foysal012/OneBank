import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/mfs/add_beneficiary_mfs_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/model/user_model.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/benificiary_pages/own%20bank/add_beneficiary_own_bank_page_screen.dart';

class BeneficiaryMFSPageScreen extends StatefulWidget {
  const BeneficiaryMFSPageScreen({Key? key}) : super(key: key);

  @override
  State<BeneficiaryMFSPageScreen> createState() => _BeneficiaryMFSPageScreenState();
}

class _BeneficiaryMFSPageScreenState extends State<BeneficiaryMFSPageScreen> {

  TextEditingController searchController = TextEditingController();
  TextEditingController mfsTypeController = TextEditingController();
  TextEditingController walletController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController remarkController = TextEditingController();

  Box mfsBox = Hive.box("mfs");

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

              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

              ValueListenableBuilder(
                  valueListenable: mfsBox.listenable(),
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
                          var data = box.values.toList().cast<UserModelMFS>();
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
                                      Text("Name: ${data[index].nickName}"),
                                      Text("Wallet No: ${data[index].accountNo}"),
                                      Text("Account Type: ${data[index].mfsName}"),
                                      Text("Email: ${data[index].mobileNo}"),
                                      Text("Active",
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: IconButton(
                                      onPressed: (){
                                        updateUser(
                                            data[index],
                                            data[index].nickName.toString(),
                                            data[index].accountNo.toString(),
                                            data[index].mfsName.toString(),
                                            data[index].mobileNo.toString(),
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
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddBeneficiaryMFSPageScreen()));
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

  void updateUser( UserModelMFS userModelMFS, String nickName, String walletNo, String accountType, String email, ) async{

    nickNameController.text = nickName;
    walletController.text = walletNo;
    mfsTypeController.text = accountType;
    mobileNoController.text = email;

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
                    control: mfsTypeController,
                    lavelName: "MFS Type",
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

                  TextFieldWidget(
                    control: walletController,
                    lavelName: "Wallet Number",
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

                  TextFieldWidget(
                    control: nickNameController,
                    lavelName: "Nick Name",
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.025,),

                  TextFieldWidget(
                    control: mobileNoController,
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
                      if(mfsTypeController.text != null && walletController.text != null && nickNameController.text != null || mobileNoController.text != null || remarkController.text != null ){

                        userModelMFS.mfsName = mfsTypeController.text;
                        userModelMFS.accountNo = walletController.text;
                        userModelMFS.nickName = nickNameController.text;
                        userModelMFS.mobileNo = mobileNoController.text;
                        userModelMFS.remark = remarkController.text;

                        userModelMFS.save();
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

  void deleteUser(UserModelMFS userModelMFS) async{
    //await ownBankBox.deleteAt(userModelOwnBank as int);
    await userModelMFS.delete();

  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill%20payment/select_time_category_page_screen.dart';

class FundTransferPageScreen6 extends StatefulWidget {
  const FundTransferPageScreen6({Key? key}) : super(key: key);

  @override
  State<FundTransferPageScreen6> createState() => _FundTransferPageScreen6State();
}

class _FundTransferPageScreen6State extends State<FundTransferPageScreen6> {

  TextEditingController accountController = TextEditingController();
  TextEditingController billController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController date1Controller = TextEditingController();
  TextEditingController customerCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red,

        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Colors.white,size: 30,)
        ),

        centerTitle: true,
        title: Text("Fund Transfer History",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),

        actions: [
          Icon(Icons.help,color: Colors.white,size: 30,)
        ],
      ),

      body: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            children: [
              SizedBox(height: 10,),

              TextFormField(
                controller: accountController,
                decoration: InputDecoration(
                  label: Text("Select Account No "),
                  hintText: "654 454 ***",
                  suffixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 1
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 1
                    ),
                  ),
                ),

              ),

              SizedBox(height: 20,),

              TextFormField(
                controller: billController,
                decoration: InputDecoration(
                  label: Text("Bill Type"),
                  hintText: "DESCO Postpaid",
                  suffixIcon: PopupMenuButton(
                    initialValue: billerType.Own_Bank_Transfer,
                    onSelected: (billerType value){
                      setState(() {
                        billController.text = value.name as String;
                      });
                    },
                    itemBuilder: (BuildContext context){
                      return <PopupMenuEntry<billerType>>[
                        PopupMenuItem<billerType>(
                          child: Text("Own_Bank_Transfer"),
                          value: billerType.Own_Bank_Transfer,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Other_Bank_Transfer"),
                          value: billerType.Other_Bank_Transfer,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Credit_Card_Trasnfer"),
                          value: billerType.Credit_Card_Trasnfer,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("St_Instruction_Transfer"),
                          value: billerType.St_Instruction_Transfer,
                        ),

                      ];
                    },
                    icon: Icon(Icons.arrow_drop_down),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 1
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 1
                    ),
                  ),
                ),

              ),

              SizedBox(
                height: 20,
              ),

              SelectTimeCategoryPageScreen(),

              SizedBox(
                height: 20,
              ),

              Center(
                child:Text("Search With Custom Date Range",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                children: [

                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      controller: dateController,
                      decoration: InputDecoration(
                        label: Text("From Date"),
                        hintText: "Select a date",
                        suffixIcon: IconButton(
                          onPressed: () async{

                            DateTime?  pickDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2050)
                            );

                            if(pickDate != null){
                              print(pickDate);
                              String formattedDate = DateFormat("yyyy-MM-dd").format(pickDate);
                              print(formattedDate);

                              setState(() {
                                dateController.text = formattedDate;
                              });
                            }
                          },
                          icon: Icon(Icons.calendar_month),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1
                          ),
                        ),
                      ),

                    ),
                  ),

                  SizedBox(width: 15,),

                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      controller: date1Controller,
                      decoration: InputDecoration(
                        label: Text("To Date"),
                        hintText: "Select a date",
                        suffixIcon: IconButton(
                          onPressed: () async{

                            DateTime?  pickDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2050)
                            );

                            if(pickDate != null){
                              print(pickDate);
                              String formattedDate = DateFormat("yyyy-MM-dd").format(pickDate);
                              print(formattedDate);

                              setState(() {
                                date1Controller.text = formattedDate;
                              });
                            }
                          },
                          icon: Icon(Icons.calendar_month),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          borderSide: BorderSide(
                              color: Colors.red,
                              width: 1
                          ),
                        ),
                      ),

                    ),
                  ),

                ],
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SavingAccountpageScreen()));
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red,
                  ),
                  child: Center(child: Text("SEARCH",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

enum  billerType {
  Own_Bank_Transfer,
  Other_Bank_Transfer,
  Credit_Card_Trasnfer,
  St_Instruction_Transfer,
}
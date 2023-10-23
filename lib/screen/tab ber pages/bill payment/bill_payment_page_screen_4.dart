import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/bill%20payment/select_time_category_page_screen.dart';

class BillPaymentPageScreen4 extends StatefulWidget {
  const BillPaymentPageScreen4({Key? key}) : super(key: key);

  @override
  State<BillPaymentPageScreen4> createState() => _BillPaymentPageScreen4State();
}

class _BillPaymentPageScreen4State extends State<BillPaymentPageScreen4> {

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
        title: Text("Utility Bills Report",
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
                controller: billController,
                decoration: InputDecoration(
                  label: Text("Bill Type"),
                  hintText: "DESCO Postpaid",
                  suffixIcon: PopupMenuButton(
                    initialValue: billerType.DESKO_Prepaid,
                    onSelected: (billerType value){
                      setState(() {
                        billController.text = value.name as String;
                      });
                    },
                    itemBuilder: (BuildContext context){
                      return <PopupMenuEntry<billerType>>[
                        PopupMenuItem<billerType>(
                          child: Text("DESKO Prepaid"),
                          value: billerType.DESKO_Prepaid,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("DESKO Postpaid"),
                          value: billerType.DESKO_Postpaid,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("DPDC Prepaid"),
                          value: billerType.DPDC_Prepaid,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("DPDC Postpaid"),
                          value: billerType.DPDC_Postpaid,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("NESKO Prepaid"),
                          value: billerType.NESKO_Prepaid,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("DESKO Postpaid"),
                          value: billerType.NESKO_Postpaid,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Dhaka Wasa"),
                          value: billerType.Dhaka_Wasa,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Khulna Wasa"),
                          value: billerType.Khulna_Wasa,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Rajshahi Wasa"),
                          value: billerType.Rajshahi_Wasa,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Rangpur Wasa"),
                          value: billerType.Rangpur_Wasa,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Mymanshing Wasa"),
                          value: billerType.Mymansing_Wasa,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Shylet Wasa"),
                          value: billerType.Shylet_Wasa,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Chattagram Wasa"),
                          value: billerType.Chattagram_Wasa,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("Barishal Wasa"),
                          value: billerType.Barishal_Wasa,
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
  DESKO_Prepaid,
  DESKO_Postpaid,
  DPDC_Prepaid,
  DPDC_Postpaid,
  NESKO_Prepaid,
  NESKO_Postpaid,
  Dhaka_Wasa,
  Khulna_Wasa,
  Rajshahi_Wasa,
  Rangpur_Wasa,
  Mymansing_Wasa,
  Shylet_Wasa,
  Chattagram_Wasa,
  Barishal_Wasa,
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BillPaymentPageScreen2 extends StatefulWidget {
  const BillPaymentPageScreen2({Key? key}) : super(key: key);

  @override
  State<BillPaymentPageScreen2> createState() => _BillPaymentPageScreen2State();
}

class _BillPaymentPageScreen2State extends State<BillPaymentPageScreen2> {

  TextEditingController accountController = TextEditingController();
  TextEditingController billController = TextEditingController();
  TextEditingController dateController = TextEditingController();
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
        title: Text("Electricity Bill Payment",
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
                    ),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 1
                    ),
                  ),
                ),

              ),
              Container(
                height: 45,
                padding: EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.red
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Available Balance",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text("2,46,000",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

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
                        PopupMenuItem(
                            child: Text("DESKO Prepaid"),
                          value: billerType.DESKO_Prepaid,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("DESKO Postpaid"),
                          value: billerType.DESKO_Postpaid,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("NESKO Prepaid"),
                          value: billerType.NESKO_Prepaid,
                        ),
                        PopupMenuItem<billerType>(
                          child: Text("DESKO Postpaid"),
                          value: billerType.NESKO_Postpaid,
                        ),
                      ];
                    },
                    icon: Icon(Icons.arrow_drop_down),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
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

                  TextFormField(
                    controller: dateController,
                    decoration: InputDecoration(
                      label: Text("Date"),
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
                        icon: Icon(Icons.arrow_drop_down),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
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

              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: TextFormField(
                      controller: customerCodeController,
                      decoration: InputDecoration(
                        label: Text("Customer Code "),
                        hintText: "Billar ID",
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

                  SizedBox(width: 3,),

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1,
                              color: Colors.red
                          ),
                          color: Colors.red[100]
                      ),
                      child: Icon(Icons.search, color: Colors.red,size: 30,),
                    ),
                  )
                ],
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
                  child: Center(child: Text("VALIDATE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
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
  NESKO_Prepaid,
  NESKO_Postpaid,
}


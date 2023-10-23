import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BillPaymentPageScreen3 extends StatefulWidget {
  const BillPaymentPageScreen3({Key? key}) : super(key: key);

  @override
  State<BillPaymentPageScreen3> createState() => _BillPaymentPageScreen3State();
}

class _BillPaymentPageScreen3State extends State<BillPaymentPageScreen3> {
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
        title: Text("Water Bill Payment",
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
                    initialValue: billerType.Dhaka_Wasa,
                    onSelected: (billerType value){
                      setState(() {
                        //billController = valu.toString() as TextEditingController;
                        billController.text = value.name as String;
                      });
                    },
                    itemBuilder: (BuildContext context){
                      return <PopupMenuEntry<billerType>>[
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
                height: 23,
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

                  SizedBox(width: 5,),

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
  Dhaka_Wasa,
  Khulna_Wasa,
  Rajshahi_Wasa,
  Rangpur_Wasa,
  Mymansing_Wasa,
  Shylet_Wasa,
  Chattagram_Wasa,
  Barishal_Wasa,
}


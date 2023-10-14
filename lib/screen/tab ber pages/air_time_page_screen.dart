import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/account%20type/savings_account_page_screen.dart';

class AirTimePageScreen extends StatefulWidget {
  const AirTimePageScreen({Key? key}) : super(key: key);

  @override
  State<AirTimePageScreen> createState() => _AirTimePageScreenState();
}

class _AirTimePageScreenState extends State<AirTimePageScreen> {

  TextEditingController _accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            color: Colors.white
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 10,),

              Text("Mobile Recharge",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                  fontSize: 25,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: _accountController,
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

              SizedBox(height: 10,),

              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: TextFormField(
                      controller: _accountController,
                      decoration: InputDecoration(
                        label: Text("Mobile Number "),
                        hintText: "01746******",
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

              SizedBox(height: 10,),

              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
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
                        SizedBox(height: 2,),
                        Text("GP")
                      ],
                    ),
                  ),

                  SizedBox(width: 3,),

                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
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
                        SizedBox(height: 2,),
                        Text("Banglalink")
                      ],
                    ),
                  ),

                  SizedBox(width: 3,),

                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
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
                        SizedBox(height: 2,),
                        Text("Robi")
                      ],
                    ),
                  ),

                  SizedBox(width: 3,),

                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
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
                        SizedBox(height: 2,),
                        Text("Teletalk")
                      ],
                    ),
                  ),

                  SizedBox(width: 3,),

                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Container(
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
                        SizedBox(height: 2,),
                        Text("Airtel")
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    flex: 5,
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
                      child: Center(child: Text("Prepaid",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.red
                        ),
                      ),),
                    ),
                  ),

                  SizedBox(width: 10,),

                  Expanded(
                    flex: 5,
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
                      child: Center(child: Text("Postpaid",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.red
                        ),
                      ),),
                    ),
                  ),

                ],
              ),

              SizedBox(height: 10,),

              TextFormField(
                controller: _accountController,
                decoration: InputDecoration(
                  label: Text("Amount "),
                  hintText: "20 / 50 / 100 / ***",
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

              SizedBox(height: 10,),

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
                  child: Center(child: Text("PROCED",
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

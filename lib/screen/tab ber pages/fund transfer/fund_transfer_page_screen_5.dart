import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/benificiary%20List/beneficiary_main_List_page.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/fund%20transfer/select_transfer_type_page_screen.dart';

class FundTransferPageScreen5 extends StatefulWidget {
  const FundTransferPageScreen5({Key? key}) : super(key: key);

  @override
  State<FundTransferPageScreen5> createState() => _FundTransferPageScreen5State();
}

class _FundTransferPageScreen5State extends State<FundTransferPageScreen5> {
  TextEditingController accountController = TextEditingController();
  TextEditingController account2Controller = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController remarkCodeController = TextEditingController();
  TextEditingController dateController = TextEditingController();



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
        title: Text("Standing Instructions",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              TextFormField(
                controller: dateController,
                decoration: InputDecoration(
                  label: Text("Effective Date"),
                  hintText: "2015-07-19",
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

              SizedBox(height: 20,),

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

              SizedBox(height: 20,),

              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BeneficiaryMainListPage()));
                      },
                      child: Text("Beneficiry Management",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: TextFormField(
                      controller: account2Controller,
                      decoration: InputDecoration(
                        label: Text("Destination A/C "),
                        hintText: "180 155 **** ****",
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

              TextFormField(
                controller: amountController,
                decoration: InputDecoration(
                  label: Text("Amount"),
                  hintText: "10000",
                  // suffixIcon: PopupMenuButton(
                  //   initialValue: billerType.DESKO_Prepaid,
                  //   onSelected: (billerType value){
                  //     setState(() {
                  //       billController.text = value.name as String;
                  //     });
                  //   },
                  //   itemBuilder: (BuildContext context){
                  //     return <PopupMenuEntry<billerType>>[
                  //       PopupMenuItem<billerType>(
                  //         child: Text("DESKO Prepaid"),
                  //         value: billerType.DESKO_Prepaid,
                  //       ),
                  //       PopupMenuItem<billerType>(
                  //         child: Text("DESKO Postpaid"),
                  //         value: billerType.DESKO_Postpaid,
                  //       ),
                  //       PopupMenuItem<billerType>(
                  //         child: Text("DPDC Prepaid"),
                  //         value: billerType.DPDC_Prepaid,
                  //       ),
                  //       PopupMenuItem<billerType>(
                  //         child: Text("DPDC Postpaid"),
                  //         value: billerType.DPDC_Postpaid,
                  //       ),
                  //       PopupMenuItem<billerType>(
                  //         child: Text("NESKO Prepaid"),
                  //         value: billerType.NESKO_Prepaid,
                  //       ),
                  //       PopupMenuItem<billerType>(
                  //         child: Text("DESKO Postpaid"),
                  //         value: billerType.NESKO_Postpaid,
                  //       ),
                  //     ];
                  //   },
                  //   icon: Icon(Icons.arrow_drop_down),
                  // ),

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
                controller: remarkCodeController,
                decoration: InputDecoration(
                  label: Text("Remark"),
                  hintText: "Please say something",

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
                  child: Center(child: Text("PROCEED",
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

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BillPaymentPageScreen5 extends StatefulWidget {
  const BillPaymentPageScreen5({Key? key}) : super(key: key);

  @override
  State<BillPaymentPageScreen5> createState() => _BillPaymentPageScreen5State();
}

class _BillPaymentPageScreen5State extends State<BillPaymentPageScreen5> {

  TextEditingController searchController = TextEditingController();


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
        title: Text("Biller List",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),

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
                controller: searchController,
                decoration: InputDecoration(
                  //label: Text("Select Account No "),
                  hintText: "Search by Biller name/ customer code/ bill type/ nick name",
                  prefixIcon: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.search, color: Colors.red, size: 30,),
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




            ],
          ),
        ),
      ),
    );
  }
}

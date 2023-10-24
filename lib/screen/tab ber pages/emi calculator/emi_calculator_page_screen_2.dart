import 'package:flutter/material.dart';

class EmiCalculatorPageScreen2 extends StatefulWidget {
   EmiCalculatorPageScreen2({Key? key, this.totalEmi, this.loanAmount ,this.timePeriod,}) : super(key: key);

  int? timePeriod;
  int? loanAmount;
  double? totalEmi;

  @override
  State<EmiCalculatorPageScreen2> createState() => _EmiCalculatorPageScreen2State();
}

class _EmiCalculatorPageScreen2State extends State<EmiCalculatorPageScreen2> {
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
        title: Text("Check Your EMI",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),

        actions: [
          Icon(Icons.notifications,color: Colors.white,size: 30,)
        ],
      ),

      body: Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Column(
          children: [

            Container(
              height: 100,
            width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[300],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("images/w28.png")),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Your EMI per month is"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text("৳ ${widget.totalEmi!.toStringAsFixed(2)}",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                          ),

                          SizedBox(width: 3,),

                          Text("BDT",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )

                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            Text("Interest Rate: 2% month"),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            Container(
              height: 2,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            Text("Processing Fees: 250 BDT"),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            Container(
              height: 2,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            Text("Loan Amount: ${widget.loanAmount} BDT"),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            Container(
              height: 2,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            Text("Tenure: ${widget.timePeriod} Years"),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            Container(
              height: 2,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),

            InkWell(
              onTap: (){

              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Go To Dashboard",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

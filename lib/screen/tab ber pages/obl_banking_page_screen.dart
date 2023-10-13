import 'package:flutter/material.dart';

class OblBankingPageScreen extends StatefulWidget {
  const OblBankingPageScreen({Key? key}) : super(key: key);

  @override
  State<OblBankingPageScreen> createState() => _OblBankingPageScreenState();
}

class _OblBankingPageScreenState extends State<OblBankingPageScreen> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 15,),

            Text("OBL Banking",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.red,
              fontSize: 25,
            ),
            ),

            SizedBox(
              height: 18,
            ),


          InkWell(
            onTap: (){

            },
            child: Container(
              height: 90,
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Savings Account",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 22,
                        ),
                      ),

                      Text("+123 456 7889 000",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,),
                    ),
                  )
                ],
              ),
            ),
          ),

            SizedBox(height: 18,),

            InkWell(
              onTap: (){

              },
              child: Container(
                height: 90,
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Business Account",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                            fontSize: 22,
                          ),
                        ),

                        Text("+123 456 7889 000",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.black87,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,),
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 18,),

            InkWell(
              onTap: (){

              },
              child: Container(
                height: 90,
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Current Account",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                            fontSize: 22,
                          ),
                        ),

                        Text("+123 456 7889 000",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.black87,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

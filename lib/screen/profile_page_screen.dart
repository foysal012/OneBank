import 'package:flutter/material.dart';
import 'package:onebankltd/model/transaction_model_class.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  var dataList = TransactionModelClass.generatedTransactionList;

  bool selected = false;
  bool showMoney = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black54,),
        ),

        centerTitle: true,
        title: Text("Profile"),

        actions: [
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.notifications)
          )
        ],
      ),

      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [

            SizedBox(
              height: 20,
            ),

            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          children: [
                            Text("Available Balance",
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(height: 10,),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [

                                Text("৳",
                                  style: TextStyle(
                                    fontSize: 18,
                                    textBaseline: TextBaseline.alphabetic,
                                  ),
                                ),

                                SizedBox(width: 5,),

                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      showMoney = !showMoney;
                                    });
                                  },
                                  child: showMoney == true?Text("****** ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      textBaseline: TextBaseline.alphabetic,
                                    ),
                                  ) : Text("2,46,600 ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      textBaseline: TextBaseline.alphabetic,
                                    ),
                                  ),
                                ),

                                Text("BDT",
                                  style: TextStyle(
                                    fontSize: 11,
                                    textBaseline: TextBaseline.alphabetic,
                                  ),
                                ),


                              ],
                            ),

                            SizedBox(height: 2,),

                          ],
                        ),

                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("images/w3.jpg",),
                        ),
                      ],
                    ),
                    

                    
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Account Number ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(width: 17,),
                            Text(":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            )
                          ],
                        ),

                        Text("656 454 525",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 8,),

                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.black12,
                    ),

                    SizedBox(height: 8,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Account Title ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(width: 42,),
                            Text(":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            )
                          ],
                        ),

                        Text("Foysal Joarder",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 8,),

                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.black12,
                    ),

                    SizedBox(height: 8,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Product ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(width: 78,),
                            Text(":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            )
                          ],
                        ),

                        Text("Youth Banking",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 8,),

                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.black12,
                    ),

                    SizedBox(height: 8,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Account Status ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(width: 32,),
                            Text(":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            )
                          ],
                        ),

                        Text("Regular",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 8,),

                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.black12,
                    ),

                    SizedBox(height: 8,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Currency ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(width: 73,),
                            Text(":",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            )
                          ],
                        ),

                        Text("BDT",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 20,),

                    // InkWell(
                    //   onTap: (){},
                    //   child: Container(
                    //     height: 60,
                    //     width: double.infinity,
                    //     decoration: BoxDecoration(
                    //       color: Colors.red,
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //     child: Center(
                    //       child: Text("Add Card",
                    //         style: TextStyle(
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w600,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    //
                    // SizedBox(height: 10,),

                    InkWell(
                      onTap: (){
                        setState(() {
                          selected = ! selected;
                        });
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("Show Statement",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Expanded(
                      child: selected == true ?

                      ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          return Container(
                            child: Column(
                              children: [

                                Container(
                                  height: 1,
                                  width: double.infinity,
                                  color: Colors.black12,
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Column(
                                      children: [
                                        Text("${dataList[index].title}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 18,
                                          ),
                                        ),

                                        SizedBox(height: 3,),

                                        Text("${dataList[index].mediumAddress}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black87,
                                            fontSize: 18,
                                          ),
                                        ),

                                        SizedBox(height: 6,),

                                        Text("${dataList[index].date}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54,
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    ) ,

                                    Column(
                                      children: [
                                        Text("${dataList[index].amount}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: dataList[index].amount !> 0 ? Colors.green : Colors.red,
                                            fontSize: 18,
                                          ),
                                        ),

                                        SizedBox(height: 6,),

                                        Text("${dataList[index].trxId}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    )  ,

                                  ],
                                ),

                                // Container(
                                //   height: 1,
                                //   width: double.infinity,
                                //   color: Colors.black12,
                                // ),

                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, _){
                          return SizedBox(height: 3,);
                        },
                        itemCount: dataList.length,
                      ) : Container(),
                    ),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

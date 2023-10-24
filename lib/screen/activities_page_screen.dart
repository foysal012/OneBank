import 'package:flutter/material.dart';
import 'package:onebankltd/model/activity_transection_model_class.dart';
import 'package:pie_chart/pie_chart.dart';

class ActivitiesPageScreen extends StatefulWidget {
  const ActivitiesPageScreen({Key? key}) : super(key: key);

  @override
  State<ActivitiesPageScreen> createState() => _ActivitiesPageScreenState();
}

class _ActivitiesPageScreenState extends State<ActivitiesPageScreen> {

  var data = ActivityTransectionModelClass.generatedListofTransection;

  List<Color> clrList = [
    Colors.deepPurpleAccent,
    Colors.green,
    Colors.red,
  ];

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
        title: Text("Transection Activity",
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
        // padding: EdgeInsets.only(
        //   left: 20,
        //   right: 20,
        //   top: 20,
        // ),
        child: Column(
          children: [

            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),

                  child: Column(
                    children: [
                      PieChart(
                          dataMap: {
                            "Balance" : 10000000,
                            "CashIn" : 100000000,
                            "CashOut" : 90000000,
                          },
                        colorList: clrList,
                        animationDuration: Duration(milliseconds: 1500),
                        legendOptions: LegendOptions(
                          legendPosition: LegendPosition.left,
                        ),
                        chartType: ChartType.ring,
                        chartValuesOptions: ChartValuesOptions(
                          showChartValuesInPercentage: true,
                        ),
                        chartRadius: 150.0,
                      )
                    ],
                  ),
                )),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

            Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Transection",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                      Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                              itemCount: data.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index){
                              return  Container(
                                height: 100,
                                width: double.infinity,
                                padding: EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                  top: 10,
                                ),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("${data[index].accountNo}",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54,
                                          ),
                                        ),

                                        Text("${data[index].accountHolderName}",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87,
                                          ),
                                        ),

                                        Row(
                                          children: [
                                            Text("Payment: ",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text("${data[index].payment}",
                                            style: TextStyle(
                                              color: data[index].amount !> 0 ? Colors.green : Colors.red ,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Text("Date: ",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black54,
                                              ),
                                            ),
                                            Text("${data[index].date}",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),

                                        Text("${data[index].amount}",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: data[index].amount !> 0 ? Colors.green : Colors.red,
                                        ),
                                        ),

                                        Text("${data[index].trxId}",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black54,
                                          ),
                                        ),


                                      ],
                                    ),

                                  ],
                                ),
                              );
                              }
                          )
                      )

                    ],
                  ),
                )),

            // InkWell(
            //   onTap: (){
            //
            //   },
            //   child: Container(
            //     height: 60,
            //     width: double.infinity,
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //       borderRadius: BorderRadius.circular(15),
            //     ),
            //     child: Center(
            //       child: Text("Go To Dashboard",
            //         style: TextStyle(
            //           fontSize: 20,
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ),
            // )

          ],
        ),
      ),
    );
  }
}

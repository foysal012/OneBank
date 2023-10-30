import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/air%20time/select_operator_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/air%20time/select_tag_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/obl%20branch/obl_branch_model_class.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/obl%20branch/obl_branch_page_screen_1.dart';

class OblBranchPageScreen extends StatefulWidget {
  const OblBranchPageScreen({Key? key}) : super(key: key);

  @override
  State<OblBranchPageScreen> createState() => _OblBranchPageScreenState();
}

class _OblBranchPageScreenState extends State<OblBranchPageScreen> {
  TextEditingController searchController = TextEditingController();

    var data = OblBranchModelClass.generatedBranchList;



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

              Text("OBL Branch",
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
                controller: searchController,
                onChanged: (value){
                  setState(() {
                    searchController.text = value;
                  });
                },
                onEditingComplete: (){
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  label: Text("All Branch"),
                  hintText: "Dhaka",
                  // suffixIcon: IconButton(
                  //   onPressed: (){},
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

              SizedBox(height: 10,),


                 Container(
                   height: 400,
                   width: double.infinity,
                   child: GridView.builder(
                     shrinkWrap: true,
                     scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        mainAxisExtent: 100.0,
                        childAspectRatio: 100.0
                      ),
                      padding: EdgeInsets.all(8.0),
                      itemCount: data.length,
                      itemBuilder: (context, index){
                       var name = data[index].branchName.toString();
                        if(searchController.text.toLowerCase().isEmpty){
                          return InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OblBranchPageScreen1(
                                oblBranchModelClass: data[index],
                              )));
                            },
                            child: Container(
                              //height: 200,
                              //width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[200], // color of grid items
                                ),
                                child: Center(child: Text("${data[index].branchName}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18.0, color: Colors.red
                                  ),
                                ),
                                )
                            ),
                          );
                        } else if(name.toLowerCase().contains(searchController.text.toLowerCase())){
                          return InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OblBranchPageScreen1(
                                oblBranchModelClass: data[index],
                              )));
                            },
                            child: Container(
                              //height: 200,
                              //width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[200], // color of grid items
                                ),
                                child: Center(child: Text("${data[index].branchName}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18.0, color: Colors.red
                                  ),
                                ),
                                )
                            ),
                          );
                        } else {
                          return Container();
                        }
                      }
                ),
                 ),



            ],
          ),
        ),
      ),
    );
  }
}
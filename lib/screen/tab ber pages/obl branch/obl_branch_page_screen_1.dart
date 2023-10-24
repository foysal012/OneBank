import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/obl%20branch/obl_branch_model_class.dart';

class OblBranchPageScreen1 extends StatefulWidget {
   OblBranchPageScreen1({Key? key, required this.oblBranchModelClass}) : super(key: key);

  OblBranchModelClass oblBranchModelClass;

  @override
  State<OblBranchPageScreen1> createState() => _OblBranchPageScreen1State();
}

class _OblBranchPageScreen1State extends State<OblBranchPageScreen1> {
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
        title: Text("${widget.oblBranchModelClass.branchName}",
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
          left: 10,
          right: 10,
          top: 10,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

             //SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

              Container(
                alignment: Alignment.center,
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("${widget.oblBranchModelClass.bManagerimg}"), fit: BoxFit.cover),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              Text("${widget.oblBranchModelClass.bManagerName}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.005,),


              Text("Branch Manager",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                    fontWeight: FontWeight.w800
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),


              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call,color: Colors.red,),
                      SizedBox(width: 5,),
                      Text("${widget.oblBranchModelClass.phone}")
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email_outlined,color: Colors.red,),
                      SizedBox(width: 5,),
                      Text("${widget.oblBranchModelClass.email}")
                    ],
                  ),
              //   ],
              // ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              Container(
                height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage("${widget.oblBranchModelClass.bLocationimg}"),fit: BoxFit.cover)
              ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location: ",
                        style: TextStyle(
                          color: Colors.black87
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      Text("${widget.oblBranchModelClass.location}",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                      Text("${widget.oblBranchModelClass.location1}")
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Opening Timing: ",
                        style: TextStyle(
                            color: Colors.black87
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                      Text("${widget.oblBranchModelClass.openingday}",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.w800
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                      Text("${widget.oblBranchModelClass.openingTime}"),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                      Text("${widget.oblBranchModelClass.openingday1}",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.w800
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                      Text("${widget.oblBranchModelClass.openingTime1}")
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

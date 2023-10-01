import 'package:flutter/material.dart';
import 'package:onebankltd/authentication/signin_page_screen.dart';
import 'package:onebankltd/screen/authentication/signin_page_screen.dart';

class AfterSignUpPageScreen extends StatefulWidget {
  const AfterSignUpPageScreen({Key? key}) : super(key: key);

  @override
  State<AfterSignUpPageScreen> createState() => _AfterSignUpPageScreenState();
}

class _AfterSignUpPageScreenState extends State<AfterSignUpPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
        centerTitle: true,
        title: Text("Confermation",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
            wordSpacing: 2,
          ),
        ),
      ),

      body: Container(

        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          //top: 20,
          bottom: 20,
        ),

        height: double.infinity,
        width: double.infinity,

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //SizedBox(height: 20,),

              Center(
                child: Container(
                  //alignment: Alignment.center,
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("images/w3.png"),),
                    //image: DecorationImage(image: AssetImage("images/w1.png"),),
                  ),
                ),
              ),

              SizedBox(height: 20,),

              Center(
                child: Text("Success!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ),

              SizedBox(height: 10,),

              Padding(
                padding:  EdgeInsets.only(
                    left:20,
                right: 20,
                ),
                child: Text("You have successfully registered in our app\n                 and start working in it.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
                ),
              ),


              SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome Ladis & GentelMan...")));
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInPageScreen()));
                  //
                },
                child: Container(

                  margin: EdgeInsets.only(
                    //left: 20,
                    //right: 20,
                  ),

                  height: 60,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: Center(
                    child: Text("Start Using",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 20,
                      ),
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

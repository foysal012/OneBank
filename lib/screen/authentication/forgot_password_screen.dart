import 'package:flutter/material.dart';
import 'package:onebankltd/screen/authentication/signin_page_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  TextEditingController _emailController = TextEditingController();

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
        title: Text("Forgot Password",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black87,
            fontWeight: FontWeight.w700,
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
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("images/w2.png"),),
                    //image: DecorationImage(image: AssetImage("images/w1.png"),),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Text("Email Address",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                    fontSize: 14
                ),
              ),

              SizedBox(height: 5,),

              TextFormField(

                controller: _emailController,

                decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black12,
                        width: 2,
                      ),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.redAccent,
                        width: 2,
                      ),
                    ),

                    hintText: "example@gmail.com"
                ),
              ),

              SizedBox(
                height: 10,
              ),


              InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully sent a link on you email...")));
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
                    child: Text("Send link",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),



            ],
          ),
        ),
      ),
    );
  }
}

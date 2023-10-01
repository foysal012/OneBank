import 'package:flutter/material.dart';
import 'package:onebankltd/authentication/after_signup_page_screen.dart';
import 'package:onebankltd/authentication/signin_page_screen.dart';
import 'package:onebankltd/screen/authentication/after_signup_page_screen.dart';
import 'package:onebankltd/screen/authentication/signin_page_screen.dart';
import 'package:onebankltd/widget/button_page_screen.dart';
import 'package:onebankltd/widget/color_page_screen.dart';

class SignUpPageScreen extends StatefulWidget {
  const SignUpPageScreen({Key? key}) : super(key: key);

  @override
  State<SignUpPageScreen> createState() => _SignUpPageScreenState();
}

class _SignUpPageScreenState extends State<SignUpPageScreen> {

  TextEditingController _bankaccountController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool obseureText = false;
  bool chooseBox = false;


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
        title: Text("Create Account",
        style: TextStyle(
          fontSize: 22,
          color: Colors.black87,
          fontWeight: FontWeight.w700,
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

              SizedBox(height: 20,),

              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("images/w1.png"),),
                ),
              ),

              SizedBox(height: 8,),

             Text("Welcome to OBL",
             style: TextStyle(
               fontWeight: FontWeight.w600,
               color: Colors.redAccent,
               fontSize: 23,
               wordSpacing: 2,
               letterSpacing: 0.5,

             ),
             ),

              SizedBox(height: 20,),

              Text("Bank Account",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                  fontSize: 14
              ),
              ),

              SizedBox(height: 5,),

              TextFormField(

                controller: _bankaccountController,

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

                  hintText: "125 245 2548 4785"
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

              SizedBox(height: 10,),

              Text("Password",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 14
                ),
              ),

              SizedBox(height: 5,),

              TextFormField(

                controller: _passwordController,
                obscureText: obseureText,
                obscuringCharacter: ".",
                keyboardType: TextInputType.visiblePassword,

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

                    hintText: ".................",

                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        obseureText = !obseureText;
                      });
                    },
                    icon: Icon(obseureText == true ? Icons.visibility_off : Icons.visibility),
                  )
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                children: [

                  InkWell(
                    onTap: (){
                      setState(() {
                        chooseBox = !chooseBox;
                      });
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          width: 3,
                          color: Colors.black,
                        ),
                        color: chooseBox == true ? Colors.black : Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),

                  Text("By creating an account you agree our\nterms and conditions.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 12
                    ),
                  ),

                ],
              ),

              SizedBox(height: 15,),

          InkWell(
            onTap: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully registered...")));
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => AfterSignUpPageScreen()));
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
                child: Text("Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
              
              SizedBox(height: 8,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(width: 5,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInPageScreen()));
                    },
                    child: Text("Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              

            ],
          ),
        ),
      ),

    );
  }
}

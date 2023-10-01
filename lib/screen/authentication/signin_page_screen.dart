import 'package:flutter/material.dart';
import 'package:onebankltd/screen/authentication/forgot_password_screen.dart';
import 'package:onebankltd/screen/authentication/signup_page_screen.dart';

class SignInPageScreen extends StatefulWidget {
  const SignInPageScreen({Key? key}) : super(key: key);

  @override
  State<SignInPageScreen> createState() => _SignInPageScreenState();
}

class _SignInPageScreenState extends State<SignInPageScreen> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool obseureText = false;

  bool reminMe = false;

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
        title: Text("Sign In",
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("Reminder me next time",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        fontSize: 14
                    ),
                  ),

                  Switch(
                      value: reminMe,
                      onChanged: (bool val){
                        setState(() {
                          reminMe = val;
                        });
                      },
                    //activeColor: Colors.red,
                    activeTrackColor: Colors.grey,
                    thumbColor: MaterialStatePropertyAll(
                        Colors.red),

                  ),


                ],
              ),

              SizedBox(height: 15,),

              InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully Login...")));
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
                    child: Text("Sign In",
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

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(width: 5,),

                  InkWell(
                    onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPageScreen()));
                    },
                    child: Text("Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Forget password?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),

                  SizedBox(width: 5,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
                    },
                    child: Text("Reset Password",
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

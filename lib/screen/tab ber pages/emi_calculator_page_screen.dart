import 'package:flutter/material.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/air%20time/select_operator_page_screen.dart';
import 'package:onebankltd/screen/tab%20ber%20pages/air%20time/select_tag_page_screen.dart';

class EmiCalculatorPageScreen extends StatefulWidget {
  const EmiCalculatorPageScreen({Key? key}) : super(key: key);

  @override
  State<EmiCalculatorPageScreen> createState() => _EmiCalculatorPageScreenState();
}

class _EmiCalculatorPageScreenState extends State<EmiCalculatorPageScreen> {
  TextEditingController tenurePeriodController = TextEditingController();

  List<String> typeData = ["Prepaid", "Postpaid"];

  double _value = 10000;
  double _value1 = 10;

  var emiResult;

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

              Text("EMI Calculator",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                  fontSize: 25,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Text("Tenure Period",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 5,),

              TextFormField(
                controller: tenurePeriodController,
                decoration: InputDecoration(
                  label: Text("Select Account No "),
                  hintText: "654 454 ***",
                  suffixIcon: IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
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
                    ),
                    borderSide: BorderSide(
                        color: Colors.red,
                        width: 1
                    ),
                  ),
                ),

              ),

              SizedBox(height: 20,),

              Text("Loan Amount",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 5,),

              Slider(
                min: 0,
                  max: 250000,
                  value: _value,
                  activeColor: Colors.red,
                  thumbColor: Colors.white,
                  overlayColor: MaterialStatePropertyAll(Colors.red),
                  label: _value.round().toString(),
                  divisions: 10,

                  onChanged: (value){
                  setState(() {
                    _value = value;
                    print(_value);
                  });
                  }
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("0৳"),
                  Text("250000৳"),
                ],
              ),

              SizedBox(height: 20,),

              Text("Interest Rate",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 5,),

              Slider(
                min: 10,
                  max: 15,
                  activeColor: Colors.red,
                  thumbColor: Colors.white,
                  overlayColor: MaterialStatePropertyAll(Colors.red),
                  label: _value1.round().toString(),
                  divisions: 6,
                  value: _value1,
                  onChanged: (val){
                    setState(() {
                      _value1 = val;
                      print(_value1);
                    });
                  }
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("10%"),
                  Text("15%"),
                ],
              ),
              SizedBox(height: 20,),



              InkWell(
                onTap: (){
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SavingAccountpageScreen()));
                  // if(_value1.toInt() == 10){
                  //    emiResult = _value * 0.10;
                  //   print(emiResult);
                  // } else if(_value1 == 11){
                  //   emiResult = _value * 0.11;
                  //   print(emiResult);
                  // }else if(_value1 == 12){
                  //   emiResult = _value * 0.12;
                  //   print(emiResult);
                  // }else if(_value1 == 13){
                  //   emiResult = _value * 0.13;
                  //   print(emiResult);
                  // }else if(_value1 == 14){
                  //   emiResult = _value * 0.14;
                  //   print(emiResult);
                  // }else {
                  //   emiResult = _value * 0.15;
                  //   print(emiResult);
                  // }
                  emiResult = _value * (_value1/100);
                  print(emiResult);
                },
                child: Container(
                  height: 55,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red,
                  ),
                  child: Center(child: Text("Calculate EMI",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
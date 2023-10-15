import 'package:flutter/material.dart';
import 'package:onebankltd/model/operator_model_class.dart';

class SelecteOperatorPageScreen extends StatefulWidget {
  const SelecteOperatorPageScreen({Key? key}) : super(key: key);


  @override
  State<SelecteOperatorPageScreen> createState() => _SelecteOperatorPageScreenState();
}

class _SelecteOperatorPageScreenState extends State<SelecteOperatorPageScreen> {

  var operatorData = OperatorModelClass.operatorList;

  var selected = 0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: operatorData.length,
          itemBuilder: (context, index){
          return  Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      selected = index;
                    });
                  },
                  child: Container(
                    height: 62,
                    width: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          width: 1,
                          color: Colors.red
                      ),
                      color: selected == index ? Colors.red[100] : Colors.white,
                    ),
                    child: Image.asset("${operatorData[index].img}",height: 50,width: 50),
                  ),
                ),
              ),
              SizedBox(height: 2,),
              Text("${operatorData[index].name}")
            ],
          );
          }
      ),
    );
  }
}


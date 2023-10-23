import 'package:flutter/material.dart';

class SelectDestinationTypePageScreen extends StatefulWidget {
  const SelectDestinationTypePageScreen({Key? key}) : super(key: key);

  @override
  State<SelectDestinationTypePageScreen> createState() => _SelectDestinationTypePageScreenState();
}

class _SelectDestinationTypePageScreenState extends State<SelectDestinationTypePageScreen> {
  List<String> typeData = ["Account", "Card"];
  var selected = 0 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: typeData.length,
          itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: (){
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.red,
                    ),
                    color: selected == index ? Colors.red[100] : Colors.transparent,
                  ),
                  child: Center(child: Text("${typeData[index]}",
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  )),
                ),
              ),
            );
          }),
    );
  }
}


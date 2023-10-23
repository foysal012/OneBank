import 'package:flutter/material.dart';

class SelectTimeCategoryPageScreen extends StatefulWidget {
  const SelectTimeCategoryPageScreen({Key? key}) : super(key: key);

  @override
  State<SelectTimeCategoryPageScreen> createState() => _SelectTimeCategoryPageScreenState();
}

class _SelectTimeCategoryPageScreenState extends State<SelectTimeCategoryPageScreen> {

  List<String> time = [ "Today", "Last Week", "Last Month",];
  var selected = 0 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: time.length,
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
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.red,
                    ),
                    color: selected == index ? Colors.red[100] : Colors.transparent,
                  ),
                  child: Center(child: Text("${time[index]}",
                    style: TextStyle(
                      color: selected == index ? Colors.black : Colors.black54,
                      fontWeight: FontWeight.bold
                    ),
                  )),
                ),
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';

class SelectTagePageScreen extends StatefulWidget {
  const SelectTagePageScreen({Key? key}) : super(key: key);

  @override
  State<SelectTagePageScreen> createState() => _SelectTagePageScreenState();
}

class _SelectTagePageScreenState extends State<SelectTagePageScreen> {

  List<String> typeData = ["Prepaid", "Postpaid"];
  var selected = 0 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
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
                height: 50,
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
    //   Expanded(
    //   flex: 1,
    // child: ListView.separated(
    //   shrinkWrap: true,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index){
    //       return  Container(
    //         height: 62,
    //         width: 62,
    //         decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(5),
    //             border: Border.all(
    //                 width: 1,
    //                 color: Colors.red
    //             ),
    //             color: Colors.red[100]
    //         ),
    //         child: Center(child: Text("${typeData[index]}",
    //           style: TextStyle(
    //               fontWeight: FontWeight.w500,
    //               color: Colors.red
    //           ),
    //         ),),
    //       );
    //     },
    //     separatorBuilder: (_, index){
    //       return SizedBox(width: 10,);
    //     },
    //     itemCount: typeData.length,
    // )
    //
    // );
  }
}

import 'package:flutter/material.dart';

class SelectTransferTyperPageScreen extends StatefulWidget {
  const SelectTransferTyperPageScreen({Key? key}) : super(key: key);

  @override
  State<SelectTransferTyperPageScreen> createState() => _SelectTransferTyperPageScreenState();
}

class _SelectTransferTyperPageScreenState extends State<SelectTransferTyperPageScreen> {

  var data = ModelClass.tType;
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index){
            return InkWell(
              onTap: (){
                setState(() {
                  selected = index;
                });
              },
              child: Padding(
                padding:  EdgeInsets.only(right: 8.0),
                child: Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: selected == index ? Colors.red.withOpacity(0.5) : Colors.white,
                    border: Border.all(
                      width: 3,
                      color: Colors.red,
                    )
                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage("${data[index].imgurl}"), height: 40,width: 80,),
                      Text("${data[index].name}"),
                    ],
                  ),
                ),
              ),
            );
          }),

    );
  }
}

class ModelClass{

  String? imgurl;
  String? name;

  ModelClass({this.imgurl, this.name});

  static List<ModelClass> tType = [
    ModelClass(
      name: "NPSB",
      imgurl: "images/w25.png",
    ),
    ModelClass(
      name: "BEFTN",
      imgurl: "images/w26.png",
    ),
    ModelClass(
      name: "RTGS",
      imgurl: "images/w27.png",
    ),
  ];
}

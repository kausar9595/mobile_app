
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:get/get.dart';

import '../onboard_screen/onboard_screen.dart';


class StaffName extends StatefulWidget {
  const StaffName({super.key});

  @override
  State<StaffName> createState() => _StaffNameState();
}

class _StaffNameState extends State<StaffName> {
  bool isCheck = false;
  late int _groupValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.black54),
            ),
            child: Center(child: Icon(Icons.keyboard_arrow_left,color: Colors.black,),),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.30,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back!",
                style: TextStyle(fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black),
              ),
              SizedBox(height: 10,),
              Text("Staff Name",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black),)
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
      SizedBox(height: 150,),
          Center(
            child: GestureDetector(
              onTap: ()=>Get.to(()=>OnBoardPage()),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClayContainer(
                    borderRadius: 100,
                    height: 150,
                    width: 150,
                    color: Colors.grey.shade600,
                    surfaceColor:Colors.grey.shade300 ,
                    parentColor: Colors.white,
                    depth: 10,
                    //curveType: CurveType.concave,
                  ),

                  Positioned(
                    child: ClayContainer(
                      borderRadius: 100,
                      height: 100,
                      width: 100,
                      color: Colors.grey.shade300,
                      parentColor:Colors.grey.shade400  ,
                      depth: 10,
                      curveType: CurveType.concave,
                      child: Image.asset("assets/images/save.png",height: 40,width: 40,fit: BoxFit.cover,),
                    ),
                  ),
                ],
              ),
            ),
          )


      ],
    ),
    );
  }
}

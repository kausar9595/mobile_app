import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:restaurant_staff/widget/dialog.dart';

import '../../widget/app_input.dart';
import '../failed_screen.dart';
import '../success_screen.dart';


class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding:const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.black54),
                      ),
                      child:const Center(child: Icon(Icons.keyboard_arrow_left,color: Colors.black,),),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.26,),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome Back!",
                        style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      SizedBox(height: 10,),
                      Text("OnBoard Page",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.black),)
                    ],
                  ),
                )

              ],
            ),
            const SizedBox(height: 30,),
            const Text("Name",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 16),
            ),
            const SizedBox(height: 10,),
            AppInput(hint: "Name",controller: _name,),
            const SizedBox(height: 20,),
            const Text("Enter Phone Number",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,fontSize: 16),
            ),
            SizedBox(height: 10,),
            AppInput(hint: "Phone Number (Optional)",controller: _phone,),
            const SizedBox(height: 20,),
            const Text("Enter Email",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,fontSize: 16),
            ),
            SizedBox(height: 10,),
            AppInput(hint: "Enter Email",controller: _email,),
            SizedBox(height: 20,),
            const Center(
              child: SizedBox(width: 200,child: Text("Please choose your communication method",
                textAlign:TextAlign.center,
                style: TextStyle(fontSize: 16,color: Colors.black),),),
            ),
            const SizedBox(height: 20,),
            Center(
              child: InkWell(
                onTap: ()=>Get.to(()=>Verified()),
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.indigoAccent,
                  ),
                  child: Center(child: Text("Send Via Email",style: TextStyle(fontSize: 14,color: Colors.white),),),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: InkWell(
                onTap: ()=>Get.to(()=>Failed()),
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Colors.indigoAccent),
                  ),
                  child: Center(child: Text("Send Via SMS",style: TextStyle(fontSize: 14,color: Colors.indigoAccent),),),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Center(
              child: InkWell(
                onTap: ()=>DialogBox(),
                child: Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigoAccent,
                  ),
                  child: const Center(child: Text("Proceed",style: TextStyle(fontSize: 14,color: Colors.white),),),
                ),
              ),
            ),
          ],
        ),
      ),

    ));
  }
}





import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restaurant_staff/screen/log_in_screen.dart';



DialogBox(){
  Get.dialog(
      barrierDismissible: false,
      Dialog(
          backgroundColor: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height:200,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    SizedBox(
                      width:240,
                        child: Text("You have already registerd before!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                          ),
                        ),
                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: ()=>Get.to(()=>LoginScreen()),
                      child: Container(
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigoAccent,
                        ),
                        child: Center(
                          child: Text("Please Login",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 15),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: -20,
                  left: 50,
                  right: 50,
                  child: InkWell(
                    onTap:()=>Get.back(),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey,width: 5),
                        color: Colors.white,
                      ),
                      child: Center(child: Icon(Icons.close,color: Colors.black,)),

                    ),
                  ),
              ),
            ],
          )
      )
  );
}
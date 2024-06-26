import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurant_staff/screen/log_in_screen.dart';
import 'package:restaurant_staff/screen/navigation_screen/navigator_screen.dart';
import 'package:restaurant_staff/screen/onboard_screen/onboard_screen.dart';

import 'home_screen/home_screen.dart';

class Verified extends StatefulWidget {
  const Verified({super.key});
  static const double _verticalPadding = 50;
  static const double _horizontalPadding = 40;

  @override
  State<Verified> createState() => _VerifiedState();
}

class _VerifiedState extends State<Verified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding:  EdgeInsets.all(40.0),
                child: Container(
                  padding:  EdgeInsets.symmetric(
                    vertical: Verified._verticalPadding,
                    horizontal: Verified._horizontalPadding,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,

                          color: Color(
                              0xffEAEDFF), // Adjust the color to match your design
                        ),
                        child: Lottie.asset(
                          'assets/Lottie/checkAnimation.json',
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                          repeat: false,
                        ),
                      ),
                      const SizedBox(height: 20),
                       Text(
                        "You're Verified !!!",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                       Text(
                        "Hurrah !! You have successfully \nverified the account.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                       SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: (){
                          Get.back();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff304FFE),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                          child: Text(
                            'Done',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Lottie.asset(
              'assets/Lottie/Animation.json',
              repeat: false,
            ),
          ],
        ),
      ),
    );
  }
}

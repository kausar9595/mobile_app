import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:restaurant_staff/screen/log_in_screen.dart';

class Failed extends StatefulWidget {
  const Failed({super.key});
  static const double _verticalPadding = 40;
  static const double _horizontalPadding = 20;

  @override
  State<Failed> createState() => _FailedState();
}

class _FailedState extends State<Failed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: Failed._verticalPadding,
                horizontal: Failed._horizontalPadding,
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
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,

                      color: Color(
                          0xffEAEDFF), // Adjust the color to match your design
                    ),
                    child: Lottie.asset(
                      'assets/Lottie/closeAnimation.json',
                      fit: BoxFit.cover,
                      repeat: false,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Link Expired",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Sorry, the link you are trying to \naccess has expired.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: ()=>Get.to(()=>LoginScreen()),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff304FFE),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                      child: Text(
                        'Re Send Link',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

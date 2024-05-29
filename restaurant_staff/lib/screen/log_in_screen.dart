import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_staff/screen/sing_in_screen.dart';

import 'failed_screen.dart';
import 'success_screen.dart';
import '../widget/log_in_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 15),
                 Center(
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome Back!",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                    ],
                                   ),
                 ),
                const SizedBox(height: 72),
                const LoginForm(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Get.to(const SignupScreen());
                      },
                      child: const Text("Sign Up"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

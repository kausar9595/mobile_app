import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_staff/form_validators.dart';

import '../widget/sing_in_form.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 15),
               Center(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "You Are Welcome to Join Us!",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w700),
                    ),
                  ],
                               ),
               ),
              const SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      const SignupForm(),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already Have an Account?"),
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text("Login"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

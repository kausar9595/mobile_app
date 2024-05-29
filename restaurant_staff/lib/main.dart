import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_staff/screen/navigation_screen/navigator_screen.dart';

import 'screen/log_in_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}

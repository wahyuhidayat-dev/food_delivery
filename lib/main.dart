// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lk21/pages/splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        color: Colors.black,
        theme: ThemeData(primaryColorDark: Colors.black),
        home: const SplashScreen());
  }
}

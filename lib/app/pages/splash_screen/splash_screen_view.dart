import 'package:e_learning/app/pages/splash_screen/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final SplashScreenController splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'assets/zlearn.png',
            width: 200,
          ) ,
          ) 
      ),
    );
  }
}
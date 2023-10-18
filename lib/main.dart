import 'package:e_learning/core.dart';
import 'package:e_learning/app/pages/login/Loginpage.dart';
import 'package:e_learning/app/pages/onboarding/onboarding.dart';
import 'package:e_learning/state_util.dart';
import 'package:flutter/material.dart';
import 'app/pages/homepage/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        navigatorKey: Get.navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: RegisterPage());
  }
}

import 'package:e_learning/app/pages/detail_page/detail_page_view.dart';
import 'package:e_learning/app/pages/navigation_bar/navigation_bar_view.dart';
import 'package:e_learning/app/pages/payment_page/payment_page_view.dart';
import 'package:e_learning/app/pages/profile_page/profile_page_view.dart';
import 'package:e_learning/app/pages/splash_screen/splash_screen_view.dart';
import 'package:e_learning/global_components/tab_bar.dart';
import 'package:e_learning/core.dart';
import 'package:e_learning/app/pages/login_page/login_page_view.dart';
import 'package:e_learning/app/pages/onboarding_page/onboarding_page_view.dart';
import 'package:e_learning/state_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app/pages/home_page/home_page_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        navigatorKey: Get.navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: ConvexNavigationBarPage());
  }
}

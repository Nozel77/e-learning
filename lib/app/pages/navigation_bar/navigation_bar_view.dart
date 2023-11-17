import 'package:e_learning/app/pages/navigation_bar/navigation_bar_controller.dart';
import 'package:e_learning/app/pages/profile_page/profile_page_view.dart';
import 'package:e_learning/app/pages/home_page/home_page_dart.dart';
import 'package:e_learning/global_components/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helper/themes/Themes.dart';



class ConvexNavigationBarPage extends StatefulWidget {
  final BottomBarController navigationController = Get.put(BottomBarController());

  @override
  State<ConvexNavigationBarPage> createState() =>
      _ConvexNavigationBarPageState();
}

class _ConvexNavigationBarPageState extends State<ConvexNavigationBarPage> {
  BottomBarController controller = Get.put(BottomBarController());

  final List<Widget> pages = [
    Homepage(),
    CustomTab(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeIndex,
          selectedItemColor: Tcolor.button,
          backgroundColor: Tcolor.background,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

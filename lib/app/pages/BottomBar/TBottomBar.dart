import 'package:e_learning/app/pages/Profile/Profile.dart';
import 'package:e_learning/app/pages/Ranking/ranking.dart';
import 'package:e_learning/app/pages/homepage/Homepage.dart';
import 'package:e_learning/components/TCustomTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../helper/Themes.dart';

class BottomBarController extends GetxController {
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}

class ConvexNavigationBarPage extends StatefulWidget {
  const ConvexNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<ConvexNavigationBarPage> createState() =>
      _ConvexNavigationBarPageState();
}

class _ConvexNavigationBarPageState extends State<ConvexNavigationBarPage> {
  BottomBarController controller = Get.put(BottomBarController());

  final List<Widget> pages = [
    Homepage(),
    const CustomTab(),
    //const Ranking(),
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
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

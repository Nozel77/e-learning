import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  var currentIndex = 0.obs;
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
import 'package:e_learning/app/pages/navigation_bar/navigation_bar_view.dart';
import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        minWidth: double.infinity,
        height: 45,
        onPressed: () {
          Get.to(() => ConvexNavigationBarPage());
        },
        color: Tcolor.background,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Tcolor.darkGrey)),
        elevation: 0,
        child: Image(
          height: 25,
          image: AssetImage(
            images.google,
          ),
        ),
      ),
    );
  }
}

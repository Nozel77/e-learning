import 'package:e_learning/app/pages/BottomBar/TBottomBar.dart';
import 'package:e_learning/app/pages/homepage/detail/TCard.dart';
import 'package:e_learning/app/pages/homepage/detail/TCard2.dart';
import 'package:e_learning/app/pages/homepage/detail/THeaderHP.dart';
import 'package:e_learning/app/pages/homepage/detail/category.dart';
import 'package:e_learning/app/pages/homepage/detail/txtCategory.dart';
import 'package:e_learning/core.dart';
import 'package:flutter/material.dart';

import '../../../state_util.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          THeaderHP(),
          const SizedBox(
            height: 30,
          ),
          Image(
            image: AssetImage(images.banner),
          ),
          const SizedBox(
            height: 10,
          ),
          TxtCategory(),
          SldierCategory(),
          Row(
            children: [TCard(), TCard2()],
          ),
          const SizedBox(
            height: 10,
          ),
          ConvexNavigationBarPage()
        ],
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            THeaderHP(),
            const SizedBox(
              height: 30,
            ),
            Image(
              image: AssetImage(images.banner),
            ),
            const SizedBox(
              height: 30,
            ),
            TxtCategory(),
            SldierCategory(),
            Row(
              children: [
                TCard(),
                TCard(),
              ],
            ),
            Row(
              children: [
                TCard(),
                TCard(),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

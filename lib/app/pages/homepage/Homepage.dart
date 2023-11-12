import 'package:e_learning/app/pages/BottomBar/TBottomBar.dart';

import 'package:e_learning/app/pages/homepage/detail/THeaderHP.dart';
import 'package:e_learning/app/pages/homepage/detail/category.dart';
import 'package:e_learning/app/pages/homepage/detail/txtCategory.dart';
import 'package:e_learning/core.dart';
import 'package:flutter/material.dart';

import '../../../state_util.dart';
import '../Card/TCard.dart';
import '../Card/TCard2.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          THeaderHP(),
          const SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage(images.banner),
          ),
          const SizedBox(
            height: 20,
          ),
          TxtCategory(),
          SldierCategory(),
          Row(
            children: [TCard(), TCard2()],
          ),
          //ConvexNavigationBarPage()
        ],
      ),
    );
  }
}

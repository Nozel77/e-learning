import 'package:e_learning/app/pages/homepage/detail/TCard.dart';
import 'package:e_learning/app/pages/homepage/detail/THeaderHP.dart';
import 'package:e_learning/app/pages/homepage/detail/TheaderRev.dart';
import 'package:e_learning/app/pages/homepage/detail/category.dart';
import 'package:e_learning/app/pages/homepage/detail/txtCategory.dart';
import 'package:e_learning/components/BottomNav.dart';
import 'package:e_learning/components/TCustomTab.dart';
import 'package:e_learning/components/THeaderHome.dart';
import 'package:e_learning/core.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

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
            height: 30,
          ),
          TxtCategory(),
          SldierCategory(),
          Row(
            children: [
              TCard(),
            ],
          ),

          const SizedBox(
            height: 30,
          ),
          //Nav
        ],
      ),
    );
  }
}

import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/material.dart';

class THeaderHome extends StatelessWidget {
  const THeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
            image: AssetImage(
          images.banner,
        )),
      ),
    );
  }
}

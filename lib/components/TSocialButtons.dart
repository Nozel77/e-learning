import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/material.dart';

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
        onPressed: () {},
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

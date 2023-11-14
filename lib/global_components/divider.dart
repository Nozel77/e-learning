import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFromDivider extends StatelessWidget {
  const TFromDivider({
    super.key,
    required String dividerText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: Tcolor.darkGrey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          TTexts.orsignwith.capitalize!,
          style: DividerText(),
        ),
        Flexible(
            child: Divider(
          color: Tcolor.grey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        )),
      ],
    );
  }
}

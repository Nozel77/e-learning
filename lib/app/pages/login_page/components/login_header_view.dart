import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Tsize.appBarHeight,
        ),
        Text(TTexts.title, style: textTitle()),
        const SizedBox(
          height: Tsize.sm,
        ),
        Text(TTexts.subtitle, style: textSub()),
        const SizedBox(
          height: Tsize.sm,
        ),
      ],
    );
  }
}

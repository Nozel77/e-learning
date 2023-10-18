import 'package:e_learning/helper/Themes.dart';
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
        Text(TTexts.title, style: textTitle()),
        const SizedBox(
          height: Tsize.sm,
        ),
        Text(TTexts.subtitle, style: textOnboardingMedium())
      ],
    );
  }
}

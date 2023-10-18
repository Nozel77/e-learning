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
        Image(
          height: 150,
          image: AssetImage(images.Logo),
        ),
        Text(TTexts.title, style: textOnboardingBold(color: Tcolor.textColor)),
        const SizedBox(
          height: Tsize.sm,
        ),
        Text(
          TTexts.subtitle,
          style: textOnboardingMedium(color: Tcolor.secondaryText),
        ),
      ],
    );
  }
}

import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/material.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Tcolor.grey),
              borderRadius: BorderRadius.circular(10)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: Tsize.iconmd,
              height: Tsize.iconmd,
              image: AssetImage(images.google),
            ),
          ),
        ),
        const SizedBox(
          width: Tsize.spaceBtwItems,
        ),
      ],
    );
  }
}

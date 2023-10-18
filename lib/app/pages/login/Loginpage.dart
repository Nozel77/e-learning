import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../components/TDivider.dart';
import '../../../components/TLoginForm.dart';
import '../../../components/TLoginHeader.dart';
import '../../../components/TSocialButtons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),
              const TLoginForm(),
              TFromDivider(dividerText: TTexts.orsignwith.capitalize!),
              const SizedBox(
                height: Tsize.spaceBtwSections,
              ),
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

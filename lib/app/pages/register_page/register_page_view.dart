import 'package:e_learning/app/pages/register_page/components/register_form_view.dart';
import 'package:e_learning/app/pages/register_page/components/register_header_view.dart';
import 'package:e_learning/global_components/divider.dart';
import 'package:e_learning/global_components/social_buttons.dart';
import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TRegisterHeader(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TRegisterForm(),
              ),
              TFromDivider(dividerText: TTexts.orsignwith.capitalize!),
              const SizedBox(
                height: Tsize.spaceBtwSections,
              ),
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:e_learning/components/TRegisterForm.dart';
import 'package:e_learning/components/TRegisterHeader.dart';
import 'package:e_learning/core.dart';
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
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

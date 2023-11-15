import 'package:e_learning/app/pages/home_page/home_page_dart.dart';
import 'package:e_learning/app/pages/navigation_bar/navigation_bar_view.dart';
import 'package:e_learning/app/pages/register_page/register_page_view.dart';
import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Tsize.spaceBtwSections),
      child: Form(
          child: Column(
        children: [
          //Email
          TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 16, 42, 97)),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 16, 42, 97)),
              ),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: Tsize.spaceBtwInputFields,
          ),
          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 16, 42, 97)),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 16, 42, 97)),
              ),
              labelText: TTexts.password,
            ),
          ),
          const SizedBox(height: Tsize.spaceBtwInputFields),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [],
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    TTexts.forgetpw,
                    style: DividerText(),
                  )),
            ],
          ),
          const SizedBox(height: Tsize.sm),
          SizedBox(
              width: double.infinity,
              child: MaterialButton(
                minWidth: double.infinity,
                height: 45,
                onPressed: () => Get.to(ConvexNavigationBarPage()),
                color: Tcolor.button,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
                child: Text(
                  TTexts.login,
                ),
                textColor: Tcolor.background,
              )),
        ],
      )),
    );
  }
}
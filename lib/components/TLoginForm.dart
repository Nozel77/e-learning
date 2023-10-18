import 'package:e_learning/app/pages/register/Registerpage.dart';
import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
          const SizedBox(height: Tsize.spaceBtwSections),

          //Log in buttin
          SizedBox(
              width: double.infinity,
              child: MaterialButton(
                minWidth: double.infinity,
                height: 45,
                onPressed: () => Get.to(RegisterPage()),
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

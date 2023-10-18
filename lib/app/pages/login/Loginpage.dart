import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

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
              ///Logo, Title & Sub-Title
              const TLoginHeader(),

              const TLoginForm(),

              //Divider
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
              borderRadius: BorderRadius.circular(100)),
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
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Tcolor.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: Tsize.iconmd,
              height: Tsize.md,
              image: AssetImage(images.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

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
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
          color: Tcolor.darkGrey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        )),
      ],
    );
  }
}

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
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: Tsize.spaceBtwInputFields,
          ),
          //Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: Tsize.spaceBtwInputFields / 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberme),
                ],
              ),
              TextButton(onPressed: () {}, child: const Text(TTexts.forgetpw)),
            ],
          ),
          const SizedBox(height: Tsize.spaceBtwSections),
          
          //Sign in buttin
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(TTexts.signin))),
          const SizedBox(height: Tsize.spaceBtwItems),

          //Create akun
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {}, child: const Text(TTexts.createakun))),
        ],
      )),
    );
  }
}

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
        Text(TTexts.title, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: Tsize.sm,
        ),
        Text(
          TTexts.subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

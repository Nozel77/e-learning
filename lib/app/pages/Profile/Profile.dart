import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../helper/Themes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Detail",
              style: textOnboardingBold(),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(
                right: 20.0,
              ),
              child: Icon(Iconsax.message_notif4),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Container(
              child: Column(children: [
            Center(
              child: Image.asset(
                images.Webdesain,
                width: 330,
                height: 300,
              ),
            ),
            SizedBox(
              height: 5,
            )
          ])),
        ));
  }
}

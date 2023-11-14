import 'package:flutter/material.dart';

import 'profile_menu_view.dart';
import 'profile_picture_view.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          text: "My Account",
          icon: "assets/User Icon.svg",
          press: () => {},
        ),
        ProfileMenu(
          text: "Notifications",
          icon: "assets/Bell.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "Settings",
          icon: "assets/Settings.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "Help Center",
          icon: "assets/Question mark.svg",
          press: () {},
        ),
        ProfileMenu(
          text: "Log Out",
          icon: "assets/Log out.svg",
          press: () {},
        ),
      ],
    );
  }
}

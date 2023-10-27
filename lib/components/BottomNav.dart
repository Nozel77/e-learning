import 'package:e_learning/app/pages/homepage/Homepage.dart';
import 'package:e_learning/components/TCustomTab.dart';
import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../state_util.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: GNav(
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              backgroundColor: Colors.black,
              tabBorderRadius: 25,
              textStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, color: Colors.white),
              gap: 8,
              onTabChange: (index) {
                if (index == 0) {
                  Get.to(
                      Homepage());
                }
                if (index == 1) {
                  Get.to(
                      CustomTab());
                }
              },
              padding: EdgeInsets.all(13),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.event_rounded,
                  text: 'Rank',
                ),
                GButton(
                  icon: Icons.account_circle_sharp,
                  text: 'Profile',
                ),
              ]),
        ),
      ),
    );
  }
}

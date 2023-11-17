import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class Tcolor {
  static const Color background = Color.fromRGBO(248, 248, 248, 1);
  static const Color textColor = Color.fromRGBO(46, 46, 65, 1);
  static const Color button = Color.fromRGBO(89, 143, 237, 1);
  static const Color style = Color.fromRGBO(53, 170, 255, 1);
  static const Color secondaryText = Color.fromRGBO(255, 193, 0, 1);
  static const Color grey = Color.fromRGBO(138, 142, 151, 1);
  static const Color darkGrey = Color.fromRGBO(74, 76, 79, 1);
  static const Color border = Color.fromRGBO(218, 218, 218, 1);
  static const Color container1 = Color.fromRGBO(134, 96, 229, 1);
  static const Color avatr = Color.fromRGBO(116, 60, 194, 1);
  static const Color container2 = Color.fromRGBO(146, 146, 186, 1);
  static const Color container3 = Color.fromRGBO(93, 105, 138, 1);
  static const Color avatar3 = Color.fromRGBO(78, 93, 133, 1);
  static const Color container4 = Color.fromRGBO(155, 190, 200, 1);
  static const Color avatar4 = Color.fromRGBO(22, 72, 99, 1);
  static const Color avatar2 = Color.fromRGBO(109, 111, 138, 1);
}

figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

TextStyle buttonStyle({required final color}) {
  return GoogleFonts.jost(
      textStyle: TextStyle(
          color: Tcolor.button,
          fontWeight: FontWeight.w700,
          fontSize: figmaFontsize(21)));
}

TextStyle DividerText() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Tcolor.textColor,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(12)));
}

TextStyle textOnboardingBold() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Tcolor.textColor,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(28)));
}

TextStyle textOnboardingMedium() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Tcolor.textColor,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(28)));
}

TextStyle textTitle() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Tcolor.textColor,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(30)));
}

TextStyle textSub() {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Tcolor.textColor,
          fontWeight: FontWeight.w400,
          fontSize: figmaFontsize(25)));
}

class TTexts {
  static const String title = "Welcome Back!Glad To";
  static const String subtitle = "see you, Again!";
  static const String email = "E-mail";
  static const String password = "Password";
  static const String firstname = "First Name";
  static const String cPassword = "Confirm Password";
  static const String username = "Username";
  static const String lastname = "Last Name";
  static const String rememberme = "Remember Me";
  static const String forgetpw = "Forget Password?";
  static const String signin = "Sign In";
  static const String login = "Log In";
  static const String register = "Register";
  static const String createakun = "Create Account";
  static const String orsignwith = "or sign in with";
  static const String orsignupwith = "or sign up with";
  static const String haveaccount = "have an account?";
  static const String viewall = "View all";
}

class Tsize {
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;

  //AppBar height
  static const double appBarHeight = 56.0;

  //jarak default antar bagian
  static const double defaultSpace = 24.0;
  static const double spaceBtwItems = 16.0;
  static const double spaceBtwSections = 32.0;

  //input fields
  static const double inputFieldRadius = 12.0;
  static const double spaceBtwInputFields = 16.0;

  //icon
  static const double iconmd = 24.0;
}

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: Tsize.appBarHeight,
    left: Tsize.defaultSpace,
    bottom: Tsize.defaultSpace,
    right: Tsize.defaultSpace,
  );
}

class images {
  static const String LOGO = "assets/LOGGO (2).png";
  static const String onBoarding1 =
      "assets/Blog_post-bro_1__1_-removebg-preview.png";
  static const String onBoarding2 =
      "assets/Novelist_writing-bro_1-removebg-preview.png";
  static const String onBoarding3 = "assets/onb3.png";
  static const String Next = "assets/Next.svg";
  static const String google = "assets/gugel.png";
  static const String banner = "assets/Frame 10 1.png";
  static const String banner2 = "assets/Frame 11.png";
  static const String banner3 = "assets/Frame 12.png";
  static const String pf1 = "assets/Ellipse 9.png";
  static const String pf2 = "assets/profile2.png";
  static const String pf3 = "assets/profile3.png";
  static const String web1 = "assets/icons8-web-design-64 (1) 1.svg";
  static const String Webdesain = "assets/Webdesain.png";
  static const String icon1 = "assets/jam.png";
  static const String icon2 = "assets/jam2.png";
  static const String icon3 = "assets/Star.png";
  static const String icon4 = "assets/pesawat.png";
}

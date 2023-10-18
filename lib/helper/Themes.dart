import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class Tcolor {
  static const Color background = Colors.white;
  static const Color textColor = Color.fromRGBO(46, 46, 65, 1);
  static const Color button = Color.fromRGBO(255, 224, 127, 1);
  static const Color secondaryText = Color.fromRGBO(255, 193, 0, 1);
  static const Color grey = Color.fromRGBO(125, 124, 124, 1);
  static const Color darkGrey = Color.fromRGBO(74, 76, 79, 1);
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

TextStyle DividerText({required final color}) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Tcolor.textColor,
      fontWeight: FontWeight.w400,
      fontSize: figmaFontsize(12))
  );
}

TextStyle textOnboardingBold({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Tcolor.textColor,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(28)));
}

TextStyle textOnboardingMedium({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Tcolor.textColor,
          fontWeight: FontWeight.w500,
          fontSize: figmaFontsize(28)));
}

class TTexts {
  static const String title = "Welcome Back";
  static const String subtitle = "Tai ngasu";
  static const String email = "E-mail";
  static const String password = "Password";
  static const String firstname = "First Name";
  static const String lastname = "Last Name";
  static const String rememberme = "Remember Me";
  static const String forgetpw = "Forget Password?";
  static const String signin = "Sign In";
  static const String createakun = "Create Account";
  static const String orsignwith = "or sign in with";
  static const String orsignupwith = "or sign up with";
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
  static const String Logo = "assets/Logo.png";
  static const String onBoarding1 = "assets/svg1.svg";
  static const String onBoarding2 = "assets/svg2.svg";
  static const String onBoarding3 = "assets/svg3.svg";
  static const String Next = "assets/Next.svg";
  static const String google = "assets/gugel.png";
}
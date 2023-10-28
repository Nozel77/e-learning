import 'package:e_learning/components/TCustomTab.dart';
import 'package:e_learning/helper/Themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TxtCategory extends StatelessWidget {
  const TxtCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Category",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.42),
          child: TextButton(
            onPressed: () => Get.to(CustomTab()),
            child: Text(
              TTexts.viewall,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Tcolor.grey),
            ),
          ),
        ),
      ],
    );
  }
}

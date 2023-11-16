import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TheaderRev extends StatelessWidget {
  TheaderRev({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Tcolor.container1),
      child: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: CircleAvatar(
                backgroundColor: Tcolor.avatr,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(color: Tcolor.avatr),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Beginner",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Tcolor.border),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}

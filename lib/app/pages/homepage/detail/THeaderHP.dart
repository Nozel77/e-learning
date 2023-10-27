import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../helper/Themes.dart';

class THeaderHP extends StatelessWidget {
  const THeaderHP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.0, top: 60.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 60.0),
                child: Text("Hello Nozell",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 3.0),
                child: Text(
                  "Today 25 November 2023",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Tcolor.grey),
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0, top: 60.0),
              child: CircleAvatar(
                backgroundColor: Tcolor.border,
                radius: 25,
                child: Icon(
                  Iconsax.message_notif4,
                  size: 25,
                ),
              )),
        ],
      ),
    );
  }
}

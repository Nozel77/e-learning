import 'package:e_learning/app/pages/DetailCourse/Detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../components/TCustomTab.dart';
import '../../../../helper/Themes.dart';
import '../../../../state_util.dart';


class TCard extends StatelessWidget {
  const TCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Category",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 147),
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
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Design"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Art"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Mathematics"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Computer Science"),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
             child: GestureDetector(
              onTap: () {
                Get.to(DetailPage());
              },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    color: Tcolor.container1,
                    width: 170,
                    height: 230,
                  ),
                ),
                Positioned(
                  top: 13,
                  left: 15,
                  child: CircleAvatar(
                    backgroundColor: Tcolor.avatr,
                    radius: 20,
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 15,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(images.pf1),
                    radius: 18,
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 35,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(images.pf2),
                    radius: 18,
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 55,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(images.pf3),
                    radius: 18,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20, top: 110),
                    child: Text(
                      "Web",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 20, top: 130),
                    child: Text(
                      "Design",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 20, top: 150),
                    child: Text(
                      "Make Responsive",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Tcolor.textColor,
                        fontSize: 15,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 210),
                  child: LinearPercentIndicator(
                    animation: false,
                    lineHeight: 5,
                    percent: 0.3,
                    width: 150,
                    progressColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple.shade200,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 160,
                  child: Container(
                    width: 70,
                    height: 25,
                    color: Tcolor.avatr,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(
                          2,
                        ),
                        child: Text(
                          "Beginner",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Tcolor.border),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
        )
      ],
    );
  }
}
import 'dart:ffi';

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
        const SizedBox(
          height: 15,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Get.to(DetailPage());
                },
                child: Container(
                  width: 170,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Tcolor.container1,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: CircleAvatar(
                              backgroundColor: Tcolor.avatr,
                              radius: 20,
                            ),
                          ),
                          Container(
                            color: Tcolor.avatr,
                            margin: EdgeInsets.only(left: 30),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
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
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 10),
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage(images.pf1),
                              radius: 18,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(images.pf1),
                                radius: 18,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 60),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(images.pf1),
                                radius: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Web",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                )),
                            Text(
                              "Design",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Make Responsive",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Tcolor.textColor,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: LinearPercentIndicator(
                          animation: false,
                          lineHeight: 5,
                          percent: 0.3,
                          width: 150,
                          progressColor: Colors.deepPurple,
                          backgroundColor: Colors.deepPurple.shade200,
                        ),
                      ),
                      // Container(
                      //   alignment: Alignment.centerLeft,
                      //   margin: EdgeInsets.only(left: 15),
                      //   child: Text(
                      //     "Design",
                      //     style: GoogleFonts.poppins(
                      //       fontWeight: FontWeight.w600,
                      //       color: Colors.white,
                      //       fontSize: 15,
                      //     ),
                      //   ),
                      // )
                      // Stack(
                      //   children: [
                      //     ClipRRect(
                      //       borderRadius: BorderRadius.circular(8),
                      //       child: Container(
                      //         color: Tcolor.container1,
                      //         width: 170,
                      //         height: 230,
                      //       ),
                      //     ),
                      //     Positioned(
                      //       top: 13,
                      //       left: 15,
                      //       child: CircleAvatar(
                      //         backgroundColor: Tcolor.avatr,
                      //         radius: 20,
                      //       ),
                      //     ),
                      //     Positioned(
                      //       top: 70,
                      //       left: 15,
                      //       child: CircleAvatar(
                      //         backgroundImage: AssetImage(images.pf1),
                      //         radius: 18,
                      //       ),
                      //     ),
                      //     Positioned(
                      //       top: 70,
                      //       left: 35,
                      //       child: CircleAvatar(
                      //         backgroundImage: AssetImage(images.pf2),
                      //         radius: 18,
                      //       ),
                      //     ),
                      //     Positioned(
                      //       top: 70,
                      //       left: 55,
                      //       child: CircleAvatar(
                      //         backgroundImage: AssetImage(images.pf3),
                      //         radius: 18,
                      //       ),
                      //     ),
                      //     Padding(
                      //         padding: const EdgeInsets.only(left: 20, top: 110),
                      //         child: Text(
                      //           "Web",
                      //           style: GoogleFonts.poppins(
                      //             fontWeight: FontWeight.w600,
                      //             color: Colors.white,
                      //             fontSize: 15,
                      //           ),
                      //         )),
                      //     Padding(
                      //         padding: const EdgeInsets.only(left: 20, top: 130),
                      //         child: Text(
                      //           "Design",
                      //           style: GoogleFonts.poppins(
                      //             fontWeight: FontWeight.w600,
                      //             color: Colors.white,
                      //             fontSize: 15,
                      //           ),
                      //         )),
                      //     Padding(
                      //         padding: const EdgeInsets.only(left: 20, top: 150),
                      //         child: Text(
                      //           "Make Responsive",
                      //           style: GoogleFonts.poppins(
                      //             fontWeight: FontWeight.w600,
                      //             color: Tcolor.textColor,
                      //             fontSize: 15,
                      //           ),
                      //         )),
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 10, top: 210),
                      //       child: LinearPercentIndicator(
                      //         animation: false,
                      //         lineHeight: 5,
                      //         percent: 0.3,
                      //         width: 150,
                      //         progressColor: Colors.deepPurple,
                      //         backgroundColor: Colors.deepPurple.shade200,
                      //       ),
                      //     ),
                      //     Container(
                      //       width: 70,
                      //       height: 25,
                      //       color: Tcolor.avatr,
                      //       child: Center(
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(
                      //             2,
                      //           ),
                      //           child: Text(
                      //             "Beginner",
                      //             style: GoogleFonts.poppins(
                      //                 fontWeight: FontWeight.w400,
                      //                 fontSize: 12,
                      //                 color: Tcolor.border),
                      //           ),
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}

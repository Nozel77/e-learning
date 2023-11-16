import 'package:e_learning/app/api/learning_controller.dart';
import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

class TCard extends StatelessWidget {
  final String title;
  final String pengajar;
  final int price;
  //final String lessons;
  //final images image;
  final LearningController learningController = Get.put(LearningController());

  TCard({
    required this.title,
    required this.pengajar,
    required this.price,
    //required this.lessons,
    //required this.image
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: width,
      height: height * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Tcolor.container2,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: CircleAvatar(
                  backgroundColor: Tcolor.avatar2,
                  radius: 20,
                ),
              ),
              Container(
                color: Tcolor.avatar2,
                // margin: EdgeInsets.only(left: 30)
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
                    backgroundImage: AssetImage(images.pf2),
                    radius: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 60),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(images.pf3),
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
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 20,
              width: double.infinity,
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 15,
                ),
              )),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 20,
            width: double.infinity,
            child: Text(
              pengajar,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

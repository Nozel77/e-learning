import 'package:e_learning/app/api/learning_model.dart';
import 'package:e_learning/app/pages/home_page/home_page_dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../helper/themes/Themes.dart';
import '../../api/learning_controller.dart';

class DetailPage extends StatelessWidget {
  final LearningController learningController = Get.put(LearningController());
  final data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final data = Get.arguments;


    Learning learn = data!;
    // Learning model = Model!;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            learn.title,
            style: textOnboardingBold(),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(
                right: 20.0,
              ),
              child: Icon(Iconsax.message_notif4),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            child: Image.network(
                              learn.images,
                              width: 320,
                              height: 240,
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 135,
                            ),
                            child: Text(
                              data.title,
                              style: textOnboardingBold(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                child: Icon(
                                  Icons.play_arrow_outlined,
                                  color: Tcolor.button,
                                ),
                                backgroundColor: Tcolor.background,
                                radius: 12,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  learn.lessons,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.access_time,
                                    color: Tcolor.button,
                                  ),
                                  radius: 12,
                                  backgroundColor: Tcolor.background,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 5), // Adjust as needed
                                child: Text(
                                  learn.duration,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.star_border_outlined,
                                    color: Tcolor.button,
                                  ),
                                  radius: 12,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  "${learn.rating}",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider()
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                        child: Text(
                          learn.description,
                          style: textOnboardingMedium(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      width: 320,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Tcolor.border,
                      ),
                      child: Row(children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 8.0),
                              child: Text(data.instructor,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 3.0),
                              child: Text(
                                data.instructor,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Tcolor.grey),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.message_rounded,
                              color: Tcolor.button,
                            ),
                            radius: 40,
                            backgroundColor: Tcolor.border,
                          ),
                        ),
                      ])),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      width: 340,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Tcolor.border,
                      ),
                      child: Row(children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 8.0),
                              child: Text("Total Price",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 3.0),
                              child: Text(
                                data.price.toString(),
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Tcolor.grey),
                              ),
                            ),
                          ],
                        ),
                      ])),
                ],
              ),
            ),
          ],
        )));
  }
}

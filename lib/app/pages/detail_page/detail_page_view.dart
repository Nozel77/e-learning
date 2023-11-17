import 'package:e_learning/app/api/learning_model.dart';
import 'package:e_learning/app/pages/detail_page/widget/buy.dart';
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
    return Container(
      child: Scaffold(
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
                            margin: EdgeInsets.all(10.0),
                            child: Image.network(
                              learn.images,
                              height: 200,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 10,
                            ),
                            child: Text(
                              data.title,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Tcolor.textColor),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(10),
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
                                  "${learn.lessons} lesson",
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
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  learn.duration,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.star_border_rounded,
                                    color: Tcolor.button,
                                  ),
                                  backgroundColor: Tcolor.border,
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
                  Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        learn.description,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Tcolor.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                      width: 335,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Tcolor.button,
                      ),
                      child: Row(children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 5.0),
                              child: Text(data.instructor,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 21,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 3.0),
                              child: Text(
                                data.instructor,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Tcolor.textColor),
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
                            radius: 30,
                            backgroundColor: Tcolor.background,
                          ),
                        ),
                      ])),
                ],
              ),
            ),
          ],
        )),
        bottomSheet: BottomSheet(
          onClosing: () {},
          backgroundColor: Tcolor.background,
          enableDrag: false,
          builder: (context) {
            return SizedBox(
              height: 80,
              child: TotalPriceWidget(),
            );
          },
        ),
      ),
    );
  }
}

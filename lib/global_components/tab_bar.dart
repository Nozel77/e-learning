import 'package:e_learning/app/api/learning_controller.dart';
import 'package:e_learning/app/pages/home_page/components/TCard.dart';
import 'package:e_learning/app/pages/home_page/components/TCard2.dart';
import 'package:e_learning/app/pages/home_page/components/TCard4.dart';
import 'package:e_learning/app/pages/homepage/detail/TCard3.dart';
import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTab extends StatefulWidget {
  const CustomTab({super.key});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  final LearningController learningController = Get.put(LearningController());

  List<String> tabs = [
    "Design",
    "IoT",
    "BackEnd",
    "FrontEnd",
  ];
  int current = 0;

  double changePositionedOfLine() {
    switch (current) {
      case 0:
        return 0;
      case 1:
        return 72;
      case 2:
        return 118;
      case 3:
        return 204;
      default:
        return 0;
    }
  }

  double changeContainerWidth() {
    switch (current) {
      case 0:
        return 55;
      case 1:
        return 25;
      case 2:
        return 70;
      case 3:
        return 70;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Category",
          style: textOnboardingBold(),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(CupertinoIcons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: width,
              height: height * 0.05,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      width: width,
                      height: height * 0.07,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: tabs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                left: index == 0 ? 10 : 23, top: 7),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: Text(
                                tabs[index],
                                style: GoogleFonts.poppins(
                                  fontSize: current == index ? 16 : 14,
                                  fontWeight: current == index
                                      ? FontWeight.w500
                                      : FontWeight.w400,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    curve: Curves.fastLinearToSlowEaseIn,
                    bottom: 0,
                    left: changePositionedOfLine(),
                    duration: const Duration(milliseconds: 500),
                    child: AnimatedContainer(
                      margin: const EdgeInsets.only(left: 10),
                      width: changeContainerWidth(),
                      height: height * 0.008,
                      decoration: BoxDecoration(
                        color: Tcolor.style,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.fastLinearToSlowEaseIn,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 10,
              ),
              child: Container(
                child: Container(
                  width: width * 1,
                  height: height * 1.4,
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          2, // Set the number of columns in the grid
                      crossAxisSpacing: 1, // Adjust as needed
                      mainAxisSpacing: 10, // Adjust as needed
                    ),
                    itemCount: learningController.learningResponseModel.length,
                    itemBuilder: (context, index) {
                      final learn =
                          learningController.learningResponseModel[index];

                      return Container(
                        child: TCard(
                          title: learn.title,
                          pengajar: learn.instructor,
                          price: learn.price,
                          //lessons: learn.lessons,
                          //image: learn.image,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

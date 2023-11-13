import 'package:e_learning/app/pages/BottomBar/TBottomBar.dart';
import 'package:e_learning/app/pages/homepage/detail/TCard.dart';
import 'package:e_learning/app/pages/homepage/detail/TCard2.dart';
import 'package:e_learning/app/pages/homepage/detail/TCard3.dart';
import 'package:e_learning/app/pages/homepage/detail/TCard4.dart';
import 'package:e_learning/app/pages/homepage/detail/THeaderHP.dart';
import 'package:e_learning/app/pages/homepage/detail/category.dart';
import 'package:e_learning/app/pages/homepage/detail/txtCategory.dart';
import 'package:e_learning/app/pages/homepage/model/LearningController.dart';
import 'package:e_learning/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  final LearningController learningController = Get.put(LearningController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            THeaderHP(),
            const SizedBox(
              height: 30,
            ),
            Image(
              image: AssetImage(images.banner),
            ),
            const SizedBox(
              height: 30,
            ),
            TxtCategory(),
            SldierCategory(),
            Container(
              width: width,
              height: height * 0.4,
              margin: const EdgeInsets.only(bottom: 10),
              child: ListView.builder(
                physics: BouncingScrollPhysics(), // Smooth scrolling effect
                scrollDirection: Axis.vertical,
                itemCount: learningController.learningResponseModel.length,
                itemBuilder: (context, index) {
                  final data = learningController
                      .learningResponseModel.value[index].data[index];
                  return Padding(
                    padding: EdgeInsets.only(top: 10, right: 5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TCard(
                                  title: data.title, pengajar: data.instructor),
                              TCard3(
                                  title: data.title, pengajar: data.instructor),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TCard2(
                                title: data.title, pengajar: data.instructor),
                            TCard4(title: data.title, pengajar: data.instructor),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TCard2(
                              title: data.title,
                              pengajar: data.instructor,
                            ),
                            TCard(
                              title: data.title,
                              pengajar: data.instructor,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TCard2(
                              title: data.title,
                              pengajar: data.instructor,
                            ),
                            TCard4(
                              title: data.title,
                              pengajar: data.instructor,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TCard3(
                              title: data.title,
                              pengajar: data.instructor,
                            ),
                            TCard2(
                              title: data.title,
                              pengajar: data.instructor,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 180),
                              child: TCard2(
                                title: data.title,
                                pengajar: data.instructor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

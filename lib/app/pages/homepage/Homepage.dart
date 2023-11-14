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
              child:ListView.builder(
          itemCount: learningController.learningResponseModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final learn = learningController.learningResponseModel[index];
            return Container(
              
              width: width * 0.4,
              height: height * 0.3,
              color: Colors.white,
              child: TCard(title: learn.title, pengajar: learn.instructor),
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

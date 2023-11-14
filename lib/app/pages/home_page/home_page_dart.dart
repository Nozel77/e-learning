import 'package:e_learning/app/pages/home_page/components/TCard3.dart';
import 'package:e_learning/app/pages/home_page/components/header_home_view.dart';
import 'package:e_learning/app/pages/home_page/components/category.dart';
import 'package:e_learning/app/pages/home_page/components/category_text.dart';
import 'package:e_learning/app/api/learning_controller.dart';
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
              child: Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ), // Adjust as needed
                child: Container(
                  width: width * 1.2,
                  height: height * 1.8,
                  margin: const EdgeInsets.only(bottom: 60),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          2, // Set the number of columns in the grid
                      crossAxisSpacing: 5, // Adjust as needed
                      mainAxisSpacing: 65, // Adjust as needed
                    ),
                    itemCount: learningController.learningResponseModel.length,
                    itemBuilder: (context, index) {
                      final learn =
                          learningController.learningResponseModel[index];
                      return Container(
                        color: Colors.white,
                        child: TCard3(
                          title: learn.title,
                          pengajar: learn.instructor,
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

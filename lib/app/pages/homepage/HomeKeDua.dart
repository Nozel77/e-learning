import 'package:e_learning/app/pages/homepage/detail/TCard.dart';
import 'package:e_learning/app/pages/homepage/model/LearningController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeKedua extends StatelessWidget {
   HomeKedua({super.key});
  final LearningController learningController = Get.put(LearningController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body: Container(
        width: width,
        height: height,
        
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            final learn = learningController.learningResponseModel[index];
            return Container(
              width: width,
              height: height * 0.1,
              color: Colors.yellow,
              // child: TCard(title: learn.title, pengajar: learn.instructor),
            );
          },
          ),
      ),
    );
  }
}
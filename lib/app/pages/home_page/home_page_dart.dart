import 'dart:ffi';

import 'package:e_learning/app/pages/home_page/components/banner_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_learning/app/api/learning_controller.dart';
import 'package:e_learning/app/pages/detail_page/detail_page_view.dart';
import 'package:e_learning/app/pages/home_page/components/TCard.dart';
import 'package:e_learning/app/pages/home_page/components/header_home_view.dart';
import 'package:e_learning/app/pages/home_page/components/category.dart';
import 'package:e_learning/app/pages/home_page/components/category_text.dart';
import 'package:e_learning/helper/themes/Themes.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final LearningController learningController = Get.put(LearningController());
  RxBool isLoading = false.obs;
  final PageController bannerController = PageController();
  late BannerController _bannerController;

  @override
  void initState() {
    super.initState();
    _bannerController = BannerController(onTimerTick: _handleBannerTimerTick);
  }

  void _handleBannerTimerTick() {
    final currentPage = bannerController.page?.round() ?? 0;
    bannerController.animateToPage((currentPage + 1) % 3,
        duration: Duration(milliseconds: 200), curve: Curves.easeInOutCubic);
  }

  @override
  void dispose() {
    _bannerController.dispose();
    bannerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              THeaderHP(),
              const SizedBox(height: 30),
              // Rotating Banner
              Container(
                margin: EdgeInsets.all(20),
                height: 200,
                child: PageView(
                  controller: bannerController,
                  children: [
                    Image.asset(images.banner),
                    Image.asset(images.banner2),
                    Image.asset(images.banner3),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              TxtCategory(),
              SldierCategory(),
              Obx(
                () => Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    top: 20,
                    right: 10,
                  ),
                  width: width * 1,
                  height: height * 2.4,
                  child: learningController.isLoading.value
                      ? Center(
                          // Display a loading indicator or message while data is being loaded
                          child: CircularProgressIndicator(),
                        )
                      : GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 10,
                          ),
                          itemCount:
                              learningController.learningResponseModel.length,
                          itemBuilder: (context, index) {
                            final learn =
                                learningController.learningResponseModel[index];
                            print(learningController
                                .learningResponseModel[index]);
                            return InkWell(
                              onTap: () {
                                print(learningController
                                    .learningResponseModel[index]);
                                Get.to(DetailPage(),
                                    arguments: learningController
                                        .learningResponseModel[index]);
                              },
                              child: Container(
                                color: Colors.white,
                                child: TCard(
                                  title: learn.title,
                                  pengajar: learn.instructor,
                                  price: learn.price,
                                  //image: learn.image,
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

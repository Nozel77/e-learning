import 'package:e_learning/app/pages/home_page/components/banner_controller.dart';
import 'package:e_learning/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_learning/app/api/learning_controller.dart';
import 'package:e_learning/app/pages/detail_page/detail_page_view.dart';
import 'package:e_learning/app/pages/home_page/components/TCard.dart';
import 'package:e_learning/app/pages/home_page/components/header_home_view.dart';
import 'package:e_learning/app/pages/home_page/components/category.dart';
import 'package:e_learning/app/pages/home_page/components/category_text.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final LearningController learningController = Get.put(LearningController());
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
        duration: Duration(milliseconds: 2000), curve: Curves.easeInOut);
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            THeaderHP(),
            const SizedBox(height: 30),
            // Rotating Banner
            Container(
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
            Container(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                child: Container(
                  width: width * 1.2,
                  height: height * 2.4,
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: learningController.learningResponseModel.length,
                    itemBuilder: (context, index) {
                      final learn =
                          learningController.learningResponseModel[index];
                      print(learningController.learningResponseModel[index]);
                      return InkWell(
                        onTap: () {
                          print(
                              learningController.learningResponseModel[index]);
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
                            //lessons: learn.lessons,
                            //image: learn.image,
                          ),
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

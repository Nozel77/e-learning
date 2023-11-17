import 'package:e_learning/app/api/learning_controller.dart';
import 'package:e_learning/app/api/learning_model.dart';
import 'package:e_learning/app/pages/payment_page/payment_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../helper/themes/Themes.dart';

class TotalPriceWidget extends StatelessWidget {
  final LearningController learningController = Get.put(LearningController());
  final data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;

    Learning learn = data!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 8.0),
              child: Text("Total Price",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Tcolor.textColor)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 3.0),
              child: Text(
                "${learn.price} \$",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Tcolor.textColor),
              ),
            ),
          ],
        ),
        SizedBox(
            child: MaterialButton(
          height: 45,
          onPressed: () => Get.to(PaymentPage()),
          color: Tcolor.button,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 0,
          child: Text(
            "Buy Class",
          ),
          textColor: Tcolor.background,
        )),
      ],
    );
  }
}

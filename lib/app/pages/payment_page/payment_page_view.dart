import 'package:e_learning/app/pages/payment_page/payment_page_controller.dart';
import 'package:e_learning/app/pages/successfully_page/successfully_page_view.dart';
import 'package:e_learning/helper/routes/app_pages.dart';
import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  final PaymentController paymentController = Get.put(PaymentController());

  void _processPayment(PaymentController paymentController) {
    print(
        'Pembayaran sebesar \$${paymentController.totalAmount.value} dengan ${paymentController.selectedPaymentMethod.value} berhasil diproses.');
    Get.offAndToNamed(Routes.SUCCESS_PAGE);
  }

  Widget radioButton(String text, String images, String value, String update) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Image.asset(
            images,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 20),
          Text(text),
        ],
      ),
      onTap: () {
        paymentController.updatePaymentMethod(update);
      },
      leading: Radio(
        value: value,
        groupValue: paymentController.selectedPaymentMethod.value,
        onChanged: (value) {
          paymentController.updatePaymentMethod(value.toString());
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentController>(
      init: PaymentController(),
      builder: (paymentController) => Scaffold(
        appBar: AppBar(
          title: Text('Checkout'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Obx(() => Text(
                  'Total Amount: \$${paymentController.totalAmount.value}',
                  style: TextStyle(fontSize: 24.0),
                )),
            SizedBox(height: 20.0),
            Text(
              'E-Money',
              style: textOnboardingBold(),
            ),
            radioButton("Gopay", "assets/payment_gopay.png", "Gopay", 'Gopay'),
            radioButton("Dana", "assets/payment_dana.png", "Dana", 'Dana'),
            radioButton("Ovo", "assets/payment_ovo.png", "Ovo", 'Ovo'),
            radioButton(
                "Linkaja", "assets/payment_linkaja.png", "Linkaja", 'Linkaja'),
            SizedBox(height: 20.0),
            Text(
              'Bank Transfer',
              style: textOnboardingBold(),
            ),
            SizedBox(height: 20.0),
            radioButton(
                "Bank BCA", "assets/payment_bca.png", "Bank BCA", 'Bank BCA'),
            radioButton("Bank Mandiri", "assets/payment_mandiri.png",
                "Bank Mandiri", 'Bank Mandiri'),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Konfirmasi Pembayaran'),
                      content: Obx(
                        () => Text(
                            'Apakah Anda yakin ingin melakukan pembayaran sebesar \$${paymentController.totalAmount.value} dengan ${paymentController.selectedPaymentMethod.value}?'),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Batal'),
                        ),
                        TextButton(
                          onPressed: () {
                            _processPayment(paymentController);
                          },
                          child: Text('Konfirmasi'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Bayar Sekarang'),
            ),
          ],
        ),
      ),
    );
  }
}

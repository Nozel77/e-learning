import 'package:e_learning/app/pages/payment_page/payment_page_controller.dart';
import 'package:e_learning/app/pages/successfully_page/successfully_page_view.dart';
import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_act/slide_to_act.dart';

class PaymentPage extends StatelessWidget {
  final PaymentController paymentController = Get.put(PaymentController());

  void _processPayment(PaymentController paymentController) {
    print(
        'Pembayaran sebesar \$${paymentController.totalAmount.value} dengan ${paymentController.selectedPaymentMethod.value} berhasil diproses.');
    Get.off(SuccessPage());
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentController>(
        init: PaymentController(),
        builder: (paymentController) => Scaffold(
              appBar: AppBar(
                title: Text(
                  'Checkout',
                  style: textOnboardingBold(),
                ),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Tcolor.background,
                      border: Border.all(color: Tcolor.container4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            'payment method',
                            style: textOnboardingBold(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: paymentController
                                        .selectedPaymentMethod.value ==
                                    'Gopay'
                                ? Tcolor.style // Change to your desired color
                                : Tcolor.background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            title: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/payment_gopay.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 20),
                                Text('Gopay'),
                              ],
                            ),
                            onTap: () {
                              paymentController.updatePaymentMethod('Gopay');
                            },
                            leading: Radio(
                              value: 'Gopay',
                              groupValue:
                                  paymentController.selectedPaymentMethod.value,
                              onChanged: (value) {
                                paymentController
                                    .updatePaymentMethod(value.toString());
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: paymentController
                                        .selectedPaymentMethod.value ==
                                    'Dana'
                                ? Tcolor.style // Change to your desired color
                                : Tcolor.background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            title: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/payment_dana.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 20),
                                Text('Dana'),
                              ],
                            ),
                            onTap: () {
                              paymentController.updatePaymentMethod('Dana');
                            },
                            leading: Radio(
                              value: 'Dana',
                              groupValue:
                                  paymentController.selectedPaymentMethod.value,
                              onChanged: (value) {
                                paymentController
                                    .updatePaymentMethod(value.toString());
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: paymentController
                                        .selectedPaymentMethod.value ==
                                    'Ovo'
                                ? Tcolor.style // Change to your desired color
                                : Tcolor.background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            title: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/payment_ovo.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 20),
                                Text('Ovo'),
                              ],
                            ),
                            onTap: () {
                              paymentController.updatePaymentMethod('Ovo');
                            },
                            leading: Radio(
                              value: 'Ovo',
                              groupValue:
                                  paymentController.selectedPaymentMethod.value,
                              onChanged: (value) {
                                paymentController
                                    .updatePaymentMethod(value.toString());
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: paymentController
                                        .selectedPaymentMethod.value ==
                                    'Linkaja'
                                ? Tcolor.style // Change to your desired color
                                : Tcolor.background,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            title: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/payment_linkaja.png',
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(width: 20),
                                Text('Linkaja'),
                              ],
                            ),
                            onTap: () {
                              paymentController.updatePaymentMethod('Linkaja');
                            },
                            leading: Radio(
                              value: 'Linkaja',
                              groupValue:
                                  paymentController.selectedPaymentMethod.value,
                              onChanged: (value) {
                                paymentController
                                    .updatePaymentMethod(value.toString());
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: SlideAction(
                      innerColor: Tcolor.avatar4,
                      outerColor: Tcolor.style,
                      borderRadius: 12,
                      sliderButtonIcon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 25.0,
                      ),
                      text: "Pay",
                      textStyle: GoogleFonts.poppins(
                          color: Tcolor.background,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                      sliderRotate: false,
                      onSubmit: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                'Konfirmasi Pembayaran',
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                              ),
                              content: Obx(
                                () => Text(
                                  'Are you sure you want to make payment of \$${paymentController.totalAmount.value} with ${paymentController.selectedPaymentMethod.value}?',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Tcolor.textColor),
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Tcolor.textColor),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _processPayment(paymentController);
                                  },
                                  child: Text(
                                    'Confrim',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Tcolor.textColor),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              bottomSheet: BottomSheet(
                  onClosing: () {},
                  backgroundColor: Tcolor.background,
                  enableDrag: false,
                  builder: (context) {
                    return SizedBox(
                      height: 80,
                      child: Obx(() => Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              'Total Amount: \$${paymentController.totalAmount.value}',
                              style: textOnboardingMedium(),
                            ),
                          )),
                    );
                  }),
            ));
  }
}

import 'package:e_learning/app/pages/payment_page/payment_page_controller.dart';
import 'package:e_learning/app/pages/successfully_page/successfully_page_view.dart';
import 'package:e_learning/helper/themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          title: Text('Checkout'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              ListTile(
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
                  groupValue: paymentController.selectedPaymentMethod.value,
                  onChanged: (value) {
                    paymentController.updatePaymentMethod(value.toString());
                  },
                ),
              ),
              ListTile(
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
                  groupValue: paymentController.selectedPaymentMethod.value,
                  onChanged: (value) {
                    paymentController.updatePaymentMethod(value.toString());
                  },
                ),
              ),
              ListTile(
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
                  groupValue: paymentController.selectedPaymentMethod.value,
                  onChanged: (value) {
                    paymentController.updatePaymentMethod(value.toString());
                  },
                ),
              ),
              ListTile(
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
                  groupValue: paymentController.selectedPaymentMethod.value,
                  onChanged: (value) {
                    paymentController.updatePaymentMethod(value.toString());
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Bank Transfer',
                style: textOnboardingBold(),
              ),
              SizedBox(height: 20.0),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/payment_bca.png',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 20),
                    Text('Bank BCA'),
                  ],
                ),
                onTap: () {
                  paymentController.updatePaymentMethod('Bank BCA');
                },
                leading: Radio(
                  value: 'Bank BCA',
                  groupValue: paymentController.selectedPaymentMethod.value,
                  onChanged: (value) {
                    paymentController.updatePaymentMethod(value.toString());
                  },
                ),
              ),
              ListTile(
                title: Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/payment_mandiri.png',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 20),
                    Text('Bank Mandiri'),
                  ],
                ),
                onTap: () {
                  paymentController.updatePaymentMethod('Bank Mandiri');
                },
                leading: Radio(
                  value: 'Bank Mandiri',
                  groupValue: paymentController.selectedPaymentMethod.value,
                  onChanged: (value) {
                    paymentController.updatePaymentMethod(value.toString());
                  },
                ),
              ),
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
      ),
    );
  }
}

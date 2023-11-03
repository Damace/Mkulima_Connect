import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/payment_paypal_page/models/payment_paypal_model.dart';
import 'package:flutter/material.dart';

class PaymentPaypalController extends GetxController {
  PaymentPaypalController(this.paymentPaypalModelObj);

  TextEditingController nameController = TextEditingController();

  Rx<PaymentPaypalModel> paymentPaypalModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
  }
}

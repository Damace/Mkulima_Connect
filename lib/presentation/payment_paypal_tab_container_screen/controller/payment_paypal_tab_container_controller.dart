import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/payment_paypal_tab_container_screen/models/payment_paypal_tab_container_model.dart';import 'package:flutter/material.dart';class PaymentPaypalTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<PaymentPaypalTabContainerModel> paymentPaypalTabContainerModelObj = PaymentPaypalTabContainerModel().obs;

late TabController walletoptionController = Get.put(TabController(vsync: this, length: 3));

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

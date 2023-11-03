import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/review_select_voucher_bottomsheet/models/review_select_voucher_model.dart';import 'package:flutter/material.dart';class ReviewSelectVoucherController extends GetxController {TextEditingController languageController = TextEditingController();

Rx<ReviewSelectVoucherModel> reviewSelectVoucherModelObj = ReviewSelectVoucherModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); languageController.dispose(); } 
 }

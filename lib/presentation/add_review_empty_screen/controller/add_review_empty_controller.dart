import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/add_review_empty_screen/models/add_review_empty_model.dart';import 'package:flutter/material.dart';class AddReviewEmptyController extends GetxController {TextEditingController formTextareaController = TextEditingController();

Rx<AddReviewEmptyModel> addReviewEmptyModelObj = AddReviewEmptyModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formTextareaController.dispose(); } 
 }

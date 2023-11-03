import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/result_filter_screen/models/result_filter_model.dart';import 'package:flutter/material.dart';class ResultFilterController extends GetxController {TextEditingController formSearchController = TextEditingController();

Rx<ResultFilterModel> resultFilterModelObj = ResultFilterModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formSearchController.dispose(); } 
 }

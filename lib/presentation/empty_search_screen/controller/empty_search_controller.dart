import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/empty_search_screen/models/empty_search_model.dart';import 'package:flutter/material.dart';class EmptySearchController extends GetxController {TextEditingController formSearchController = TextEditingController();

Rx<EmptySearchModel> emptySearchModelObj = EmptySearchModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); formSearchController.dispose(); } 
 }

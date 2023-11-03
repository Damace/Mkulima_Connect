import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/extra_information_screen/models/extra_information_model.dart';import 'package:flutter/material.dart';class ExtraInformationController extends GetxController {TextEditingController priceController = TextEditingController();

TextEditingController formvaluefillController = TextEditingController();

Rx<ExtraInformationModel> extraInformationModelObj = ExtraInformationModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); priceController.dispose(); formvaluefillController.dispose(); } 
 }

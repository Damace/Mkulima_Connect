import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/splash_screen/models/splash_model.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onInit() {
    super.onInit();
   loging();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> loging() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    var onboarding = pref.getString("onboarding");

    if (onboarding == "true") {
      Future.delayed(const Duration(milliseconds: 4000), () {
        Get.offNamed(AppRoutes.transactionTabContainerPage);
      });
    } else {
      Future.delayed(const Duration(milliseconds: 4000), () {
        Get.offNamed(AppRoutes.productTourOneScreen);
      });
    }
  }
}

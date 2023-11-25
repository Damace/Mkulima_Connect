import 'package:mkulima_connect/presentation/partiners/controller/partinersController.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';


class PartinersScreen extends GetWidget<PartinersController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.default_color,
            body: Center(
              
               // width: double.maxFinite,
                child: Text("Part Items"
                    ))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapSkip() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.preferableSelectedScreen,
    );
  }
}

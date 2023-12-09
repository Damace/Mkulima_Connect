import '../preferable_screen/widgets/preferable_item_widget.dart';
import 'controller/product_list_controller.dart';
import 'models/preferable_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class ProductScreen extends GetWidget<ProductListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.default_color,
            body: Center(
              
               // width: double.maxFinite,
                child: Text("Search ItemsJJJJJJJJJJJJJJJJJJJJ"
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

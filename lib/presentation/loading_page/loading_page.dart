import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_container_screen/home_container_screen.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';
import 'package:mkulima_connect/presentation/partiners/controller/product_list_controller.dart';

class LoadingPageScreen extends GetWidget<ProductListController> {
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color.withOpacity(0),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Center(
          child: Text("Mkulima TV"),
        )
    );
  }


  onTapCategory() {
    Get.toNamed(
      AppRoutes.categorylist,
    );
  }

  onTaOurpartners() {
    Get.toNamed(
      AppRoutes.partnersList,
    );
  }
}

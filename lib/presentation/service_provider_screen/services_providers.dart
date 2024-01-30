import 'package:mkulima_connect/presentation/utils/app_color.dart';

import 'controller/serviceProvider_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class ServicesProviders extends StatefulWidget {
  @override
  _ServicesProviders createState() => _ServicesProviders();
}

class _ServicesProviders extends State<ServicesProviders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: 100,
          )));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}

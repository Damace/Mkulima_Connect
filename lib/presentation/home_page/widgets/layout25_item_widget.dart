import '../controller/home_controller.dart';
import '../models/layout25_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class Layout25ItemWidget extends StatelessWidget {
  Layout25ItemWidget(this.layout25ItemModelObj);

  Layout25ItemModel layout25ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
               // imagePath: ImageConstant.imgShape70x701,
               imagePath: ImageConstant.imgShape70x701_palachichi,
                height: getSize(
                  70,
                ),
                width: getSize(
                  70,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                ),
                child: Obx(
                  () => Text(
                    layout25ItemModelObj.nameTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayMedium10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

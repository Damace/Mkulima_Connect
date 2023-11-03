import '../controller/home_controller.dart';
import '../models/category1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class Category1ItemWidget extends StatelessWidget {
  Category1ItemWidget(this.category1ItemModelObj);

  Category1ItemModel category1ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 10,
            bottom: 1,
          ),
          padding: getPadding(
            left: 24,
            top: 15,
            right: 24,
            bottom: 15,
          ),
          decoration: AppDecoration.fillGreenA400.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgText17,
                height: getVerticalSize(
                  18,
                ),
                width: getHorizontalSize(
                  16,
                ),
                margin: getMargin(
                  bottom: 1,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                  top: 4,
                  bottom: 3,
                ),
                child: Obx(
                  () => Text(
                    category1ItemModelObj.textOneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayRomanBold10.copyWith(
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

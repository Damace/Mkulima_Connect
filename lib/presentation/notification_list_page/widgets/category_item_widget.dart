import '../controller/notification_list_controller.dart';
import '../models/category_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class CategoryItemWidget extends StatelessWidget {
  CategoryItemWidget(this.categoryItemModelObj);

  CategoryItemModel categoryItemModelObj;

  var controller = Get.find<NotificationListController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 11,
        ),
        padding: getPadding(
          left: 24,
          top: 16,
          right: 24,
          bottom: 16,
        ),
        decoration: AppDecoration.fillIndigoA400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgText12,
              height: getVerticalSize(
                18,
              ),
              width: getHorizontalSize(
                15,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 3,
                bottom: 2,
              ),
              child: Obx(
                () => Text(
                  categoryItemModelObj.textOneTxt.value,
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
    );
  }
}

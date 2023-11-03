import '../controller/edit_form_controller.dart';
import '../models/editform_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class EditformItemWidget extends StatelessWidget {
  EditformItemWidget(this.editformItemModelObj);

  EditformItemModel editformItemModelObj;

  var controller = Get.find<EditFormController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 15,
        top: 20,
        right: 15,
        bottom: 20,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 1,
              top: 7,
              bottom: 7,
            ),
            child: Obx(
              () => Text(
                editformItemModelObj.typeTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRalewaySemiBold12.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.36,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: getSize(
              30,
            ),
            width: getSize(
              30,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgShape,
                  height: getSize(
                    30,
                  ),
                  width: getSize(
                    30,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      9,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgMenu10x10,
                  height: getSize(
                    10,
                  ),
                  width: getSize(
                    10,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 18,
              top: 5,
              bottom: 4,
            ),
            child: Text(
              "lbl_23".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratSemiBold16.copyWith(
                letterSpacing: getHorizontalSize(
                  0.48,
                ),
              ),
            ),
          ),
          Container(
            height: getSize(
              30,
            ),
            width: getSize(
              30,
            ),
            margin: getMargin(
              left: 18,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgShape,
                  height: getSize(
                    30,
                  ),
                  width: getSize(
                    30,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      9,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgPlus10x10,
                  height: getSize(
                    10,
                  ),
                  width: getSize(
                    10,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import '../models/layout5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class Layout5ItemWidget extends StatelessWidget {
  Layout5ItemWidget(this.layout5ItemModelObj);

  Layout5ItemModel layout5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          right: 24,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          layout5ItemModelObj.buttonCategoryTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: layout5ItemModelObj.isSelected.value
                ? ColorConstant.whiteA700
                : ColorConstant.blueGray80001,
            fontSize: getFontSize(
              10,
            ),
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgText3,
          height: getVerticalSize(
            18,
          ),
          width: getHorizontalSize(
            15,
          ),
          margin: getMargin(
            right: 9,
          ),
        ),
        selected: layout5ItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.gray100,
        selectedColor: ColorConstant.indigoA400,
        shape: layout5ItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    25,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    25,
                  ),
                ),
              ),
        onSelected: (value) {
          layout5ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}

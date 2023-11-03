import '../models/layout7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class Layout7ItemWidget extends StatelessWidget {
  Layout7ItemWidget(this.layout7ItemModelObj);

  Layout7ItemModel layout7ItemModelObj;

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
          layout7ItemModelObj.buttonCategoryTwoTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: layout7ItemModelObj.isSelected.value
                ? ColorConstant.whiteA700
                : ColorConstant.blueGray80001,
            fontSize: getFontSize(
              10,
            ),
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgText4,
          height: getVerticalSize(
            18,
          ),
          width: getHorizontalSize(
            15,
          ),
          margin: getMargin(
            right: 8,
          ),
        ),
        selected: layout7ItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.gray100,
        selectedColor: ColorConstant.indigoA400,
        shape: layout7ItemModelObj.isSelected.value
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
          layout7ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}

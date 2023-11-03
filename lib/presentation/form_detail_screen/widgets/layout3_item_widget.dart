import '../models/layout3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class Layout3ItemWidget extends StatelessWidget {
  Layout3ItemWidget(this.layout3ItemModelObj);

  Layout3ItemModel layout3ItemModelObj;

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
          layout3ItemModelObj.buttonCategoryTwoTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: layout3ItemModelObj.isSelected.value
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
          imagePath: ImageConstant.imgText1,
          height: getVerticalSize(
            18,
          ),
          width: getHorizontalSize(
            16,
          ),
          margin: getMargin(
            right: 8,
          ),
        ),
        selected: layout3ItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.gray100,
        selectedColor: ColorConstant.indigoA400,
        shape: layout3ItemModelObj.isSelected.value
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
          layout3ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}

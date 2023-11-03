import '../models/layout12_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class Layout12ItemWidget extends StatelessWidget {
  Layout12ItemWidget(this.layout12ItemModelObj);

  Layout12ItemModel layout12ItemModelObj;

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
          layout12ItemModelObj.buttonCategoryTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: ColorConstant.whiteA700,
            fontSize: getFontSize(
              10,
            ),
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgText,
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
        selected: layout12ItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.indigoA400,
        selectedColor: ColorConstant.indigoA400,
        shape: layout12ItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.whiteA70099,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
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
          layout12ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}

import '../models/layout9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class Layout9ItemWidget extends StatelessWidget {
  Layout9ItemWidget(this.layout9ItemModelObj);

  Layout9ItemModel layout9ItemModelObj;

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
          layout9ItemModelObj.buttonCategorySixTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: layout9ItemModelObj.isSelected.value
                ? ColorConstant.blueGray80001
                : ColorConstant.gray100,
            fontSize: getFontSize(
              10,
            ),
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgText5,
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
        selected: layout9ItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.indigoA400,
        selectedColor: ColorConstant.gray100,
        shape: layout9ItemModelObj.isSelected.value
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
          layout9ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}

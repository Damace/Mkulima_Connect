import '../models/layout16_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class Layout16ItemWidget extends StatelessWidget {
  Layout16ItemWidget(this.layout16ItemModelObj);

  Layout16ItemModel layout16ItemModelObj;

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
          layout16ItemModelObj.buttonCategorySevenTxt.value,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: layout16ItemModelObj.isSelected.value
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
        selected: layout16ItemModelObj.isSelected.value,
        backgroundColor: ColorConstant.gray100,
        selectedColor: ColorConstant.indigoA400,
        shape: layout16ItemModelObj.isSelected.value
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
          layout16ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}

import '../models/chipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewItemWidget extends StatelessWidget {
  ChipviewItemWidget(this.chipviewItemModelObj);

  ChipviewItemModel chipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: getPadding(
            right: 10,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            chipviewItemModelObj.buttonFilterTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorConstant.blueGray80001,
              fontSize: getFontSize(
                10,
              ),
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
            ),
          ),
          avatar: CustomImageView(
            svgPath: ImageConstant.imgCloseWhiteA7001,
            height: getSize(
              10,
            ),
            width: getSize(
              10,
            ),
            margin: getMargin(
              right: 19,
            ),
          ),
          selected: chipviewItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: ColorConstant.deepPurpleA20033,
          shape: chipviewItemModelObj.isSelected.value
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
            chipviewItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarDropdown extends StatelessWidget {
  AppbarDropdown(
      {required this.hintText,
      required this.items,
      required this.onTap,
      this.margin});

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: getHorizontalSize(
          161,
        ),
        focusNode: FocusNode(),
        icon: Container(
          margin: getMargin(
            left: 7,
            right: 16,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowdown10x10,
          ),
        ),
        hintText: "msg_jakarta_indone".tr,
        items: items,
        prefix: Container(
          margin: getMargin(
            left: 16,
            top: 17,
            right: 8,
            bottom: 17,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgLocation1,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            50,
          ),
        ),
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}

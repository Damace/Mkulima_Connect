import 'controller/select_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class SelectLocationBottomsheet extends StatelessWidget {
  SelectLocationBottomsheet(this.controller);

  SelectLocationController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            all: 24,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder50,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: SizedBox(
                  width: getHorizontalSize(
                    60,
                  ),
                  child: Divider(
                    height: getVerticalSize(
                      3,
                    ),
                    thickness: getVerticalSize(
                      3,
                    ),
                    color: ColorConstant.blueGray600,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 13,
                        bottom: 14,
                      ),
                      child: Text(
                        "lbl_select_location".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayBold18.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.54,
                          ),
                        ),
                      ),
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        50,
                      ),
                      width: getHorizontalSize(
                        79,
                      ),
                      text: "lbl_edit".tr,
                      variant: ButtonVariant.FillBluegray80001,
                      shape: ButtonShape.CircleBorder25,
                      padding: ButtonPadding.PaddingAll18,
                      fontStyle: ButtonFontStyle.RalewayMedium10WhiteA700,
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 35,
                ),
                padding: getPadding(
                  top: 15,
                  bottom: 15,
                ),
                decoration: AppDecoration.fillGreenA400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIconButton(
                      height: 50,
                      width: 50,
                      variant: IconButtonVariant.FillWhiteA70075,
                      shape: IconButtonShape.CircleBorder25,
                      padding: IconButtonPadding.PaddingAll16,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgLocation8,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        221,
                      ),
                      margin: getMargin(
                        top: 7,
                        bottom: 5,
                      ),
                      child: Text(
                        "msg_srengseng_kemb".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRegular12WhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.36,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 10,
                ),
                padding: getPadding(
                  all: 15,
                ),
                decoration: AppDecoration.outlineBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder25,
                ),
                child: Row(
                  children: [
                    CustomIconButton(
                      height: 50,
                      width: 50,
                      variant: IconButtonVariant.OutlineBluegray50_1,
                      shape: IconButtonShape.CircleBorder25,
                      padding: IconButtonPadding.PaddingAll16,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgLocation9,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: getHorizontalSize(
                          212,
                        ),
                        margin: getMargin(
                          left: 15,
                          top: 7,
                          bottom: 5,
                        ),
                        child: Text(
                          "msg_petompon_kec".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRegular12.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.36,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  70,
                ),
                text: "lbl_choose_location".tr,
                margin: getMargin(
                  top: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

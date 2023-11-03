import 'controller/location_distance_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class LocationDistanceBottomsheet extends StatelessWidget {
  LocationDistanceBottomsheet(this.controller);

  LocationDistanceController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 27,
            right: 24,
            bottom: 27,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder50,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
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
              Padding(
                padding: getPadding(
                  top: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 14,
                        bottom: 13,
                      ),
                      child: Text(
                        "msg_location_distan".tr,
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
                        76,
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
                decoration: AppDecoration.outlineBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIconButton(
                      height: 50,
                      width: 50,
                      variant: IconButtonVariant.OutlineBluegray50_1,
                      shape: IconButtonShape.CircleBorder25,
                      padding: IconButtonPadding.PaddingAll16,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgLocationDeepOrangeA20050x50,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        217,
                      ),
                      margin: getMargin(
                        top: 6,
                        bottom: 5,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_2_52".tr,
                              style: TextStyle(
                                color: ColorConstant.blueGray80001,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                letterSpacing: getHorizontalSize(
                                  0.36,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "msg_km_from_srengseng".tr,
                              style: TextStyle(
                                color: ColorConstant.blueGray80001,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                letterSpacing: getHorizontalSize(
                                  0.36,
                                ),
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 15,
                  bottom: 29,
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
                        svgPath: ImageConstant.imgLocationDeepOrangeA20050x50,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        179,
                      ),
                      margin: getMargin(
                        left: 15,
                        top: 6,
                        bottom: 5,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_18_2".tr,
                              style: TextStyle(
                                color: ColorConstant.blueGray80001,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                letterSpacing: getHorizontalSize(
                                  0.36,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "msg_km_from_petompon".tr,
                              style: TextStyle(
                                color: ColorConstant.blueGray80001,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                letterSpacing: getHorizontalSize(
                                  0.36,
                                ),
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

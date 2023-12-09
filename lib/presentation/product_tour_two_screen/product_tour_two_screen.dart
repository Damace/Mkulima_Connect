import 'controller/product_tour_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';

class ProductTourTwoScreen extends GetWidget<ProductTourTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, top: 24, right: 44),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVectorIndigoA400,
                                    height: getVerticalSize(64),
                                    width: getHorizontalSize(87)),
                                CustomButton(
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(66),
                                    text: "lbl_skip".tr,
                                    margin: getMargin(top: 13, bottom: 13),
                                    variant: ButtonVariant.FillGreenA400,
                                    shape: ButtonShape.CircleBorder19,
                                    padding: ButtonPadding.PaddingAll10,
                                    fontStyle: ButtonFontStyle.RalewayRegular12WhiteA700_1,
                                    onTap: () {
                                      onTapSkip();
                                    })
                              ])),
                      Container(
                          width: getHorizontalSize(277),
                          margin: getMargin(left: 24, top: 40, right: 74),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_fast_sell_your2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(20),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "lbl_one_click2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(20),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      Container(
                          width: getHorizontalSize(238),
                          margin: getMargin(left: 24, top: 22),
                          child: Text("msg_lorem_ipsum_dol9".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.36)))),
                      Container(
                          height: getVerticalSize(520),
                          width: double.maxFinite,
                          margin: getMargin(top: 28),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                   radius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                                    imagePath: ImageConstant
                                        .imgBackgroundillustration520x3752,
                                    height: getVerticalSize(520),
                                    width: getHorizontalSize(375),
                                    alignment: Alignment.center),
                              _buildLoginButton()
                              ]))
                    ]))));
  }


      Widget _buildLoginButton() {
    return Padding(
      padding:getPadding(right: 30,left: 30,bottom: 24),
      child: ElevatedButton(
        onPressed: () {
    
           onTapNext();
        
        },
        style: ElevatedButton.styleFrom(
      
          backgroundColor:ColorConstant.default_color,
          shape: const StadiumBorder(),
          elevation: 50,
          shadowColor: ColorConstant.default_color,
          minimumSize: const Size.fromHeight(60),
        ),
        child: const Text("Next"),
      ),
    );
  }


  onTapSkip() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.productTourThreeScreen,
    );
  }
}

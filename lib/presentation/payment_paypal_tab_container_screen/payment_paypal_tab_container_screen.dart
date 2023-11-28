import 'controller/payment_paypal_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/payment_mastercard_page/payment_mastercard_page.dart';
import 'package:mkulima_connect/presentation/payment_paypal_page/payment_paypal_page.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class PaymentPaypalTabContainerScreen
    extends GetWidget<PaymentPaypalTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 24, top: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              variant:
                                                  IconButtonVariant.FillGray100,
                                              shape: IconButtonShape
                                                  .CircleBorder25,
                                              padding: IconButtonPadding
                                                  .PaddingAll16,
                                              onTap: () {
                                                onTapBtnArrowleft();
                                              },
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft)),
                                          CustomButton(
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(66),
                                              text: "lbl_skip".tr,
                                              margin:
                                                  getMargin(top: 7, bottom: 5),
                                              variant:
                                                  ButtonVariant.FillGray100,
                                              shape: ButtonShape.CircleBorder19,
                                              padding:
                                                  ButtonPadding.PaddingAll10,
                                              fontStyle: ButtonFontStyle
                                                  .MontserratRegular12Bluegray800,
                                              onTap: () {
                                                onTapSkip();
                                              })
                                        ]))),
                            Container(
                                width: getHorizontalSize(251),
                                margin: getMargin(left: 24, top: 55),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_add_your2".tr,
                                          style: TextStyle(
                                              color:
                                                  ColorConstant.blueGray80001,
                                              fontSize: getFontSize(25),
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.w500,
                                              letterSpacing:
                                                  getHorizontalSize(0.75))),
                                      TextSpan(
                                          text: "msg_payment_method2".tr,
                                          style: TextStyle(
                                              color:
                                                  ColorConstant.blueGray80001,
                                              fontSize: getFontSize(25),
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.w800,
                                              letterSpacing:
                                                  getHorizontalSize(0.75)))
                                    ]),
                                    textAlign: TextAlign.left)),
                            Padding(
                                padding: getPadding(left: 24, top: 22),
                                child: Text("msg_you_can_edit_th".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.36)))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin:
                                        getMargin(left: 24, top: 51, right: 24),
                                    padding: getPadding(
                                        left: 24,
                                        top: 23,
                                        right: 24,
                                        bottom: 23),
                                    decoration: AppDecoration.fillIndigoA400
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder25),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_jonathan3".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRalewayRomanBold12
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.36))),
                                          Padding(
                                              padding: getPadding(top: 42),
                                              child: Text(
                                                  "lbl_user_email_com".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold18)),
                                          Padding(
                                              padding: getPadding(top: 23),
                                              child: Row(children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("lbl_balance".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewayRomanSemiBold8
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.24))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Text(
                                                              "lbl_12_290".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratSemiBold12WhiteA700
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.36))))
                                                    ]),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgComputer,
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    margin: getMargin(
                                                        left: 208, top: 9))
                                              ]))
                                        ]))),
                            Container(
                                height: getVerticalSize(50),
                                width: getHorizontalSize(368),
                                margin: getMargin(top: 15),
                                child: TabBar(
                                    controller:
                                        controller.walletoptionController,
                                    labelColor: ColorConstant.whiteA700,
                                    labelStyle: TextStyle(
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w700),
                                    unselectedLabelColor:
                                        ColorConstant.blueGray600,
                                    unselectedLabelStyle: TextStyle(
                                        fontSize: getFontSize(10),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500),
                                    indicator: BoxDecoration(
                                        color: ColorConstant.indigoA400,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(25))),
                                    tabs: [
                                      Tab(
                                          child: Text("lbl_paypal".tr,
                                              overflow: TextOverflow.ellipsis)),
                                      Tab(
                                          child: Text("lbl_mastercard2".tr,
                                              overflow: TextOverflow.ellipsis)),
                                      Tab(
                                          child: Text("lbl_visa".tr,
                                              overflow: TextOverflow.ellipsis))
                                    ])),
                            Container(
                                height: getVerticalSize(305),
                                child: TabBarView(
                                    controller:
                                        controller.walletoptionController,
                                    children: [
                                      PaymentPaypalPage(),
                                      PaymentMastercardPage(),
                                      PaymentMastercardPage()
                                    ]))
                          ])))
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapSkip() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}

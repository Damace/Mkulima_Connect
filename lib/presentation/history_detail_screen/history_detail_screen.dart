import 'controller/history_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_title.dart';
import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class HistoryDetailScreen extends GetWidget<HistoryDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 74,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft19();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_transaction_det".tr)),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 20, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding: getPadding(top: 8, bottom: 8),
                                  decoration: AppDecoration.fillGray100
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                            height: getVerticalSize(140),
                                            width: getHorizontalSize(168),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgShape140x1682,
                                                      height:
                                                          getVerticalSize(140),
                                                      width: getHorizontalSize(
                                                          168),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  18)),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 8),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 25,
                                                                    width: 25,
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillWhiteA700c6,
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgLocationRedA200)),
                                                                Container(
                                                                    margin: getMargin(
                                                                        top:
                                                                            74),
                                                                    padding: getPadding(
                                                                        left: 7,
                                                                        top: 5,
                                                                        right:
                                                                            7,
                                                                        bottom:
                                                                            5),
                                                                    decoration: AppDecoration
                                                                        .fillBluegray700af
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                    child: Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgButtoncategory,
                                                                              height: getVerticalSize(13),
                                                                              width: getHorizontalSize(11)),
                                                                          Padding(
                                                                              padding: getPadding(left: 6, top: 2, bottom: 1),
                                                                              child: Text("lbl_apartment".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRalewayMedium8.copyWith(letterSpacing: getHorizontalSize(0.24))))
                                                                        ]))
                                                              ])))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 9, bottom: 8),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width:
                                                          getHorizontalSize(93),
                                                      child: Text(
                                                          "msg_sky_dandelions"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRalewayBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.36)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 6),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLocationDeepOrangeA200,
                                                            height: getSize(9),
                                                            width: getSize(9)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2),
                                                            child: Text(
                                                                "msg_jakarta_indone"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRalewayRegular8))
                                                      ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 20),
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 15,
                                                              right: 24,
                                                              bottom: 15),
                                                          decoration: AppDecoration
                                                              .white
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .img,
                                                                    height:
                                                                        getVerticalSize(
                                                                            18),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            15)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 8,
                                                                        top: 3,
                                                                        bottom:
                                                                            2),
                                                                    child: Text(
                                                                        "lbl_rent"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRalewayMedium10
                                                                            .copyWith(letterSpacing: getHorizontalSize(0.3))))
                                                              ])))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 35),
                                  child: Text("msg_transaction_det".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 19),
                                      padding: getPadding(
                                          left: 16,
                                          top: 22,
                                          right: 16,
                                          bottom: 22),
                                      decoration: AppDecoration
                                          .outlineBluegray50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder25),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_check_in".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular12),
                                                      Text("lbl_11_28_2021".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12Bluegray600
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.36)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_check_out".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular12),
                                                      Text("lbl_01_28_2022".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12Bluegray600
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.36)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "lbl_owner_name"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRegular12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_anderson".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayRomanSemiBold12Bluegray600
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.36))))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "msg_transaction_typ"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtMontserratRegular12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_rent".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRalewayRomanSemiBold12Bluegray600
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.36))))
                                                    ]))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 35),
                                  child: Text("lbl_payment_detail".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 17),
                                      padding: getPadding(
                                          left: 16,
                                          top: 23,
                                          right: 16,
                                          bottom: 23),
                                      decoration: AppDecoration
                                          .outlineBluegray50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL25),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_period_time".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRegular12),
                                                  Text("lbl_2_month".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold12Bluegray600
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.36)))
                                                ]),
                                            Padding(
                                                padding: getPadding(top: 15),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          "lbl_monthly_payment"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular12),
                                                      RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text: "lbl6"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blueGray600,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.36))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_2202"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blueGray600,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.36)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_discount".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratRegular12),
                                                      RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text: "lbl7"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blueGray600,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.36))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_882"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .blueGray600,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.36)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)
                                                    ]))
                                          ]))),
                              Container(
                                  padding: getPadding(
                                      left: 16, top: 23, right: 16, bottom: 23),
                                  decoration: AppDecoration.fillGray100
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBL25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: Text("lbl_total".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratSemiBold18Bluegray80001)),
                                        Padding(
                                            padding: getPadding(right: 1),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl6".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .blueGray80001,
                                                          fontSize:
                                                              getFontSize(18),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.54))),
                                                  TextSpan(
                                                      text: "lbl_31_2502".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .blueGray80001,
                                                          fontSize:
                                                              getFontSize(18),
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.54)))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 36),
                                  child: Text("lbl_payment_method".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Container(
                                  margin: getMargin(top: 17),
                                  padding: getPadding(all: 15),
                                  decoration: AppDecoration.outlineBluegray501
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgReply,
                                        height: getSize(20),
                                        width: getSize(20)),
                                    Padding(
                                        padding: getPadding(
                                            left: 15, top: 3, bottom: 2),
                                        child: Text("msg_an_email".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayRegular12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.36))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("msg_love_the_estate".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54))))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "msg_click_here_to_a".tr,
                margin: getMargin(left: 24, right: 24, bottom: 24),
                onTap: () {
                  onTapClickheretoaddreview();
                })));
  }

  onTapClickheretoaddreview() {
    Get.toNamed(
      AppRoutes.addReviewEmptyScreen,
    );
  }

  onTapArrowleft19() {
    Get.back();
  }
}

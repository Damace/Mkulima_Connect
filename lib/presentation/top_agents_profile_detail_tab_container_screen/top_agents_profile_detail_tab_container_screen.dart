import 'controller/top_agents_profile_detail_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/top_agents_profile_detail_page/top_agents_profile_detail_page.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_title.dart';
import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';

class TopAgentsProfileDetailTabContainerScreen
    extends GetWidget<TopAgentsProfileDetailTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 74,
                leading: AppbarIconbutton2(
                      svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft3();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgUpload50x50,
                      margin: getMargin(left: 24, right: 24))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 20),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getSize(100),
                                  width: getSize(100),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgShape100x1007,
                                            height: getSize(100),
                                            width: getSize(100),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(50)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                width: getHorizontalSize(27),
                                                padding: getPadding(
                                                    left: 8,
                                                    top: 4,
                                                    right: 8,
                                                    bottom: 4),
                                                decoration: AppDecoration
                                                    .txtFillOrange300
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder8),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl8".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              fontSize:
                                                                  getFontSize(
                                                                      8),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.36))),
                                                      TextSpan(
                                                          text: "lbl_12".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.36)))
                                                    ]),
                                                    textAlign: TextAlign.left)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 9),
                                  child: Text("lbl_amanda".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold14.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.42)))),
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Text("msg_amanda_email_com".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewaySemiBold10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.3)))),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 18, right: 25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 23,
                                                top: 16,
                                                right: 23,
                                                bottom: 16),
                                            decoration: AppDecoration.fillRed50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text("lbl_5_0".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratBold14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.42)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 7, bottom: 1),
                                                      child: RatingBar.builder(
                                                          initialRating: 0,
                                                          minRating: 0,
                                                          direction:
                                                              Axis.horizontal,
                                                          allowHalfRating:
                                                              false,
                                                          itemSize:
                                                              getVerticalSize(
                                                                  10),
                                                          itemCount: 5,
                                                          updateOnDrag: true,
                                                          onRatingUpdate:
                                                              (rating) {},
                                                          itemBuilder:
                                                              (context, _) {
                                                            return Icon(
                                                                Icons.star);
                                                          }))
                                                ])),
                                        Container(
                                            margin: getMargin(left: 10),
                                            padding: getPadding(
                                                left: 28,
                                                top: 16,
                                                right: 28,
                                                bottom: 16),
                                            decoration: AppDecoration
                                                .outlineBluegray50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 8),
                                                      child: Text("lbl_235".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratBold14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.42)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 5,
                                                          bottom: 1),
                                                      child: Text(
                                                          "lbl_reviews".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratMedium10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.3))))
                                                ])),
                                        Container(
                                            margin: getMargin(left: 10),
                                            padding: getPadding(
                                                left: 39,
                                                top: 16,
                                                right: 39,
                                                bottom: 16),
                                            decoration: AppDecoration
                                                .outlineBluegray50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("lbl_112".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.42))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 5, bottom: 1),
                                                      child: Text("lbl_sold".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratMedium10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.3))))
                                                ]))
                                      ])),
                              Container(
                                  height: getVerticalSize(50),
                                  width: getHorizontalSize(327),
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray100,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(25))),
                                  child: TabBar(
                                      controller: controller.buttonController,
                                      labelColor: ColorConstant.blueGray80001,
                                      labelStyle: TextStyle(
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w600),
                                      unselectedLabelColor:
                                          ColorConstant.indigo200,
                                      unselectedLabelStyle: TextStyle(
                                          fontSize: getFontSize(12),
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w600),
                                      indicatorPadding: getPadding(all: 9.0),
                                      indicator: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(16))),
                                      tabs: [
                                        Tab(
                                            child: Text("lbl_listings".tr,
                                                overflow:
                                                    TextOverflow.ellipsis)),
                                        Tab(
                                            child: Text("lbl_sold".tr,
                                                overflow:
                                                    TextOverflow.ellipsis))
                                      ])),
                              Container(
                                  height: getVerticalSize(567),
                                  child: TabBarView(
                                      controller: controller.buttonController,
                                      children: [
                                        TopAgentsProfileDetailPage(),
                                        TopAgentsProfileDetailPage()
                                      ]))
                            ]))))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}

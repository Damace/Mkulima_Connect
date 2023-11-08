import 'controller/transaction_tab_container_controller.dart';
import 'models/transaction_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/listings_page/listings_page.dart';
import 'package:mkulima_connect/presentation/transaction_page/transaction_page.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TransactionTabContainerPage extends StatelessWidget {
  TransactionTabContainerController controller = Get.put(
      TransactionTabContainerController(TransactionTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(top: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 17, bottom: 15),
                                              child: Text("lbl_profile".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRalewayBold14)),
                                          CustomIconButton(
                                              height: 50,
                                              width: 50,
                                              margin: getMargin(left: 91),
                                              variant:
                                                  IconButtonVariant.FillGray100,
                                              shape: IconButtonShape
                                                  .CircleBorder25,
                                              padding: IconButtonPadding
                                                  .PaddingAll16,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgC6f6d1d0a80c478fac3dcfbb08744752))
                                        ]))),
                            Container(
                                height: getSize(100),
                                width: getSize(100),
                                margin: getMargin(top: 20),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgShape100x1008,
                                          height: getSize(100),
                                          width: getSize(100),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(50)),
                                          alignment: Alignment.center),
                                      CustomIconButton(
                                          height: 30,
                                          width: 30,
                                          variant: IconButtonVariant.FillGreenA400,
                                          shape:
                                              IconButtonShape.RoundedBorder17,
                                          padding:
                                              IconButtonPadding.PaddingAll9,
                                          alignment: Alignment.bottomRight,
                                          onTap: () {
                                            onTapBtnEdit();
                                          },
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .img9ce8cff206464d90abe590abdd2875e0))
                                    ])),
                            Padding(
                                padding: getPadding(top: 9),
                                child: Text("msg_jonathan_anders".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayBold14.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.42)))),
                            Padding(
                                padding: getPadding(top: 4),
                                child: Text("msg_jonathan_email".tr,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: getPadding(
                                              left: 29,
                                              top: 16,
                                              right: 29,
                                              bottom: 16),
                                          decoration: AppDecoration
                                              .outlineBluegray501
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder20),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_302".tr,
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
                                                    padding: getPadding(top: 6),
                                                    child: Text(
                                                        "lbl_listings".tr,
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
                                              .outlineBluegray501
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder20),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text("lbl_122".tr,
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
                                              ])),
                                      Container(
                                          margin: getMargin(left: 10),
                                          padding: getPadding(
                                              left: 28,
                                              top: 16,
                                              right: 28,
                                              bottom: 16),
                                          decoration: AppDecoration
                                              .outlineBluegray501
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
                                                        getPadding(left: 12),
                                                    child: Text("lbl_282".tr,
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
                                              ]))
                                    ])),
                            Container(
                                width: getHorizontalSize(327),
                                margin: getMargin(left: 24, top: 20, right: 24),
                                padding: getPadding(
                                    left: 8, top: 9, right: 8, bottom: 9),
                                decoration: AppDecoration.fillGray100.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder25),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: getVerticalSize(32),
                                          width: getHorizontalSize(273),
                                          child: TabBar(
                                              controller:
                                                  controller.layoutController,
                                              labelColor:
                                                  ColorConstant.blueGray80001,
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
                                              indicator: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              16))),
                                              tabs: [
                                                Tab(
                                                    child: Text(
                                                        "lbl_transaction".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis)),
                                                Tab(
                                                    child: Text(
                                                        "lbl_listings".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis)),
                                                Tab(
                                                    child: Text("lbl_sold".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis))
                                              ]))
                                    ])),
                            Container(
                                height: getVerticalSize(326),
                                child: TabBarView(
                                    controller: controller.layoutController,
                                    children: [
                                      TransactionPage(),
                                      ListingsPage(),
                                      ListingsPage()
                                    ]))
                          ])
                    ]))));
  }

  onTapBtnEdit() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}

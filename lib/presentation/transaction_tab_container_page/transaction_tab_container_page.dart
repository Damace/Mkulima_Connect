import 'package:flutter/services.dart';

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
       SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color.withOpacity(0),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            color: ColorConstant.default_color),
                        child: Padding(
                          padding: getPadding(bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                           onTapArrowleft14();
                                        },
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.white,
                                        ),
                                      ),
                                      CustomIconButton(
                                          onTap: () {
                                            showModalBottomSheet(
                                              isScrollControlled: true,
                                              context: context,
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusDirectional
                                                        .only(
                                                  topEnd: Radius.circular(25),
                                                  topStart: Radius.circular(25),
                                                ),
                                              ),
                                              builder: (context) =>
                                                  SingleChildScrollView(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                  bottom: 0,
                                                  top: 8,
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .all(
                                                                    Radius
                                                                        .circular(
                                                                            10),
                                                                  ),
                                                                  color: ColorConstant
                                                                      .default_color,
                                                                  boxShadow: [
                                                                BoxShadow(
                                                                  color: ColorConstant
                                                                      .default_color,
                                                                  blurRadius: 3,
                                                                ),
                                                              ]),
                                                          child: Text(
                                                              "                            "),
                                                        ),
                                                      ],
                                                    ),
                                                    Card(
                                                      elevation: 0,
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.language,
                                                            color: Colors.grey,
                                                          ),
                                                          TextButton(
                                                              onPressed: () {},
                                                              child: Text(
                                                                "Change Language",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: ColorConstant
                                                                        .default_color),
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                        Card(
                                                      elevation: 0,
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.logout_outlined,
                                                            color: Colors.grey,
                                                          ),
                                                          TextButton(
                                                              onPressed: () {},
                                                              child: Text(
                                                                "Log Out",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: ColorConstant
                                                                        .default_color),
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                          height: 50,
                                          width: 50,
                                          margin: getMargin(left: 91),
                                          variant:
                                              IconButtonVariant.FillGray100,
                                          shape: IconButtonShape.CircleBorder25,
                                          padding:
                                              IconButtonPadding.PaddingAll16,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgC6f6d1d0a80c478fac3dcfbb08744752))
                                    ]),
                              ),
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
                                            variant:
                                                IconButtonVariant.FillGreenA400,
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
                                  child: Text(
                                    "Alex  MMwaakalikammo",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayBold14.copyWith(
                                        letterSpacing: getHorizontalSize(0.42),
                                        color: Colors.white),
                                  )),
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Text("boniphaacce10@gmail.com",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewaySemiBold10
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.3),
                                              color: Colors.white))),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 18, right: 25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 20,
                                                top: 16,
                                                right: 20,
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
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons
                                                          .shopping_bag_rounded,
                                                      color: Colors.white,
                                                      size: 32,
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 6),
                                                      child: Text("Buy now",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratMedium10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.3),
                                                                  color: Colors
                                                                      .white)))
                                                ])),
                                        Container(
                                            margin: getMargin(left: 10),
                                            padding: getPadding(
                                                left: 20,
                                                top: 16,
                                                right: 20,
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
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons
                                                          .shopping_bag_rounded,
                                                      color: Colors.white,
                                                      size: 32,
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 6),
                                                      child: Text("Buy now",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratMedium10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.3),
                                                                  color: Colors
                                                                      .white)))
                                                ])),
                                        Container(
                                            margin: getMargin(left: 10),
                                            padding: getPadding(
                                                left: 20,
                                                top: 16,
                                                right: 20,
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
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Icon(
                                                      Icons
                                                          .shopping_bag_rounded,
                                                      color: Colors.white,
                                                      size: 32,
                                                    ),
                                                  ),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 6),
                                                      child: Text("Buy now",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratMedium10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.3),
                                                                  color: Colors
                                                                      .white)))
                                                ]))
                                      ])),
                            ],
                          ),
                        ),
                      ),

// ----------------------------------------------------------------------------------------------------------------------------------------

                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                width: getHorizontalSize(327),
                                margin: getMargin(left: 10, top: 20, right: 10),
                                padding: getPadding(
                                    left: 8, top: 9, right: 8, bottom: 9),
                                decoration: BoxDecoration(
                                    color: ColorConstant.default_color,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
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
                                              labelColor: Color.fromARGB(
                                                  255, 25, 160, 84),
                                              labelStyle: TextStyle(
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w600),
                                              unselectedLabelColor:
                                                  Colors.white,
                                              unselectedLabelStyle: TextStyle(
                                                  fontSize: getFontSize(12),
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w600),
                                              indicator: BoxDecoration(
                                                  color: Colors.white,
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
                                                    child: Text("Rating",
                                                        overflow: TextOverflow
                                                            .ellipsis)),
                                                Tab(
                                                    child: Text("History",
                                                        overflow: TextOverflow
                                                            .ellipsis))
                                              ]))
                                    ])),
                            Container(
                                height: getVerticalSize(326),
                                child: TabBarView(
                                    controller: controller.layoutController,
                                    children: [
                                      //TransactionPage(),
                                      functionTransaction(context),
                                      functionRating(context),
                                      functionHistory(context)
                                    ]))
                          ])
                    ]))));
  }

  onTapArrowleft14() {
    Get.back();
  }
  onTapBtnEdit() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  functionTransaction(context) {
    return Container(
      child: Center(
        child: Text("Empty"),
      ),
    );
  }

  functionRating(context) {
    return Container(
      child: Center(
        child: Text(
          "Empty",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  functionHistory(context) {
    return Container(
      child: Center(
        child: Text(
          "Empty",
          style: TextStyle(color: Colors.green),
        ),
      ),
    );
  }
}

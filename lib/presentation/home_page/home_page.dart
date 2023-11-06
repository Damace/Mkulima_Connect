import '../home_page/widgets/category1_item_widget.dart';
import '../home_page/widgets/home_item_widget.dart';
import '../home_page/widgets/layout23_item_widget.dart';
import '../home_page/widgets/layout24_item_widget.dart';
import '../home_page/widgets/layout25_item_widget.dart';
import '../home_page/widgets/listtext_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/category1_item_model.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'models/layout23_item_model.dart';
import 'models/layout24_item_model.dart';
import 'models/layout25_item_model.dart';
import 'models/listtext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_circleimage.dart';
import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';
import 'package:mkulima_connect/widgets/custom_drop_down.dart';
import 'package:mkulima_connect/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                title: CustomDropDown(
                    width: getHorizontalSize(162),
                    focusNode: FocusNode(),
                    icon: Container(
                        margin: getMargin(left: 8, right: 16),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgArrowdown10x10)),
                    hintText: "msg_jakarta_indone".tr,
                    margin: getMargin(left: 24),
                    variant: DropDownVariant.OutlineBluegray50,
                    items: controller.homeModelObj.value.dropdownItemList.value,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 17, right: 8, bottom: 17),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgLocation1)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(50)),
                    onChanged: (value) {
                      controller.onSelected(value);
                    }),
                actions: [
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(left: 24),
                      color: ColorConstant.gray100,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: ColorConstant.gray100,
                              width: getHorizontalSize(1)),
                          borderRadius: BorderRadiusStyle.roundedBorder25),
                      child: Container(
                          height: getSize(50),
                          width: getSize(50),
                          padding: getPadding(
                              left: 13, top: 10, right: 13, bottom: 10),
                          decoration: AppDecoration.outlineGray1001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder25),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgNotification,
                                height: getSize(20),
                                width: getSize(20),
                                alignment: Alignment.center,
                                margin: getMargin(
                                    left: 2, top: 5, right: 2, bottom: 5)),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: getMargin(left: 12, bottom: 18),
                                    padding: getPadding(all: 3),
                                    decoration: AppDecoration.fillGray100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(6),
                                              width: getSize(6),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.redA200,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              3))))
                                        ])))
                          ]))),
                  AppbarCircleimage(
                      imagePath: ImageConstant.imgShape50x5011,
                      margin: getMargin(left: 8, right: 24))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 39),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(279),
                                  margin: getMargin(left: 3, right: 69),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_hey".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w500,
                                                letterSpacing:
                                                    getHorizontalSize(0.75))),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing:
                                                    getHorizontalSize(0.75))),
                                        TextSpan(
                                            text: "lbl_jonathan".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w800,
                                                letterSpacing:
                                                    getHorizontalSize(0.75))),
                                        TextSpan(
                                            text: "msg_let_s_start_exp".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w500,
                                                letterSpacing:
                                                    getHorizontalSize(0.75))),
                                        TextSpan(
                                            text: "lbl50".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(25),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w600,
                                                letterSpacing:
                                                    getHorizontalSize(0.75)))
                                      ]),
                                      textAlign: TextAlign.left)),
                              CustomSearchView(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.formsearchemptyController,
                                  hintText: "lbl_find_location".tr,
                                  margin:
                                      getMargin(left: 3, top: 13, right: 26),
                                  variant: SearchViewVariant.OutlineIndigo100b2,
                                  padding: SearchViewPadding.PaddingT26_1,
                                  fontStyle: SearchViewFontStyle
                                      .RalewayRegular12Indigo200,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 18,
                                          top: 27,
                                          right: 14,
                                          bottom: 28),
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgSearchBlack900)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(69)),
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 24,
                                          right: 11,
                                          bottom: 24),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgUpload)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(69))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(78),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 27),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .category1ItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            Category1ItemModel model =
                                                controller
                                                    .homeModelObj
                                                    .value
                                                    .category1ItemList
                                                    .value[index];
                                            return Category1ItemWidget(model);
                                          })))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(199),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 19),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .listtextItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            ListtextItemModel model = controller
                                                .homeModelObj
                                                .value
                                                .listtextItemList
                                                .value[index];
                                            return ListtextItemWidget(model,
                                                onTapItemPromotion: () {
                                              onTapItemPromotion();
                                            });
                                          })))),
                              Padding(
                                  padding: getPadding(top: 34, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_featured_estate".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.54))),
                                        Padding(
                                            padding:
                                                getPadding(top: 7, bottom: 2),
                                            child: Text("lbl_view_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold10IndigoA400
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.3))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(175),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 19),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .layout23ItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            Layout23ItemModel model = controller
                                                .homeModelObj
                                                .value
                                                .layout23ItemList
                                                .value[index];
                                            return Layout23ItemWidget(model);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 36, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_top_locations".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.54))),
                                        Padding(
                                            padding:
                                                getPadding(top: 7, bottom: 2),
                                            child: Text("lbl_explore".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold10IndigoA400
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.3))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(73),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 17),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(10));
                                          },
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .layout24ItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            Layout24ItemModel model = controller
                                                .homeModelObj
                                                .value
                                                .layout24ItemList
                                                .value[index];
                                            return Layout24ItemWidget(model);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 36, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_top_estate_agen".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRalewayBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.54))),
                                        Padding(
                                            padding:
                                                getPadding(top: 6, bottom: 3),
                                            child: Text("lbl_explore".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewaySemiBold10IndigoA400
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.3))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(107),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 17),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(15));
                                          },
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .layout25ItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            Layout25ItemModel model = controller
                                                .homeModelObj
                                                .value
                                                .layout25ItemList
                                                .value[index];
                                            return Layout25ItemWidget(model);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 36),
                                  child: Text("msg_explore_nearby".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.54)))),
                              Padding(
                                  padding: getPadding(top: 17, right: 24),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(232),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(7),
                                              crossAxisSpacing:
                                                  getHorizontalSize(7)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.homeModelObj.value
                                          .homeItemList.value.length,
                                      itemBuilder: (context, index) {
                                        HomeItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .homeItemList
                                            .value[index];
                                        return HomeItemWidget(model,
                                            onTapColumnshape: () {
                                          onTapColumnshape();
                                        });
                                      })))
                            ]))))));
  }

  onTapItemPromotion() {
    Get.toNamed(AppRoutes.promotionScreen);
  }

  onTapColumnshape() {
    Get.toNamed(
      AppRoutes.propertyDetailsScreen,
    );
  }
}

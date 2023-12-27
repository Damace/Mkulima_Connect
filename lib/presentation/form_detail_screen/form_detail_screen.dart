import '../form_detail_screen/widgets/layout1_item_widget.dart';
import '../form_detail_screen/widgets/layout3_item_widget.dart';
import 'controller/form_detail_controller.dart';
import 'models/layout1_item_model.dart';
import 'models/layout3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_title.dart';
import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_text_form_field.dart';

class FormDetailScreen extends GetWidget<FormDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 74,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 3, bottom: 3),
                    onTap: () {
                      onTapArrowleft7();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_add_listing".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 13, top: 11, right: 13, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(309),
                          margin: getMargin(left: 11, top: 40, right: 28),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_hi_josh_fill_d2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "lbl_real_estate".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.formPasswordController,
                          hintText: "lbl_the_lodge_house".tr,
                          margin: getMargin(left: 11, top: 39, right: 11),
                          fontStyle: TextFormFieldFontStyle
                              .RalewaySemiBold12Bluegray80001,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 25, right: 16, bottom: 25),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                          getHorizontalSize(50)),
                                      bottomRight: Radius.circular(
                                          getHorizontalSize(50)))),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMail)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(70))),
                      Padding(
                          padding: getPadding(left: 11, top: 36),
                          child: Text("lbl_listing_type".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.54)))),
                      Padding(
                          padding: getPadding(left: 10, top: 17),
                          child: Obx(() => Wrap(
                              runSpacing: getVerticalSize(5),
                              spacing: getHorizontalSize(5),
                              children: List<Widget>.generate(
                                  controller.formDetailModelObj.value
                                      .layout1ItemList.value.length, (index) {
                                Layout1ItemModel model = controller
                                    .formDetailModelObj
                                    .value
                                    .layout1ItemList
                                    .value[index];
                                return Layout1ItemWidget(model);
                              })))),
                      Padding(
                          padding: getPadding(left: 11, top: 35),
                          child: Text("msg_property_catego".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.54)))),
                      Padding(
                          padding: getPadding(left: 11, top: 17),
                          child: Obx(() => Wrap(
                              runSpacing: getVerticalSize(5),
                              spacing: getHorizontalSize(5),
                              children: List<Widget>.generate(
                                  controller.formDetailModelObj.value
                                      .layout3ItemList.value.length, (index) {
                                Layout3ItemModel model = controller
                                    .formDetailModelObj
                                    .value
                                    .layout3ItemList
                                    .value[index];
                                return Layout3ItemWidget(model);
                              })))),
                      CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getVerticalSize(1),
                          width: getHorizontalSize(100),
                          alignment: Alignment.center,
                          margin: getMargin(top: 82))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "lbl_next".tr,
                margin: getMargin(left: 24, right: 24, bottom: 24),
                onTap: () {
                  onTapNext();
                })));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.addLocationScreen,
    );
  }

  onTapArrowleft7() {
    Get.back();
  }
}

import '../add_photos_screen/widgets/gallery_item_widget.dart';
import 'controller/add_photos_controller.dart';
import 'models/gallery_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_title.dart';
import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';

import 'package:mkulima_connect/widgets/custom_button.dart';

class AddPhotosScreen extends GetWidget<AddPhotosController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 74,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 3, bottom: 3),
                    onTap: () {
                      onTapArrowleft9();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_add_listing".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(240),
                          margin: getMargin(top: 40, right: 86),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_add".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing:
                                            getHorizontalSize(0.75))),
                                TextSpan(
                                    text: "msg_photos_to_your_listing".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray80001,
                                        fontSize: getFontSize(25),
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: getHorizontalSize(0.75)))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(162),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(9),
                                      crossAxisSpacing: getHorizontalSize(9)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.addPhotosModelObj.value
                                  .galleryItemList.value.length,
                              itemBuilder: (context, index) {
                                GalleryItemModel model = controller
                                    .addPhotosModelObj
                                    .value
                                    .galleryItemList
                                    .value[index];
                                return GalleryItemWidget(model);
                              }))),
                      Spacer(),
                      CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: getVerticalSize(1),
                          width: getHorizontalSize(100),
                          alignment: Alignment.center)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(70),
                text: "lbl_next".tr,
                margin: getMargin(left: 25, right: 23, bottom: 24),
                onTap: () {
                  onTapNext();
                })));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.extraInformationScreen,
    );
  }

  onTapArrowleft9() {
    Get.back();
  }
}

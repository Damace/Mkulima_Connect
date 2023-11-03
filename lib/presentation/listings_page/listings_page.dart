import '../listings_page/widgets/listings_item_widget.dart';
import 'controller/listings_controller.dart';
import 'models/listings_item_model.dart';
import 'models/listings_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class ListingsPage extends StatelessWidget {
  ListingsController controller =
      Get.put(ListingsController(ListingsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 23,
                    top: 20,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 8,
                              bottom: 9,
                            ),
                            child: Text(
                              "lbl_302".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.54,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                              top: 10,
                              bottom: 7,
                            ),
                            child: Text(
                              "lbl_listings2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRalewayMedium18.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.54,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: getHorizontalSize(
                              93,
                            ),
                            padding: getPadding(
                              all: 8,
                            ),
                            decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgMenu,
                                  height: getSize(
                                    12,
                                  ),
                                  width: getSize(
                                    12,
                                  ),
                                  margin: getMargin(
                                    top: 6,
                                    bottom: 6,
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(
                                    left: 17,
                                  ),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder12,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      24,
                                    ),
                                    width: getHorizontalSize(
                                      36,
                                    ),
                                    padding: getPadding(
                                      left: 12,
                                      top: 6,
                                      right: 12,
                                      bottom: 6,
                                    ),
                                    decoration: AppDecoration.white.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder12,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgMenu12x12,
                                          height: getSize(
                                            12,
                                          ),
                                          width: getSize(
                                            12,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomIconButton(
                            height: 40,
                            width: 40,
                            margin: getMargin(
                              left: 10,
                            ),
                            variant: IconButtonVariant.FillIndigoA400,
                            shape: IconButtonShape.CircleBorder20,
                            padding: IconButtonPadding.PaddingAll16,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgPlus10x10,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: getPadding(
                          top: 20,
                        ),
                        child: Obx(
                          () => GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: getVerticalSize(
                                232,
                              ),
                              crossAxisCount: 2,
                              mainAxisSpacing: getHorizontalSize(
                                7,
                              ),
                              crossAxisSpacing: getHorizontalSize(
                                7,
                              ),
                            ),
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.listingsModelObj.value
                                .listingsItemList.value.length,
                            itemBuilder: (context, index) {
                              ListingsItemModel model = controller
                                  .listingsModelObj
                                  .value
                                  .listingsItemList
                                  .value[index];
                              return ListingsItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

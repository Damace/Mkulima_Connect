import '../notification_list_page/widgets/category_item_widget.dart';
import '../notification_list_page/widgets/list_item_widget.dart';
import 'controller/notification_list_controller.dart';
import 'models/category_item_model.dart';
import 'models/list_item_model.dart';
import 'models/notification_list_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

class NotificationListPage extends StatelessWidget {
  NotificationListController controller =
      Get.put(NotificationListController(NotificationListModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(
                            51,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    11,
                                  ),
                                );
                              },
                              itemCount: controller.notificationListModelObj
                                  .value.categoryItemList.value.length,
                              itemBuilder: (context, index) {
                                CategoryItemModel model = controller
                                    .notificationListModelObj
                                    .value
                                    .categoryItemList
                                    .value[index];
                                return CategoryItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 35,
                          ),
                          child: Text(
                            "lbl_today".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayBold18.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.54,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 17,
                            right: 24,
                          ),
                          child: Obx(
                            () => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    10,
                                  ),
                                );
                              },
                              itemCount: controller.notificationListModelObj
                                  .value.listItemList.value.length,
                              itemBuilder: (context, index) {
                                ListItemModel model = controller
                                    .notificationListModelObj
                                    .value
                                    .listItemList
                                    .value[index];
                                return ListItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 34,
                          ),
                          child: Text(
                            "msg_older_notificat".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayBold18.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.54,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 19,
                            right: 24,
                          ),
                          padding: getPadding(
                            all: 10,
                          ),
                          decoration: AppDecoration.fillGray100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder25,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: getSize(
                                  50,
                                ),
                                width: getSize(
                                  50,
                                ),
                                margin: getMargin(
                                  bottom: 38,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgShape50x504,
                                      height: getSize(
                                        50,
                                      ),
                                      width: getSize(
                                        50,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          25,
                                        ),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.blueGray700Af,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                        child: Container(
                                          height: getSize(
                                            18,
                                          ),
                                          width: getSize(
                                            18,
                                          ),
                                          padding: getPadding(
                                            left: 5,
                                            top: 3,
                                            right: 5,
                                            bottom: 3,
                                          ),
                                          decoration: AppDecoration
                                              .fillBluegray700af
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5,
                                          ),
                                          child: Stack(
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgText15,
                                                height: getVerticalSize(
                                                  10,
                                                ),
                                                width: getHorizontalSize(
                                                  8,
                                                ),
                                                alignment: Alignment.topCenter,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 8,
                                  bottom: 3,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_velma_cole".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRalewayBold12.copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.36,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        124,
                                      ),
                                      margin: getMargin(
                                        top: 8,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "msg_just_favorited2".tr,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray600,
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w500,
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.3,
                                                ),
                                              ),
                                            ),
                                            TextSpan(
                                              text: "msg_schoolview_hous".tr,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray80001,
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w700,
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.3,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 11,
                                      ),
                                      child: Text(
                                        "lbl_2_days_ago".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratRegular8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgShape50x602,
                                height: getVerticalSize(
                                  50,
                                ),
                                width: getHorizontalSize(
                                  60,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    14,
                                  ),
                                ),
                                margin: getMargin(
                                  bottom: 38,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

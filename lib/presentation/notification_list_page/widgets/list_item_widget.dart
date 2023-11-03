import '../controller/notification_list_controller.dart';
import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj);

  ListItemModel listItemModelObj;

  var controller = Get.find<NotificationListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 10,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShape50x501,
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
            margin: getMargin(
              bottom: 38,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 9,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listItemModelObj.senderTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRalewayBold12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.36,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    209,
                  ),
                  margin: getMargin(
                    top: 6,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_j".tr,
                          style: TextStyle(
                            color: ColorConstant.blueGray600,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: getHorizontalSize(
                              0.3,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "lbl_ust_messag".tr,
                          style: TextStyle(
                            color: ColorConstant.blueGray600,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: getHorizontalSize(
                              0.3,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "lbl_ed".tr,
                          style: TextStyle(
                            color: ColorConstant.blueGray600,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: getHorizontalSize(
                              0.3,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "msg_you_check_the".tr,
                          style: TextStyle(
                            color: ColorConstant.blueGray600,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: getHorizontalSize(
                              0.3,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "lbl_message".tr,
                          style: TextStyle(
                            color: ColorConstant.blueGray80001,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            letterSpacing: getHorizontalSize(
                              0.3,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: " ",
                          style: TextStyle(
                            color: ColorConstant.blueGray600,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            letterSpacing: getHorizontalSize(
                              0.3,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: "lbl_tab".tr,
                          style: TextStyle(
                            color: ColorConstant.blueGray600,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            letterSpacing: getHorizontalSize(
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
                    top: 9,
                  ),
                  child: Obx(
                    () => Text(
                      listItemModelObj.timeTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratRegular8,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

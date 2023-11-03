import '../controller/all_reviews_controller.dart';
import '../models/listshape2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mkulima_connect/core/app_export.dart';

// ignore: must_be_immutable
class Listshape2ItemWidget extends StatelessWidget {
  Listshape2ItemWidget(this.listshape2ItemModelObj);

  Listshape2ItemModel listshape2ItemModelObj;

  var controller = Get.find<AllReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: getPadding(
              left: 17,
              top: 10,
              right: 17,
              bottom: 10,
            ),
            decoration: AppDecoration.outlineBluegray50.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL25,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShape36x74,
                  height: getVerticalSize(
                    36,
                  ),
                  width: getHorizontalSize(
                    74,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      8,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 6,
                    bottom: 6,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "msg_fairview_apartm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayBold10.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.3,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgStar1,
                              height: getSize(
                                9,
                              ),
                              width: getSize(
                                9,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                              ),
                              child: Text(
                                "lbl_4_9".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold8,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgLocation2,
                              height: getSize(
                                9,
                              ),
                              width: getSize(
                                9,
                              ),
                              margin: getMargin(
                                left: 6,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 2,
                              ),
                              child: Text(
                                "msg_semarang_indon".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRalewayRegular8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: getPadding(
              top: 10,
              bottom: 10,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShape50x502,
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
                    bottom: 58,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                    bottom: 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "lbl_geraldo".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRalewayBold12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.36,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 141,
                              top: 2,
                              bottom: 2,
                            ),
                            child: RatingBar.builder(
                              initialRating: 0,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemSize: getVerticalSize(
                                10,
                              ),
                              itemCount: 5,
                              updateOnDrag: true,
                              onRatingUpdate: (rating) {},
                              itemBuilder: (context, _) {
                                return Icon(
                                  Icons.star,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: getHorizontalSize(
                          241,
                        ),
                        margin: getMargin(
                          top: 8,
                          right: 5,
                        ),
                        child: Text(
                          "msg_lorem_ipsum_dol4".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRegular10.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.3,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                        ),
                        child: Text(
                          "lbl_10_mins_ago".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular8,
                        ),
                      ),
                    ],
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

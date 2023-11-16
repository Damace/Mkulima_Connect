import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';

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
  final ProductController productController = Get.put(ProductController());
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Obx(
              () => controller.isLoading.value
                  ? Center(
                      child: CircularProgressIndicator(
                        color: ColorConstant.default_color,
                      ),
                    )
                  : Stack(children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  // image: AssetImage("assets/images/mclogo.png"),
                                  image:
                                      const AssetImage("assets/images/top.png"),
                                  fit: BoxFit.fill)),
                          child: Container(
                            padding: EdgeInsets.only(top: 60, left: 20),
                            color: ColorConstant.default_color.withOpacity(.3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "Mkulima",
                                        style: TextStyle(
                                            fontSize: 25,
                                            letterSpacing: 2,
                                            color: Colors.yellow),
                                        children: [
                                      TextSpan(
                                          text: " Konekt",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.yellow))
                                    ])),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Crops Buyers & Sellers Platform",
                                  style: TextStyle(
                                      letterSpacing: 1, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 138,
                        child: Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width - 40,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 15,
                                    spreadRadius: 5),
                              ]),
                          child: Column(
                            children: [
                              SizedBox(height: 28),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Container(
                                  height: getSize(52),
                                  width: double.infinity,
                                  decoration:
                                      BoxDecoration(color: Colors.transparent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                        // imagePath: ImageConstant.imgShape70x701,
                                        imagePath: ImageConstant.imageTma,
                                        height: getSize(
                                          50,
                                        ),
                                        width: getSize(
                                          100,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            8,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        // imagePath: ImageConstant.imgShape70x701,
                                        imagePath: ImageConstant.imageCrdb,
                                        height: getSize(
                                          50,
                                        ),
                                        width: getSize(
                                          100,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            8,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        // imagePath: ImageConstant.imgShape70x701,
                                        imagePath: ImageConstant.imageTfda,
                                        height: getSize(
                                          50,
                                        ),
                                        width: getSize(
                                          100,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            8,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 12),
                              TextButton(
                                onPressed: () {
                                  // Handle button press
                                  print('TextButton pressed');
                                },
                                child: Text(
                                  'Other Service Providers >>',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: ColorConstant.default_color
                                      .withOpacity(0.8),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 10.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.height - 570,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 245,
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(130),
                                        child: Obx(() => ListView.separated(
                                            padding: getPadding(top: 25),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(20));
                                            },
                                            itemCount: controller
                                                .homeModelObj
                                                .value
                                                .layout25ItemList
                                                .value
                                                .length,
                                            itemBuilder: (context, index) {
                                              Layout25ItemModel model =
                                                  controller
                                                      .homeModelObj
                                                      .value
                                                      .layout25ItemList
                                                      .value[index];
                                              return Layout25ItemWidget(model);
                                            })))),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                    padding: getPadding(bottom: 0, right: 124),
                                    child: Text("msg_explore_nearby".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.54)))),
                              ],
                            ),
                          )),
                      Positioned(
                          top: MediaQuery.of(context).size.height - 380,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 280,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 24, top: 0),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 17, right: 24),


                                                  child: ListView.builder(
                                                    itemCount: productController.productList.length,
                                                    itemBuilder: (context, index) {
                                                      return Column(
                                                        children: <Widget>[
                                                          Row(
                                                            children: [
                                                             Text(productController.productList[index].firstname),
                                                            
                                                            ],
                                                          )
                                                        ],
                                                      );
                                                      
                                                    },


                                                  )
                                                          )
                                            ])),
                                  ],
                                )),
                          ))
                    ]),
            )));
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

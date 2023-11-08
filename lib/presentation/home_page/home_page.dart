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
      body: Stack(children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    // image: AssetImage("assets/images/mclogo.png"),
                    image: const AssetImage("assets/images/top.png"),
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
                    style: TextStyle(letterSpacing: 1, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 145,
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
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height-550,
          left: 0,
          right: 0,
          child: Container(
          //  scrollDirection: Axis.vertical,
               // width: size.width,
                child: SingleChildScrollView(
                   scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                            padding: getPadding(left: 24, top: 25),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  
                                  Padding(
                                      padding: getPadding(top: 20, right: 24),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Crops Category",
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
                                          scrollDirection: Axis.vertical,
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
                                ])),
                      ],
                    ))
                            ),

        )
      ]),
    ));
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

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/controller/category_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';

class ServicesScreen extends StatelessWidget {
  final List<Item> items = [
    {"id": 1, "name": "Item 1"},
    {"id": 2, "name": "Item 2"},
    {"id": 3, "name": "Item 3"},
    {"id": 4, "name": "Item 4"},
    {"id": 5, "name": "Item 5"},
    {"id": 6, "name": "Item 6"},
  ].map((json) => Item.fromJson(json)).toList();

  CategoryController categoryController = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color.withOpacity(0),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      body: Stack(children: [
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
              // image: AssetImage("assets/images/mclogo.png"),
              image: const AssetImage("assets/images/top.jpeg"),
              fit: BoxFit.fill,
            )),
            child: Container(
              padding: EdgeInsets.only(top: 8, left: 20),
              color: ColorConstant.default_color.withOpacity(.3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.only(
                                    topEnd: Radius.circular(25),
                                    topStart: Radius.circular(25),
                                  ),
                                ),
                                builder: (context) => SingleChildScrollView(
                                  padding: EdgeInsetsDirectional.only(
                                    bottom: 0,
                                    top: 8,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                                color:
                                                    ColorConstant.default_color,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: ColorConstant
                                                          .default_color,
                                                      blurRadius: 10,
                                                      spreadRadius: 1),
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
                                              Icons.newspaper,
                                              color:
                                                  ColorConstant.default_color,
                                            ),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Marketing News / Crops Price",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Card(
                                        elevation: 0,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.category,
                                              color:
                                                  ColorConstant.default_color,
                                            ),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Agricultural Inputs",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Card(
                                        elevation: 0,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.info_rounded,
                                              color:
                                                  ColorConstant.default_color,
                                            ),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "More info",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              Platform.isAndroid
                                  ? Icons.more_vert
                                  : Icons.more_horiz,
                              color: Colors.white,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
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
          top: 120,
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width - 40,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: ColorConstant.default_color,
                      blurRadius: 15,
                      spreadRadius: 3),
                ]),
            child: Column(
              children: [
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: getSize(32),
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                        VerticalDivider(
                          color: ColorConstant.default_color,
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
                        VerticalDivider(
                          color: ColorConstant.default_color,
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
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    onTaOurpartners();

                    // Handle button press
                    print('TextButton pressed');
                  },
                  child: Text("Get More Services",
                      style: AppStyle.txtdefaultcolor
                          .copyWith(letterSpacing: getHorizontalSize(0.54))),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height - 600,
            left: 0,
            right: 0,
            child: Container(
              height: 245,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(left: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Category",
                              //overflow: TextOverflow.ellipsis,
                              // textAlign: TextAlign.left,
                              style: AppStyle.txtdefaultcolor.copyWith(
                                  letterSpacing: getHorizontalSize(0.54))),
                        ),
                      ),
                      Padding(
                        padding: getPadding(right: 15),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("More",
                              style: AppStyle.txtdefaultcolor.copyWith(
                                  letterSpacing: getHorizontalSize(0.54))),
                        ),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerRight,

//////////////////////////////////------------------------------------------------------

                      child: Container(
                          height: getVerticalSize(100),
                          child: ListView.separated(
                              padding: getPadding(top: 0),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(10));
                              },
                              itemCount: categoryController.categoryList.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    onTapCategory();
                                  },
                                  child: Card(
                                    margin: EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 80,
                                      height: 80, // Adjust the width as needed
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          CachedNetworkImage(
                                            alignment: Alignment.center,
                                            imageUrl: productController
                                                .productList[index].imageOne,
                                            // placeholder: (context, url) => CircularProgressIndicator(),
                                            // errorWidget: (context, url, error) => Icon(Icons.error),
                                            fit: BoxFit.fill,
                                            width: 50,
                                            height: 50,
                                          ),
                                          Text(categoryController
                                              .categoryList[index].image),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }))

                      ////////////////////////////////--------------------------------------------------------

                      ),
                  SizedBox(
                    height: getVerticalSize(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(left: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("msg_explore_nearby".tr,
                              //overflow: TextOverflow.ellipsis,
                              // textAlign: TextAlign.left,
                              style: AppStyle.txtdefaultcolor.copyWith(
                                  letterSpacing: getHorizontalSize(0.54))),
                        ),
                      ),
                      Padding(
                        padding: getPadding(right: 15),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("More",
                              style: AppStyle.txtdefaultcolor.copyWith(
                                  letterSpacing: getHorizontalSize(0.54))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height - 440,
            left: 0,
            right: 0,
            child: Container(
              height: 380,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                          padding: getPadding(left: 24, top: 0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 0, right: 24),
                                    child:

// ----------------------------------------------------------------------------------------------------------------------------------------------------

                                        Container(
                                            height: getVerticalSize(500),
                                            child: GridView(
                                              gridDelegate:
                                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                                maxCrossAxisExtent: 200,
                                                childAspectRatio: 1 / 1,
                                              ),
                                              children: [
                                                Card(
                                                  
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    side: BorderSide(color: ColorConstant.default_color)
                                                    
                                                   
                                                  ),
                                                  elevation: 10,
                                                  child: Text("daaaata"),
                                                   
                                                )
                                         
                                                // ...
                                              ],
                                            ))

//----------------------------------------------------------------------------------------------------------------------------------------------------
                                    )
                              ])),
                    ],
                  )),
            ))
      ]),
    );
  }

  onTapItemPromotion() {
    Get.toNamed(AppRoutes.promotionScreen);
  }

  onTapCategory() {
    Get.toNamed(
      AppRoutes.categorylist,
    );
  }

/*
  onTapColumnshape() {
    Get.toNamed(
      AppRoutes.propertyDetailsScreen,
    );
  }

  */

  onTaOurpartners() {
    Get.toNamed(
      AppRoutes.partnersList,
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;

  CategoryCard({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Container(
        width: 100.0, // Adjust the width as needed
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text(categoryName),
        ),
      ),
    );
  }
}

class Item {
  final int id;
  final String name;

  Item({required this.id, required this.name});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['name'],
    );
  }
}

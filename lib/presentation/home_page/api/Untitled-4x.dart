import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/controller/category_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';


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
          top: 120,
          child: Container(
            height: 150,
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
            top: MediaQuery.of(context).size.height - 550,
            left: 0,
            right: 0,
            child: Container(
              height: 600,
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
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount:
                                                    2, // Number of columns
                                              ),
                                              children: [
                                                Card(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 10,
                                                  child: Text("daaaata"),
                                                ),
                                                Card(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 10,
                                                  child: Text("daaaata"),
                                                ),
                                                Card(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 10,
                                                  child: Text("daaaata"),
                                                ),
                                                Card(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 10,
                                                  child: Text("daaaata"),
                                                ),
                                                Card(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 10,
                                                  child: Text("daaaata"),
                                                ),
                                                Card(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 10,
                                                  child: Text("daaaata"),
                                                ),
                                              ],
                                            ))

//----------------------------------------------------------------------------------------------------------------------------------------------------
                                    )
                              ])),
                    ],
                  )),
            )),
      ]),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
            color: ColorConstant.default_color,
            child: Text("                                                "),
          )
        ],
      ),
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

import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';
import 'package:mkulima_connect/presentation/property_details_screen/controller/property_details_controller.dart';
import 'package:mkulima_connect/presentation/property_details_screen/utils/color.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class PropertyDetailsScreen extends GetWidget<PropertyDetailsController> {
  Completer<GoogleMapController> googleMapController = Completer();
  ProductController productController = Get.put(ProductController());

  late Color myColor;
  late Size mediaSize;

  var products = Get.arguments;
  @override
  Widget build(BuildContext context) {
      myColor = Theme.of(context).primaryColor;

       SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
       preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor:ColorConstant.default_color,
           shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
          elevation: 0,
          leading:    IconButton(
              onPressed: () {
                 onTapBtnArrowleft();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            title: Text(products[0]),
            centerTitle: true,
        
          actions: [
         
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * .35,
              padding: const EdgeInsets.only(bottom: 0),
              width: double.infinity,
              // child: Image.asset('assets/images/main_image.png'),

              child:Banner(
                message: "New Product",
                location: BannerLocation.topStart,
                color: Colors.red,
                
                child: CachedNetworkImage(
                  alignment: Alignment.center,
                  imageUrl: products[1],
                  fit: BoxFit.fill,
                ),
              )),
          Expanded(
            child: Stack(
              children: [
                Container(
                  //height: 840,
                  padding: const EdgeInsets.only(top: 20, right: 14, left: 14),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                     
                    ),
                  ),

                
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              products[4],
                              style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              NumberFormat.currency(name: 'Tsh ')
                                  .format(int.parse(products[5])),
                              style: GoogleFonts.poppins(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order: ( 23 )",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            RatingBar.builder(
                                glowColor: ColorConstant.default_color,
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemSize: getVerticalSize(14),
                                itemCount: 5,
                                updateOnDrag: true,
                                onRatingUpdate: (rating) {},
                                itemBuilder: (context, _) {
                                  return Icon(Icons.star);
                                }),
                            Text(
                              "Rates :",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Text(
                          products[7],
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Supplier:   ",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              products[9],
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: getPadding(left: 0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Reviews",
                                    
                                        //overflow: TextOverflow.ellipsis,
                                        // textAlign: TextAlign.left,
                                        style: AppStyle.txtdefaultcolor
                                            .copyWith(letterSpacing:getHorizontalSize(0.54),
                                            fontSize: 16)),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(right: 0),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("More",
                                        style: AppStyle.txtdefaultcolor
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.54),
                                            fontSize: 16)),
                                  ),
                                ),
                              ],
                            ),
                        Text(
                          'Similar Category',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 110,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productController.productList.length,
                            itemBuilder: (BuildContext ctx,index) {
                                 final product_category =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .category;
                                                      final product_imgOne =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .imageOne;
                                                      final product_imgtwo =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .imageTwo;
                                                      final product_imhThree =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .imageThree;
                                                      final product_name =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .name;
                                                      final product_price =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .price;
                                                      final product_quantity =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .quantity;
                                                      final product_details =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .details;
                                                      final product_rate =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .rate;
                                                      final product_owner =
                                                          productController
                                                              .productList[
                                                                  index]
                                                              .owner;
                              
                              
                              return Container(
                              margin: const EdgeInsets.only(right: 6),
                              width: 110,
                              height: 110,
                              decoration: BoxDecoration(
                                color: AppColors.kSmProductBgColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child:  InkWell(
                                       onTap: () {
                                                          // onTapColumnshape();

                                                          Get.toNamed(
                                                              AppRoutes
                                                                  .categorylist,
                                                              arguments: [
                                                                product_category,
                                                                product_imgOne,
                                                                product_imgtwo,
                                                                product_imhThree,
                                                                product_name,
                                                                product_price,
                                                                product_quantity,
                                                                product_details,
                                                                product_rate,
                                                                product_owner
                                                              ]);
                                                        },
                                  child: CachedNetworkImage(
                                    alignment: Alignment.center,
                                    imageUrl: productController
                                        .productList[index].imageOne,
                                    fit: BoxFit.fill,
                                
                                    height: 100,
                                  ),
                                ),
                              ),
                            );
  }
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColors.kGreyColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.kGreyColor),
              ),
              child: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.red,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: InkWell(
                onTap: () {
                  //productController.addToCart();
                },
                child: ElevatedButton(
      onPressed: () {
           showModalBottomSheet(
                                          isScrollControlled: true,
                                          context: context,
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadiusDirectional.only(
                                              topEnd: Radius.circular(25),
                                              topStart: Radius.circular(25),
                                            ),
                                          ),
                                          builder: (context) =>
                                              SingleChildScrollView(
                                            padding: EdgeInsetsDirectional.only(
                                              bottom: 0,
                                              top: 8,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
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
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(10),
                                                          ),
                                                          color: ColorConstant
                                                              .default_color,
                                                          boxShadow: [
                                                            BoxShadow(
                                                                color: ColorConstant
                                                                    .default_color,
                                                                blurRadius: 10,
                                                                spreadRadius:
                                                                    1),
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
                                                        color: ColorConstant
                                                            .default_color,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Marketing News / Crops Price",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
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
                                                        color: ColorConstant
                                                            .default_color,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Agricultural Inputs",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
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
                                                        color: ColorConstant
                                                            .default_color,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "More info",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.default_color,
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: myColor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: const Text("Buy now"),
    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

    onTapBtnArrowleft() {
    Get.back();
  }


  onTapArrowleft23() {
    Get.back();
  }

  onTapBtnLocationOne() {
    Get.toNamed(
      AppRoutes.viewScreen,
    );
  }

  onTapViewallreviewsOne() {
    Get.toNamed(
      AppRoutes.reviewsScreen,
    );
  }
}

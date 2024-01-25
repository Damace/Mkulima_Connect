import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';
import 'package:mkulima_connect/presentation/home_page/home_page.dart';
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';
import 'package:mkulima_connect/presentation/my_cart/cart_page.dart';
import 'package:mkulima_connect/presentation/my_cart/controller/cartController.dart';
import 'package:mkulima_connect/presentation/property_details_screen/controller/property_details_controller.dart';
import 'package:mkulima_connect/presentation/property_details_screen/utils/color.dart';
import 'package:mkulima_connect/presentation/provider/cart_provider.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

// ignore_for_file: must_be_immutable
class PropertyDetailsScreen extends StatefulWidget {
  _PropertyDetailsScreen createState() => _PropertyDetailsScreen();
}

class _PropertyDetailsScreen extends State<PropertyDetailsScreen> {
  late Color myColor;
  late Size mediaSize;

  var index = Get.arguments['index'];

  Completer<GoogleMapController> googleMapController = Completer();
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Product details",
              style: TextStyle(fontSize: 14),
            ),
            backgroundColor: ColorConstant.default_color,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.sell_rounded),
                  text: "Product",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Seller",
                ),
                Tab(
                  icon: Icon(Icons.newspaper),
                  text: "Review",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              productDetails(context),
              Center(
                child: Text("Settings"),
              ),
              Center(
                child: Text("Settings"),
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
                Consumer<CartProvider>(
                  builder: (context, cartProvider, child) {
                    return InkWell(
                      onTap: () {
                        Get.to(CartPage());
                      },
                      child: Badge(
                        alignment: Alignment.bottomRight,
                        label:
                            Obx(() => Text(productController.count.toString())),
                        child: IconButton(
                          color: ColorConstant.default_color,
                          icon: const Icon(
                            Icons.shopping_cart,
                            size: 32,
                          ),
                          onPressed: () {
                            Get.toNamed(
                              AppRoutes.cart_page,
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
                Obx(() => productController.cartList.contains(index)
                    ? Expanded(
                        child: Padding(
                          padding: getPadding(right: 10, left: 10),
                          child: InkWell(
                            onTap: () {
                              //productController.addToCart();
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                productController.removeFromCart(index);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: const StadiumBorder(),
                                elevation: 20,
                                shadowColor: myColor,
                                minimumSize: const Size.fromHeight(60),
                              ),
                              child: const Text(
                                "Remove from Cart",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Padding(
                          padding: getPadding(right: 10, left: 10),
                          child: InkWell(
                            onTap: () {
                              //productController.addToCart();
                            },
                            child: ElevatedButton(
                              onPressed: () {
                                productController.addToCart(index);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorConstant.default_color,
                                shape: const StadiumBorder(),
                                elevation: 20,
                                shadowColor: myColor,
                                minimumSize: const Size.fromHeight(60),
                              ),
                              child: const Text(
                                "Add to Cart",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ))
              ],
            ),
          )),
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

  productDetails(context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                    // color: Colors.red,
                    height: MediaQuery.of(context).size.height * 1.05,
                    // height: 80,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(top: 20),
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * .35,
                                  padding: const EdgeInsets.only(bottom: 0),
                                  width: double.infinity,
                                  // child: Image.asset('assets/images/main_image.png'),

                                  child: Banner(
                                    message: "New Product",
                                    location: BannerLocation.topStart,
                                    color: Colors.red,
                                    child: CachedNetworkImage(
                                      alignment: Alignment.center,
                                      imageUrl: Get.arguments['imageUrl'],
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    //height: 840,
                                    padding: const EdgeInsets.only(
                                        top: 20, right: 14, left: 14),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(),
                                    ),

                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                Get.arguments['name'],
                                                style: GoogleFonts.poppins(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                NumberFormat.currency(
                                                        name: 'Tsh ')
                                                    .format(
                                                        Get.arguments['price']),
                                                style: GoogleFonts.poppins(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Order: ( 23 )",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              RatingBar.builder(
                                                  glowColor: ColorConstant
                                                      .default_color,
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
                                            "eMPTY",
                                            style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Supplier:   ",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              Text(
                                                "products[9]",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: getPadding(left: 0),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text("Reviews",

                                                      //overflow: TextOverflow.ellipsis,
                                                      // textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtdefaultcolor
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.54),
                                                              fontSize: 16)),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(right: 0),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text("More",
                                                      style: AppStyle
                                                          .txtdefaultcolor
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.54),
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
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: productController
                                                    .productList.length,
                                                itemBuilder:
                                                    (BuildContext ctx, index) {
                                                  return Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            right: 6),
                                                    width: 110,
                                                    height: 110,
                                                    decoration: BoxDecoration(
                                                      color: AppColors
                                                          .kSmProductBgColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Center(
                                                      child: InkWell(
                                                        onTap: () {
                                                          // onTapColumnshape();
                                                        },
                                                        child:
                                                            CachedNetworkImage(
                                                          alignment:
                                                              Alignment.center,
                                                          imageUrl:
                                                              productController
                                                                  .productList[
                                                                      index]
                                                                  .imageUrl,
                                                          fit: BoxFit.fill,
                                                          height: 100,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }),
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
                        ))))));
  }
}

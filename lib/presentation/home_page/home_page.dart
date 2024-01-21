import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:mkulima_connect/presentation/home_page/controller/category_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/items_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/my_cart/cart_page.dart';
import 'package:mkulima_connect/presentation/productListView/productList_screen.dart';
import 'package:mkulima_connect/presentation/property_details_screen/property_details_screen.dart';
import 'package:mkulima_connect/presentation/provider/cart_provider.dart';
import 'package:mkulima_connect/presentation/services/services.dart';
import 'package:provider/provider.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<HomePage> {
  // CategoryController categoryController = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());
  // ItemController itemController = Get.put(ItemController());

  bool isVisible = true;

  // get product => null;

  static get product => null;

  late Color myColor;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;

    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Obx(() => productController.productList.isNotEmpty
        ? Scaffold(
            backgroundColor: ColorConstant.default_color,
            body: ListView(
                //scrollDirection: Axis.vertical,

                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 18, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: TextField(
                                onTap: () {},
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    hintText: "Search..",
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.white))),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Consumer<CartProvider>(
                              builder: (context, cartProvider, child) {
                                return InkWell(
                                  onTap: () {
                                    Get.to(CartPage());
                                  },
                                  child: Badge(
                                    alignment: Alignment.bottomRight,
                                    label: Obx(() => Text(
                                        productController.count.toString())),
                                    child: IconButton(
                                      color: Colors.white,
                                      icon: const Icon(Icons.shopping_cart),
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
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      CarouselSlider(
                        items: [
                          // buildImage('https://example.com/image1.jpg'),
                          //buildImage('https://example.com/image2.jpg'),
                          //buildImage('https://example.com/image3.jpg'),

                          buildImage('assets/images/top4.png'),
                          buildImage('assets/images/top5.png'),
                          buildImage('assets/images/top4.png'),

                          // Your carousel items go here (e.g., Image.network, Container, etc.)
                          // Image.network('https://example.com/image1.jpg'),
                          //Image.network('https://example.com/image2.jpg'),
                          //Image.network('https://example.com/image3.jpg'),
                        ],
                        options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          viewportFraction: 1.0,
                          autoPlay:
                              true, // Set to true for auto-playing the carousel
                          autoPlayInterval: Duration(seconds: 5),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          onPageChanged: (index, reason) {
                            // Callback when the page changes
                          },
                          scrollDirection: Axis
                              .horizontal, // Set to Axis.vertical for vertical carousel
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.035,

                                // height: MediaQuery.of(context).size.height * 0.09,
                                // width: MediaQuery.of(context).size.width * 1.00,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, left: 18.0, right: 18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Category",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: ColorConstant.default_color),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.12,
                                    width: MediaQuery.of(context).size.width *
                                        1.00,
                                    color: Colors.white,
                                    child: Container(
                                      height:
                                          20.0, // Set the height of the card container
                                      child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Card(
                                                  color: ColorConstant
                                                      .default_color,
                                                  shadowColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusDirectional
                                                              .only(
                                                        topEnd:
                                                            Radius.circular(15),
                                                        topStart:
                                                            Radius.circular(15),
                                                        bottomEnd:
                                                            Radius.circular(15),
                                                        bottomStart:
                                                            Radius.circular(15),
                                                      ),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 4,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.18,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.195,
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image(
                                                            image: const AssetImage(
                                                                "assets/images/market.png"),
                                                            height: 40,
                                                            width: 40,
                                                            // fit: BoxFit.cover,
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            "Mahindi",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Card(
                                                  color: ColorConstant
                                                      .default_color,
                                                  shadowColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusDirectional
                                                              .only(
                                                        topEnd:
                                                            Radius.circular(15),
                                                        topStart:
                                                            Radius.circular(15),
                                                        bottomEnd:
                                                            Radius.circular(15),
                                                        bottomStart:
                                                            Radius.circular(15),
                                                      ),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 4,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.18,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.195,
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image(
                                                            image: const AssetImage(
                                                                "assets/images/market.png"),
                                                            height: 40,
                                                            width: 40,
                                                            // fit: BoxFit.cover,
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            "Mahindi",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Card(
                                                  color: ColorConstant
                                                      .default_color,
                                                  shadowColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusDirectional
                                                              .only(
                                                        topEnd:
                                                            Radius.circular(15),
                                                        topStart:
                                                            Radius.circular(15),
                                                        bottomEnd:
                                                            Radius.circular(15),
                                                        bottomStart:
                                                            Radius.circular(15),
                                                      ),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 4,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.18,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.195,
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image(
                                                            image: const AssetImage(
                                                                "assets/images/market.png"),
                                                            height: 40,
                                                            width: 40,
                                                            // fit: BoxFit.cover,
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            "Mahindi",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Card(
                                                  color: ColorConstant
                                                      .default_color,
                                                  shadowColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusDirectional
                                                              .only(
                                                        topEnd:
                                                            Radius.circular(15),
                                                        topStart:
                                                            Radius.circular(15),
                                                        bottomEnd:
                                                            Radius.circular(15),
                                                        bottomStart:
                                                            Radius.circular(15),
                                                      ),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 4,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.18,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.195,
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image(
                                                            image: const AssetImage(
                                                                "assets/images/market.png"),
                                                            height: 40,
                                                            width: 40,
                                                            // fit: BoxFit.cover,
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            "Mahindi",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Card(
                                                  color: ColorConstant
                                                      .default_color,
                                                  shadowColor: Colors.grey,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusDirectional
                                                              .only(
                                                        topEnd:
                                                            Radius.circular(15),
                                                        topStart:
                                                            Radius.circular(15),
                                                        bottomEnd:
                                                            Radius.circular(15),
                                                        bottomStart:
                                                            Radius.circular(15),
                                                      ),
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .default_color)),
                                                  elevation: 4,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.18,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.195,
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image(
                                                            image: const AssetImage(
                                                                "assets/images/market.png"),
                                                            height: 40,
                                                            width: 40,
                                                            // fit: BoxFit.cover,
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            "Mahindi",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            ),
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                thickness: 0.2,
                                color: ColorConstant.default_color,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.045,

                                // height: MediaQuery.of(context).size.height * 0.09,
                                // width: MediaQuery.of(context).size.width * 1.00,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, right: 18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Best selling",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: ColorConstant.default_color),
                                      ),
                                      Text("More",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color:
                                                  ColorConstant.default_color)),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                width: double.infinity,
                                //height: 600,
                                height: MediaQuery.of(context).size.height,

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GridView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 85.0,
                                      ),
                                      itemCount:
                                          productController.productList.length,
                                      itemBuilder: (context, index) {
                                        return GridTile(
                                          child: InkWell(
                                            onTap: () {
                                              Get.to(PropertyDetailsScreen(),
                                                  arguments: {
                                                    "imageUrl":
                                                        productController
                                                            .productList[index]
                                                            .imageUrl,
                                                    "name": productController
                                                        .productList[index]
                                                        .name,
                                                    "price": productController
                                                        .productList[index]
                                                        .price,
                                                    "index": productController
                                                        .productList[index]
                                                  },
                                                  duration:
                                                      Duration(seconds: 1),
                                                  transition: Transition
                                                      .rightToLeft //transition effect
                                                  );
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4, right: 4),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            productController
                                                                .productList[
                                                                    index]
                                                                .imageUrl,
                                                        //height: 150,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.185,
                                                        width: double.infinity,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(255,
                                                              242, 243, 244),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8))),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: [
                                                            Text(
                                                              productController
                                                                  .productList[
                                                                      index]
                                                                  .name,
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                              // productController
                                                              //     .productList[index].name,
                                                              "Mahindi Kutoka mbeya yanapatikana kwenye wilaya za chunya na tukuyu",

                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                              productController
                                                                  .productList[
                                                                      index]
                                                                  .category,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                            ),
                                                            SizedBox(height: 5),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      size: 12,
                                                                      color: Colors
                                                                          .orange,
                                                                    ),
                                                                    Text(
                                                                        "(4/5)")
                                                                  ],
                                                                ),
                                                                Text(
                                                                  NumberFormat.currency(
                                                                          name:
                                                                              'Tsh ')
                                                                      .format(productController
                                                                          .productList[
                                                                              index]
                                                                          .price),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ],
                                                            )
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
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
            bottomNavigationBar: BottomNavigationBar(
              elevation: 50,
              backgroundColor: ColorConstant.whiteA700,
              selectedLabelStyle: TextStyle(color: ColorConstant.default_color),
              unselectedLabelStyle:
                  TextStyle(color: ColorConstant.default_color),
              items: [
                BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () {
                        Get.to(ServicesScreen(),
                            duration: Duration(seconds: 1),
                            transition:
                                Transition.rightToLeft //transition effect
                            );
                      },
                      child: Icon(
                        Icons.home,
                        color: ColorConstant.default_color,
                      ),
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: InkWell(
                      child: Badge(
                        label: Text("0"),
                        child: Icon(
                          Icons.notification_important_rounded,
                          color: ColorConstant.default_color,
                        ),
                      ),
                    ),
                    label: 'Notification'),
                BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.transactionTabContainerPage);
                      },
                      child: Icon(
                        Icons.person_3_rounded,
                        color: ColorConstant.default_color,
                      ),
                    ),
                    label: 'My Account'),
              ],
            ))
        : Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Text(" Is EMpty "),
            )));
  }

  Widget buildImage(String imageUrl) {
    return Container(
      margin: EdgeInsets.all(0), // Set margin to 0
      padding: EdgeInsets.all(0), // Set padding to 0
      child: ClipRRect(
        borderRadius:
            BorderRadius.all(Radius.circular(0)), // Set border radius to 0

        /*
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),x`
        */

        child: Image.asset(
          imageUrl,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
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

  buildCard(String cardImage, String region) {
    return Container(
      width: 280.0, // Set the width of each card
      margin: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 15,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    cardImage,
                    height: 80,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: ColorConstant.default_color,
                      ),
                      Text("$region \n Tanzania")
                    ],
                  ),
                  Divider()
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'Wakulima wa Tanzania',
                style: TextStyle(fontSize: 20),
              ),
              trailing: const Text(
                '',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: SizedBox(
                height: 50,
                child: Text(
                  "Wameaswa kutumia Mbolea zilizo fanyiwa tafiti na Wataalamu wa Kilimo kutoka ndani ya nchi, Pamoja na Pembejeo bora za Kilimo",
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          ],
        ),
      ),
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

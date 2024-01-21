import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_container_screen/home_container_screen.dart';
import 'package:mkulima_connect/presentation/home_page/controller/category_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';
import 'package:mkulima_connect/presentation/home_page/home_page.dart';
import 'package:mkulima_connect/presentation/my_cart/cart_page.dart';
import 'package:mkulima_connect/presentation/provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServicesScreen extends StatelessWidget {
  CategoryController categoryController = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());
  TextEditingController _searchController = TextEditingController();

  bool isVisible = true;

  late Color myColor;
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color.withOpacity(0),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: myColor,
        image: DecorationImage(
          image: const AssetImage("assets/images/bg.png"),
          fit: BoxFit.fill,
          colorFilter:
              ColorFilter.mode(myColor.withOpacity(0.4), BlendMode.dstATop),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.default_color.withOpacity(0.6),
        body: Container(
          child: Stack(children: [
            Positioned(
                top: MediaQuery.of(context).size.height * 0.0,
                right: 0,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.26,
                  child: CarouselSlider(
                    items: [
                      // buildImage('https://example.com/image1.jpg'),
                      //buildImage('https://example.com/image2.jpg'),
                      //buildImage('https://example.com/image3.jpg'),

                      buildImage('assets/images/top.png'),
                      buildImage('assets/images/top2.png'),
                      buildImage('assets/images/top3.png'),

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
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      onPageChanged: (index, reason) {
                        // Callback when the page changes
                      },
                      scrollDirection: Axis
                          .horizontal, // Set to Axis.vertical for vertical carousel
                    ),
                  ),
                )),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.01,
              right: 0,
              left: 0,
              child: Container(
                // height: 220,
                height: MediaQuery.of(context).size.height * 0.19,
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "MKULIMA",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  fontFamily:
                                      GoogleFonts.montserrat().fontFamily,
                                  letterSpacing: 2,
                                  color: Colors.yellow),
                              children: [
                            TextSpan(
                                text: " KONEKT",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily:
                                        GoogleFonts.montserrat().fontFamily,
                                    color: Colors.yellow))
                          ])),
                      SizedBox(
                        height: 1,
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
              //top: 90,
              top: MediaQuery.of(context).size.height * 0.12,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width * 0.95,
                margin: EdgeInsets.symmetric(horizontal: 10),
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        height: getSize(32),
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.agriculture_outlined,
                                size: 25,
                                color: ColorConstant.default_color,
                                // semanticLabel: 'Shop now',
                              ),
                            ),
                            VerticalDivider(
                              thickness: 2.5,
                              color: ColorConstant.default_color,
                            ),
                            InkWell(
                              child: Icon(
                                Icons.sunny_snowing,
                                size: 25,
                                color: ColorConstant.default_color,
                              ),
                            ),
                            VerticalDivider(
                              thickness: 2.5,
                              color: ColorConstant.default_color,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(HomePage(), //next page class
                                    duration: Duration(
                                        seconds:
                                            1), //duration of transitions, default 1 sec
                                    transition: Transition
                                        .rightToLeft //transition effect
                                    );
                              },
                              child: Consumer<CartProvider>(
                                builder: (context, cartProvider, child) {
                                  return InkWell(
                                    onTap: () {
                                      Get.to(CartPage());
                                    },
                                    child: Badge(
                                      alignment: Alignment.centerRight,
                                      label: Obx(() => Text(
                                          productController.count.toString())),
                                      child: IconButton(
                                        color: ColorConstant.default_color,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 35, left: 35),
                        child: Card(
                          color: ColorConstant.default_color,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: ColorConstant.default_color, width: 2.0),
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(15),
                              topStart: Radius.circular(15),
                              bottomEnd: Radius.circular(15),
                              bottomStart: Radius.circular(15),
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {
                                Get.toNamed(
                                  AppRoutes.cart_page,
                                );
                              },
                              child: Text(
                                "Get more Services >>",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                //top: MediaQuery.of(context).size.height - 580,
                top: MediaQuery.of(context).size.height * 0.33,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(100),
                      )),
                  // height: 700,
                  height: MediaQuery.of(context).size.height * 0.8,

                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(children: [
                        Padding(
                          padding: getPadding(left: 15, top: 15, right: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Category",
                                style: TextStyle(
                                    color: ColorConstant.default_color,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "More",
                                style: TextStyle(
                                    color: ColorConstant.default_color,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                            padding: getPadding(left: 24, top: 0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 5, right: 24),
                                      child:

                                          // ----------------------------------------------------------------------------------------------------------------------------------------------------

                                          Container(
                                              height: getVerticalSize(250),
                                              decoration: BoxDecoration(
                                                  color: Colors.white),
                                              child: GridView(
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 3,
                                                        mainAxisSpacing:
                                                            0 // Number of columns
                                                        ),
                                                children: [
                                                  Column(
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            context: context,
                                                            backgroundColor:
                                                                Colors.white,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusDirectional
                                                                      .only(
                                                                topEnd: Radius
                                                                    .circular(
                                                                        25),
                                                                topStart: Radius
                                                                    .circular(
                                                                        25),
                                                              ),
                                                            ),
                                                            builder: (context) =>
                                                                SingleChildScrollView(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .only(
                                                                bottom: 0,
                                                                top: 0,
                                                              ),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          10),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.all(
                                                                              Radius.circular(10),
                                                                            ),
                                                                            color: ColorConstant.default_color,
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                color: ColorConstant.default_color,
                                                                                blurRadius: 3,
                                                                              ),
                                                                            ]),
                                                                        child: Text(
                                                                            "                            "),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Card(
                                                                    elevation:
                                                                        0,
                                                                    child: Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .newspaper,
                                                                          color:
                                                                              Colors.grey,
                                                                        ),
                                                                        TextButton(
                                                                            onPressed:
                                                                                () {},
                                                                            child:
                                                                                Text(
                                                                              "Uwezeshaji",
                                                                              style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                            ))
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Divider(),
                                                                  Card(
                                                                    elevation:
                                                                        0,
                                                                    child: Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .category,
                                                                          color:
                                                                              Colors.grey,
                                                                        ),
                                                                        TextButton(
                                                                            onPressed:
                                                                                () {},
                                                                            child:
                                                                                Text(
                                                                              "Uunganishaji",
                                                                              style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                            ))
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Card(
                                                            color: ColorConstant
                                                                .default_color,
                                                            shadowColor:
                                                                Colors.grey,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadiusDirectional
                                                                            .only(
                                                                      topEnd: Radius
                                                                          .circular(
                                                                              15),
                                                                      topStart:
                                                                          Radius.circular(
                                                                              15),
                                                                      bottomEnd:
                                                                          Radius.circular(
                                                                              15),
                                                                      bottomStart:
                                                                          Radius.circular(
                                                                              15),
                                                                    ),

                                                                    // --------------------------------------------------------------------------------------------------------------------------

                                                                    side: BorderSide(
                                                                        color: ColorConstant
                                                                            .default_color)),
                                                            elevation: 4,
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.18,
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.18,
                                                              child: Center(
                                                                child: Image(
                                                                  image: const AssetImage(
                                                                      "assets/images/info.png"),
                                                                  height: 50,
                                                                  width: 50,
                                                                  // fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                            )),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            "Huduma",
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .default_color,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          right: 10,
                                                          bottom: 20),
                                                      child: Column(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                context:
                                                                    context,
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusDirectional
                                                                          .only(
                                                                    topEnd: Radius
                                                                        .circular(
                                                                            25),
                                                                    topStart: Radius
                                                                        .circular(
                                                                            25),
                                                                  ),
                                                                ),
                                                                builder:
                                                                    (context) =>
                                                                        SingleChildScrollView(
                                                                  padding:
                                                                      EdgeInsetsDirectional
                                                                          .only(
                                                                    bottom: 0,
                                                                    top: 8,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
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
                                                                                color: ColorConstant.default_color,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    color: ColorConstant.default_color,
                                                                                    blurRadius: 3,
                                                                                  ),
                                                                                ]),
                                                                            child:
                                                                                Text("                            "),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.sunny_snowing,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Kilimo, Uzalishaji, Ufugaji na Uvuvi",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.agriculture_sharp,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Ujasilia Mali",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Card(
                                                                color: ColorConstant
                                                                    .default_color,
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape:
                                                                    RoundedRectangleBorder(
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
                                                                            color:
                                                                                ColorConstant.default_color)),
                                                                elevation: 4,
                                                                child: Container(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/education.png"),
                                                                      height:
                                                                          50,
                                                                      width: 50,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Elimu / Taarifa",
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .default_color,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ) //Text("Taarifa za Kilimo"),
                                                      ),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          right: 10,
                                                          bottom: 20),
                                                      child: Column(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                context:
                                                                    context,
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusDirectional
                                                                          .only(
                                                                    topEnd: Radius
                                                                        .circular(
                                                                            25),
                                                                    topStart: Radius
                                                                        .circular(
                                                                            25),
                                                                  ),
                                                                ),
                                                                builder:
                                                                    (context) =>
                                                                        SingleChildScrollView(
                                                                  padding:
                                                                      EdgeInsetsDirectional
                                                                          .only(
                                                                    bottom: 0,
                                                                    top: 8,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
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
                                                                                color: ColorConstant.default_color,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    color: ColorConstant.default_color,
                                                                                    blurRadius: 3,
                                                                                  ),
                                                                                ]),
                                                                            child:
                                                                                Text("                            "),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.account_tree_outlined,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Uzalishaji",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.agriculture_sharp,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Uchakataji",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.business,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Uhifadhi",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                         Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.business,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Usafirishaji",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Card(
                                                                color: ColorConstant
                                                                    .default_color,
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape:
                                                                    RoundedRectangleBorder(
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
                                                                            color:
                                                                                ColorConstant.default_color)),
                                                                elevation: 4,
                                                                child: Container(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/fund.png"),
                                                                      height:
                                                                          50,
                                                                      width: 50,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Value Chain",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .default_color,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ) //Text("Taarifa za Kilimo"),
                                                      ),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          right: 10,
                                                          bottom: 20),
                                                      child: Column(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                context:
                                                                    context,
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusDirectional
                                                                          .only(
                                                                    topEnd: Radius
                                                                        .circular(
                                                                            25),
                                                                    topStart: Radius
                                                                        .circular(
                                                                            25),
                                                                  ),
                                                                ),
                                                                builder:
                                                                    (context) =>
                                                                        SingleChildScrollView(
                                                                  padding:
                                                                      EdgeInsetsDirectional
                                                                          .only(
                                                                    bottom: 0,
                                                                    top: 8,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
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
                                                                                color: ColorConstant.default_color,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    color: ColorConstant.default_color,
                                                                                    blurRadius: 3,
                                                                                  ),
                                                                                ]),
                                                                            child:
                                                                                Text("                            "),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.category_outlined,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {
                                                                                 // pembejeo();
                                                                                },
                                                                                child: Text(
                                                                                  "Ndani",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.ac_unit,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Nnje",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Card(
                                                                color: ColorConstant
                                                                    .default_color,
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape:
                                                                    RoundedRectangleBorder(
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
                                                                            color:
                                                                                ColorConstant.default_color)),
                                                                elevation: 4,
                                                                child: Container(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/categories.png"),
                                                                      height:
                                                                          40,
                                                                      width: 40,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Zabuni",
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .default_color,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ) //Text("Taarifa za Kilimo"),
                                                      ),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          right: 10,
                                                          bottom: 20),
                                                      child: Column(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                context:
                                                                    context,
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusDirectional
                                                                          .only(
                                                                    topEnd: Radius
                                                                        .circular(
                                                                            25),
                                                                    topStart: Radius
                                                                        .circular(
                                                                            25),
                                                                  ),
                                                                ),
                                                                builder:
                                                                    (context) =>
                                                                        SingleChildScrollView(
                                                                  padding:
                                                                      EdgeInsetsDirectional
                                                                          .only(
                                                                    bottom: 0,
                                                                    top: 8,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
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
                                                                                color: ColorConstant.default_color,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    color: ColorConstant.default_color,
                                                                                    blurRadius: 3,
                                                                                  ),
                                                                                ]),
                                                                            child:
                                                                                Text("                            "),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.add_business_outlined,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Aina ya Masoko",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.add_chart,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Bei za Mazao",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),

                                                                            Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.add_chart,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Wateja Wakubwa",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),

                                                                      
                                                                            Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.add_chart,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Wauzaji / Wanunuzi",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Card(
                                                                color: ColorConstant
                                                                    .default_color,
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape:
                                                                    RoundedRectangleBorder(
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
                                                                            color:
                                                                                ColorConstant.default_color)),
                                                                elevation: 4,
                                                                child: Container(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/market.png"),
                                                                      height:
                                                                          40,
                                                                      width: 40,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Masoko",
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .default_color,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ) //Text("Taarifa za Kilimo"),
                                                      ),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          right: 10,
                                                          bottom: 20),
                                                      child: Column(
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                context:
                                                                    context,
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusDirectional
                                                                          .only(
                                                                    topEnd: Radius
                                                                        .circular(
                                                                            25),
                                                                    topStart: Radius
                                                                        .circular(
                                                                            25),
                                                                  ),
                                                                ),
                                                                builder:
                                                                    (context) =>
                                                                        SingleChildScrollView(
                                                                  padding:
                                                                      EdgeInsetsDirectional
                                                                          .only(
                                                                    bottom: 0,
                                                                    top: 8,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
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
                                                                                color: ColorConstant.default_color,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    color: ColorConstant.default_color,
                                                                                    blurRadius: 3,
                                                                                  ),
                                                                                ]),
                                                                            child:
                                                                                Text("                            "),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.price_change_outlined,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Bidhaa",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.person_pin_circle_rounded,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Wanunuzi",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.person_pin_circle_outlined,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  "Wanunuzi",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(),
                                                                      Card(
                                                                        elevation:
                                                                            0,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Icon(
                                                                              Icons.sell,
                                                                              color: Colors.grey,
                                                                            ),
                                                                            TextButton(
                                                                                onPressed: () {
                                                                                  //buySell();
                                                                                },
                                                                                child: Text(
                                                                                  "Wauzajaji",
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstant.default_color),
                                                                                ))
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            child: Card(
                                                                color: ColorConstant
                                                                    .default_color,
                                                                shadowColor:
                                                                    const Color
                                                                        .fromRGBO(
                                                                        158,
                                                                        158,
                                                                        158,
                                                                        1),
                                                                shape:
                                                                    RoundedRectangleBorder(
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
                                                                            color:
                                                                                ColorConstant.default_color)),
                                                                elevation: 4,
                                                                child: Container(
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.18,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/shopping.png"),
                                                                      height:
                                                                          40,
                                                                      width: 40,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Kununua",
                                                                style: TextStyle(
                                                                    color: ColorConstant
                                                                        .default_color,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ) //Text("Taarifa za Kilimo"),
                                                      ),
                                                ],
                                              ))

                                      //----------------------------------------------------------------------------------------------------------------------------------------------------
                                      )
                                ])),
                        Padding(
                          padding: getPadding(left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "News and Events",
                                style: TextStyle(
                                    color: ColorConstant.default_color,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 200.0, // Set the height of the card container
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              buildCard('assets/images/top3.png', 'Shinyanga'),
                              buildCard('assets/images/top.png', 'Dodoma'),
                              buildCard('assets/images/top.jpg', 'Mbeya'),
                            ],
                          ),
                        ),
                      ])),
                )),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          backgroundColor: ColorConstant.whiteA700,
          selectedLabelStyle: TextStyle(color: ColorConstant.default_color),
          unselectedLabelStyle: TextStyle(color: ColorConstant.default_color),
          items: [
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    // Get.to(HomePage(),
                    //     duration: Duration(seconds: 1),
                    //     transition: Transition.rightToLeft //transition effect
                    //     );

                    Get.to(() => HomePage());
                  },
                  child: Icon(
                    Icons.shop_2,
                    color: ColorConstant.default_color,
                  ),
                ),
                label: 'Shop'),
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
        ),
      ),
    );
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

  Widget buildCard(String cardImage, String region) {
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

  Future<void> pembejeo() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    var phoneVerified = pref.getString("phoneVerified");

    if (phoneVerified == "true") {
      Get.snackbar(
        "Mkulima Konekti!",
        "Please Complete Registration",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        shouldIconPulse: true,
        barBlur: 20,
        onTap: (snack) {
          Get.toNamed(
            AppRoutes.transactionTabContainerPage,
          );
        },
      );
    } else {
      Get.toNamed(
        AppRoutes.homeContainerScreen,
      );
    }
    ;
  }
}
// ----------------------------------------------------------------------------------------------------

login() {
  Get.toNamed(
    AppRoutes.transactionPage,
  );
}

buySell() {
  Get.toNamed(
    AppRoutes.homeContainerScreen,
  );
}

//------------------------------------------------------------------------------------------------------

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

class CategoryCard extends StatelessWidget {
  final String categoryName;

  CategoryCard({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Container(
        width: 100.0, // Adjust the width as needed

        // width: MediaQuery.of(context).size.width,

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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/controller/category_controller.dart';
import 'package:mkulima_connect/presentation/home_page/controller/product_controller.dart';

class ServicesScreen extends StatelessWidget {
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
      body: Container(
        child: Stack(children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 220,

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
                    autoPlay: true, // Set to true for auto-playing the carousel
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
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 220,
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                )),
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
                                                                blurRadius: 3,
                                                              ),
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
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Uchakataji",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                   Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.category,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Uhifadhi",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.train,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Usafirishaji",
                                                            style: TextStyle(
                                                               fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );},
                                      


                                                            child: Card(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        121,
                                                                        193,
                                                                        67),
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100),
                                                                    side: BorderSide(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67))),
                                                                elevation: 4,
                                                                child:
                                                                    Container(
                                                                  height: 100,
                                                                  width: 100,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/info.png"),
                                                                      height:
                                                                          75,
                                                                      width: 75,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Huduma",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67),
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
                                                                blurRadius: 3,
                                                              ),
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
                                                        Icons.sunny_snowing,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Hali ya Hewa",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                   Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.agriculture_sharp,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Kilimo",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.adb,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Ufugaji",
                                                            style: TextStyle(
                                                               fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                
                                              ],
                                            ),
                                          ),
                                        );},














                                                            child: Card(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        121,
                                                                        193,
                                                                        67),
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100),
                                                                    side: BorderSide(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67))),
                                                                elevation: 4,
                                                                child:
                                                                    Container(
                                                                  height: 100,
                                                                  width: 100,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/education.png"),
                                                                      height:
                                                                          75,
                                                                      width: 75,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Elimu",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67),
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
                                                                blurRadius: 3,
                                                              ),
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
                                                        Icons.account_tree_outlined,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Pembejeo",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                   Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.agriculture_sharp,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Kilimo",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.business,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Biashara",
                                                            style: TextStyle(
                                                               fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                
                                              ],
                                            ),
                                          ),
                                        );},
                                                            child: Card(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        121,
                                                                        193,
                                                                        67),
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100),
                                                                    side: BorderSide(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67))),
                                                                elevation: 4,
                                                                child:
                                                                    Container(
                                                                  height: 100,
                                                                  width: 100,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/fund.png"),
                                                                      height:
                                                                          75,
                                                                      width: 75,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Mikopo ya Kilimo",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67),
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
                                                                blurRadius: 3,
                                                              ),
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
                                                        Icons.category_outlined,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Aina za Pembejeo",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                   Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.ac_unit,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Mawakala",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                
                                                
                                              ],
                                            ),
                                          ),
                                        );},
                                                            child: Card(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        121,
                                                                        193,
                                                                        67),
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100),
                                                                    side: BorderSide(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67))),
                                                                elevation: 4,
                                                                child:
                                                                    Container(
                                                                  height: 100,
                                                                  width: 100,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/categories.png"),
                                                                      height:
                                                                          75,
                                                                      width: 75,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Pembejeo za Kilimo",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67),
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
                                                                blurRadius: 3,
                                                              ),
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
                                                        Icons.add_business_outlined,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Aina ya Masoko",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                   Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.add_chart,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Mahitaji",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              
                                              ],
                                            ),
                                          ),
                                        );},
                                                            child: Card(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        121,
                                                                        193,
                                                                        67),
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100),
                                                                    side: BorderSide(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67))),
                                                                elevation: 4,
                                                                child:
                                                                    Container(
                                                                  height: 100,
                                                                  width: 100,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/market.png"),
                                                                      height:
                                                                          75,
                                                                      width: 75,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Masoko",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67),
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
                                                            onTap: (){
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
                                                                blurRadius: 3,
                                                              ),
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
                                                        Icons.price_change_outlined,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Bei za Mazao",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                   Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.person_pin_circle_rounded,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Wauzaji",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.person_pin_circle_outlined,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {},
                                                          child: Text(
                                                            "Wanunuzi",
                                                            style: TextStyle(
                                                               fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                                 Divider(),
                                                Card(
                                                  elevation: 0,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.sell,
                                                        color: Colors.grey,
                                                      ),
                                                      TextButton(
                                                          onPressed: () {
                                                             buySell();
                                                          },
                                                          child: Text(
                                                            "Nunua Mazao",
                                                            style: TextStyle(
                                                               fontWeight: FontWeight.bold,
                                                                color: ColorConstant.default_color),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );},
                                                            child: Card(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        121,
                                                                        193,
                                                                        67),
                                                                shadowColor:
                                                                    Colors.grey,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100),
                                                                    side: BorderSide(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67))),
                                                                elevation: 4,
                                                                child:
                                                                    Container(
                                                                  height: 100,
                                                                  width: 100,
                                                                  child: Center(
                                                                    child:
                                                                        Image(
                                                                      image: const AssetImage(
                                                                          "assets/images/shopping.png"),
                                                                      height:
                                                                          75,
                                                                      width: 75,
                                                                      // fit: BoxFit.cover,
                                                                    ),
                                                                  ),
                                                                )),
                                                          ),
                                                          SizedBox(height: 5),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Kuuza / Kununua",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            121,
                                                                            193,
                                                                            67),
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
                      ],
                    )),
              )),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
            color: ColorConstant.default_color,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              color: Colors.white,
              child: Text("                                                "),
            )
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
         // width: double.infinity,
        ),
      ),
    );
  }

  // ----------------------------------------------------------------------------------------------------

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

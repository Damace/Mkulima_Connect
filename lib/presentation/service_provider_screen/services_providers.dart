import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/presentation/utils/app_color.dart';

import 'controller/serviceProvider_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class ServicesProviders extends StatefulWidget {
  @override
  _ServicesProviders createState() => _ServicesProviders();
}

class _ServicesProviders extends State<ServicesProviders> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));

    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Service Providers",
          style: TextStyle(fontSize: 14),
        ),
        backgroundColor: ColorConstant.default_color,
      ),
      body: Container(
        child: Padding(
            padding: getPadding(left: 3, top: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(top: 30, right: 3),
                      child:

                          // ----------------------------------------------------------------------------------------------------------------------------------------------------

                          Container(
                              height: getVerticalSize(390),
                              decoration: BoxDecoration(color: Colors.white),
                              child: GridView(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        mainAxisSpacing: 0 // Number of columns
                                        ),
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                        child: Card(
                                            // color: ColorConstant.default_color,
                                            shadowColor: Colors.grey,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadiusDirectional
                                                        .only(
                                                  topEnd: Radius.circular(15),
                                                  topStart: Radius.circular(15),
                                                  bottomEnd:
                                                      Radius.circular(15),
                                                  bottomStart:
                                                      Radius.circular(15),
                                                ),

                                                // --------------------------------------------------------------------------------------------------------------------------

                                                side: BorderSide(
                                                    color: ColorConstant
                                                        .default_color)),
                                            elevation: 10,
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.18,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.18,
                                              child: Center(
                                                child: Icon(
                                                  Icons.home,
                                                  color: ColorConstant
                                                      .default_color,
                                                  size: 45,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Agri-inputs",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: ColorConstant
                                                      .default_color,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                      padding: getPadding(
                                          left: 10, right: 10, bottom: 20),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            child: Card(
                                                // color: ColorConstant.default_color,
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

                                                    // --------------------------------------------------------------------------------------------------------------------------

                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .default_color)),
                                                elevation: 10,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.home,
                                                      color: ColorConstant
                                                          .default_color,
                                                      size: 45,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "Processors",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: ColorConstant
                                                          .default_color,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ) //Text("Taarifa za Kilimo"),
                                      ),
                                  Padding(
                                      padding: getPadding(left: 10, right: 10),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            child: Card(
                                                // color: ColorConstant.default_color,
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

                                                    // --------------------------------------------------------------------------------------------------------------------------

                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .default_color)),
                                                elevation: 10,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.home,
                                                      color: ColorConstant
                                                          .default_color,
                                                      size: 45,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "Insurance",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: ColorConstant
                                                          .default_color,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
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
                                      ),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            child: Card(
                                                // color: ColorConstant.default_color,
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

                                                    // --------------------------------------------------------------------------------------------------------------------------
                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .default_color)),
                                                elevation: 10,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.home,
                                                      color: ColorConstant
                                                          .default_color,
                                                      size: 45,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "Transporters\n ( Logistics )",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: ColorConstant
                                                          .default_color,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
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
                                      ),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            child: Card(
                                                // color: ColorConstant.default_color,
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

                                                    // --------------------------------------------------------------------------------------------------------------------------

                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .default_color)),
                                                elevation: 10,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.home,
                                                      color: ColorConstant
                                                          .default_color,
                                                      size: 45,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "  Financial\nInstitutions",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: ColorConstant
                                                          .default_color,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
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
                                      ),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            child: Card(
                                                // color: ColorConstant.default_color,
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

                                                    // --------------------------------------------------------------------------------------------------------------------------

                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .default_color)),
                                                elevation: 10,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.home,
                                                      color: ColorConstant
                                                          .default_color,
                                                      size: 45,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  " Storage and \nWarehousing",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: ColorConstant
                                                          .default_color,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
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
                                      ),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            child: Card(
                                                // color: ColorConstant.default_color,
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

                                                    // --------------------------------------------------------------------------------------------------------------------------

                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .default_color)),
                                                elevation: 10,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.home,
                                                      color: ColorConstant
                                                          .default_color,
                                                      size: 45,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  "Education\nProviders",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: ColorConstant
                                                          .default_color,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
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
                                      ),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            child: Card(
                                                // color: ColorConstant.default_color,
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

                                                    // --------------------------------------------------------------------------------------------------------------------------

                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .default_color)),
                                                elevation: 10,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.home,
                                                      color: ColorConstant
                                                          .default_color,
                                                      size: 45,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  " Marketing\n   Agency",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: ColorConstant
                                                          .default_color,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
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
                                      ),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            child: Card(
                                                // color: ColorConstant.default_color,
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

                                                    // --------------------------------------------------------------------------------------------------------------------------

                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .default_color)),
                                                elevation: 10,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.home,
                                                      color: ColorConstant
                                                          .default_color,
                                                      size: 45,
                                                    ),
                                                  ),
                                                )),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  " ???",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: ColorConstant
                                                          .default_color,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ) //Text("Taarifa za Kilimo"),
                                      ),
                                ],
                              ))

                      //----------------------------------------------------------------------------------------------------------------------------------------------------
                      ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Get More Services",
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
                  Divider(),
                  Container(
                    child: CarouselSlider(
                      items: [
                        // buildImage('https://example.com/image1.jpg'),
                        //buildImage('https://example.com/image2.jpg'),
                        //buildImage('https://example.com/image3.jpg'),

                        buildImage('assets/images/top.png',
                            'Look for Best Seller ?', context),
                        buildImage('assets/images/top2.png',
                            'Need Connection ?', context),
                        buildImage('assets/images/top3.png',
                            'Look for Markets ?', context),

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
                        autoPlayInterval: Duration(seconds: 3),
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
                  )
                ])),
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

                  // Get.to(() => HomePage());
                },
                child: Icon(
                  Icons.tv,
                  color: ColorConstant.default_color,
                ),
              ),
              label: 'Mkulima TV'),
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
    ));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}

Widget buildImage(String imageUrl, String service, context) {
  return Padding(
    padding: const EdgeInsets.all(28.0),
    child: Container(
      height: 12,
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

        // child: Card(
        //   color: Colors.red,
        //   child: Image.asset(
        //     imageUrl,
        //     fit: BoxFit.fill,
        //     width: double.infinity,
        //   ),
        // ),

        child: Card(
            // color: ColorConstant.default_color,
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(15),
                  topStart: Radius.circular(15),
                  bottomEnd: Radius.circular(15),
                  bottomStart: Radius.circular(15),
                ),

                // --------------------------------------------------------------------------------------------------------------------------

                side: BorderSide(color: ColorConstant.default_color)),
            elevation: 8,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.79,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Center(
                        child: Icon(
                          Icons.home,
                          color: ColorConstant.default_color,
                          size: 45,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$service"),
                    ],
                  )
                ],
              ),
            )),
      ),
    ),
  );
}

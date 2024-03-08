import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controller/add_location_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:mkulima_connect/widgets/app_bar/appbar_title.dart';
import 'package:mkulima_connect/widgets/app_bar/custom_app_bar.dart';
import 'package:mkulima_connect/widgets/custom_button.dart';
import 'package:mkulima_connect/widgets/custom_icon_button.dart';

class AddLocationScreen extends StatefulWidget {
  _AddLocationScreen createState() => _AddLocationScreen();
}

class _AddLocationScreen extends State<AddLocationScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  late Color myColor;
  late Size mediaSize;

  var index = Get.arguments['index'];

  @override
  Widget build(BuildContext context) {

   myColor = Theme.of(context).primaryColor;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: ColorConstant.default_color,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));


    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
          height: getVerticalSize(56),
          leadingWidth: 74,
          leading: AppbarIconbutton2(
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 24, top: 3, bottom: 3),
              onTap: () {
                onTapArrowleft8();
              }),
          centerTitle: true,
          title: AppbarTitle(text: "News and Events")),
      body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                  // color: Colors.red,
                  height: MediaQuery.of(context).size.height * 1.05,
                  // height: 80,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(top: 0),
                          child: Container(
                              height:
                                  MediaQuery.of(context).size.height *
                                      .35,
                              padding: const EdgeInsets.only(bottom: 0),
                              width: double.infinity,
                              // child: Image.asset('assets/images/main_image.png'),

                              child: CachedNetworkImage(
                                alignment: Alignment.center,
                                imageUrl: Get.arguments['image'],
                                fit: BoxFit.fill,
                              )),
                        ),
                        Stack(children: [
                          Container(
                              //height: 840,
                              padding: const EdgeInsets.only(
                                  top: 10, right: 14, left: 14),
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
                                            MainAxisAlignment
                                                .spaceBetween,
                                        children: [
                                          Text(
                                            Get.arguments['title'],
                                            style: GoogleFonts.poppins(
                                              fontSize: 22,
                                              fontWeight:
                                                  FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                     
                                      Container(
                                        child: Text(
                                          Get.arguments['contents'],
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )))
                        ])
                      ])))),
    ));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.addPhotosScreen,
    );
  }

  onTapArrowleft8() {
    Get.back();
  }
}

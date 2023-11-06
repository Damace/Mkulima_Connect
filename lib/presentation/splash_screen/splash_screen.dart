import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  late Color myColor;
  late Size mediaSize;
  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: const AssetImage("assets/images/bg2.png"),

                  //image: AssetImage(ImageConstant.imgSplashscreen),
                )),
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /*
                          CustomImageView(
                              svgPath: ImageConstant.imgVectorGray100,
                              height: getVerticalSize(100),
                              width: getHorizontalSize(136))
*/
                        ])))));
  }
}

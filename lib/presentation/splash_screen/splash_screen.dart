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
                  image: const AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      myColor.withOpacity(0.4), BlendMode.dstATop),
                  //image: AssetImage(ImageConstant.imgSplashscreen),
                )),
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Image(
                              image:
                                  const AssetImage("assets/images/mclogo.png"),
                              //height: getVerticalSize(100),
                              //width: getHorizontalSize(136)
                            ),
                          ),

                          /*
                          CustomImageView(
                              svgPath: ImageConstant.imgVectorGray100,
                              height: getVerticalSize(100),
                              width: getHorizontalSize(136))
*/
                        ])))));
  }
}

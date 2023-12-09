import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:mkulima_connect/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  late Color myColor;
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(  
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.green],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter),
                  image: DecorationImage(
                    image: const AssetImage("assets/images/bgo.jpg"),
                    fit: BoxFit.fill

                    //image: AssetImage(ImageConstant.imgSplashscreen),
                  )),
            )));
  }
}

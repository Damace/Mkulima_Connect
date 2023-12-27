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
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 121, 193, 67),
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Center(
                child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(
                            100))), // Apply elevation for a shadow effect

                    color: Colors.white,
                    // Set the background color of the card
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image(
                          image: AssetImage("assets/images/mclogo.png"),
                          height: 100,
                          width: 100,
                        ))))));
  }
}

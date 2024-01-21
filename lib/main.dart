import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mkulima_connect/firebase_options.dart';
import 'package:mkulima_connect/presentation/provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'core/app_export.dart'; 
import 'package:firebase_messaging/firebase_messaging.dart';
// ...

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,
//final fcmToken = await FirebaseMessaging.instance.getToken();
);

  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);

    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
      Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,  
    ));
    return ChangeNotifierProvider(
       create: (context) => CartProvider(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
              primarySwatch: Colors.green,
              primaryColor: Color.fromARGB(255, 7, 105, 64)
            
            // primarySwatch: Color.fromARGB(255, 3, 31, 4),
            ),
        translations: AppLocalization(),
        locale: Get.deviceLocale,
        //for setting localization strings
        fallbackLocale: const Locale('en', 'US'),
        title: 'MKonekt',
        initialBinding: InitialBindings(),
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,
      ),
    );
  }
}

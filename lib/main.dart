import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
    //  final MaterialColor customPrimarySwatch = createCustomMaterialColor(Color(0xFF336699)); // Change the color code as needed

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       // visualDensity: VisualDensity.comfortable,
       // primarySwatch: Colors.fromARGB(1, 2, 2, 2)
        primaryColor: Color.fromARGB(255, 7, 105, 64)
       // primarySwatch: Color.fromARGB(255, 3, 31, 4),
      ),
      translations: AppLocalization(),
      locale: Get.deviceLocale,
      //for setting localization strings
      fallbackLocale: const Locale('en', 'US'),
      title: 'mkulima_connect_app',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}

import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 8000), () {
      Get.offNamed(
        AppRoutes.formDetailScreen
      //AppRoutes.propertyDetailsScreen

       
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:get/get.dart';
import '../../splash_screen/controller/splash_controller.dart';

class ServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}

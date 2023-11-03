import '../controller/featured_estates_controller.dart';
import 'package:get/get.dart';

class FeaturedEstatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeaturedEstatesController());
  }
}

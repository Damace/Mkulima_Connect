import '../controller/promotion_controller.dart';
import 'package:get/get.dart';

class PromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PromotionController());
  }
}

import '../controller/review_fill_controller.dart';
import 'package:get/get.dart';

class ReviewFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewFillController());
  }
}

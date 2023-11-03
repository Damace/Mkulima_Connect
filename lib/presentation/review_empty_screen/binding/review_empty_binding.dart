import '../controller/review_empty_controller.dart';
import 'package:get/get.dart';

class ReviewEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewEmptyController());
  }
}

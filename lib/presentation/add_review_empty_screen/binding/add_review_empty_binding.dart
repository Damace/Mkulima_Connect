import '../controller/add_review_empty_controller.dart';
import 'package:get/get.dart';

class AddReviewEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddReviewEmptyController());
  }
}

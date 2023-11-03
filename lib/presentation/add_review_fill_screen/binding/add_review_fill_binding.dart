import '../controller/add_review_fill_controller.dart';
import 'package:get/get.dart';

class AddReviewFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddReviewFillController());
  }
}

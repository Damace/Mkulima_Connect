import '../controller/all_reviews_controller.dart';
import 'package:get/get.dart';

class AllReviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllReviewsController());
  }
}

import '../controller/reviews_gallery_controller.dart';
import 'package:get/get.dart';

class ReviewsGalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewsGalleryController());
  }
}

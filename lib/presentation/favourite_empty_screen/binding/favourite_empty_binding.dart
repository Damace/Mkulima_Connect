import '../controller/favourite_empty_controller.dart';
import 'package:get/get.dart';

class FavouriteEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavouriteEmptyController());
  }
}

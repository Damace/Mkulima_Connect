import '../controller/filter_choose_location_controller.dart';
import 'package:get/get.dart';

class FilterChooseLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterChooseLocationController());
  }
}

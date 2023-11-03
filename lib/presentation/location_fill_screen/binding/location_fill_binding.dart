import '../controller/location_fill_controller.dart';
import 'package:get/get.dart';

class LocationFillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationFillController());
  }
}

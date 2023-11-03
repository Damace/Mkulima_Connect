import '../controller/location_choose_location_controller.dart';
import 'package:get/get.dart';

class LocationChooseLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationChooseLocationController());
  }
}

import '../controller/top_locations_controller.dart';
import 'package:get/get.dart';

class TopLocationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopLocationsController());
  }
}

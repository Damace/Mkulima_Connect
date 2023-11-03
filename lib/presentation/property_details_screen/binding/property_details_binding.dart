import '../controller/property_details_controller.dart';
import 'package:get/get.dart';

class PropertyDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PropertyDetailsController());
  }
}

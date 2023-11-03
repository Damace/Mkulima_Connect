import '../controller/preferable_controller.dart';
import 'package:get/get.dart';

class PreferableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreferableController());
  }
}

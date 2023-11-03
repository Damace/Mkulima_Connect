import '../controller/preferable_selected_controller.dart';
import 'package:get/get.dart';

class PreferableSelectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreferableSelectedController());
  }
}

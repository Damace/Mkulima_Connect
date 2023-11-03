import '../controller/empty_map_controller.dart';
import 'package:get/get.dart';

class EmptyMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptyMapController());
  }
}

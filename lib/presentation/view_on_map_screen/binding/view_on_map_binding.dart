import '../controller/view_on_map_controller.dart';
import 'package:get/get.dart';

class ViewOnMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewOnMapController());
  }
}

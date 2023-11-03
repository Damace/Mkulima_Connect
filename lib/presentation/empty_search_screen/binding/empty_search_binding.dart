import '../controller/empty_search_controller.dart';
import 'package:get/get.dart';

class EmptySearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmptySearchController());
  }
}

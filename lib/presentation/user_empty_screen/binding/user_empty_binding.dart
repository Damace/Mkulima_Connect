import '../controller/user_empty_controller.dart';
import 'package:get/get.dart';

class UserEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserEmptyController());
  }
}

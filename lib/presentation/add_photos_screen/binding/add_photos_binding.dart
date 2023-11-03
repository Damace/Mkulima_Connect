import '../controller/add_photos_controller.dart';
import 'package:get/get.dart';

class AddPhotosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPhotosController());
  }
}

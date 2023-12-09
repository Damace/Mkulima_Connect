import 'package:mkulima_connect/presentation/partiners/controller/partinersController.dart';
import 'package:get/get.dart';

class LoadingListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PartinersController());
  }
}

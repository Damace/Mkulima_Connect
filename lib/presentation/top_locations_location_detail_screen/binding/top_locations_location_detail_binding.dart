import '../controller/top_locations_location_detail_controller.dart';
import 'package:get/get.dart';

class TopLocationsLocationDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopLocationsLocationDetailController());
  }
}

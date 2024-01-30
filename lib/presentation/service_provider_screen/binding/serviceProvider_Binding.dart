import 'package:get/get_core/src/get_main.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/service_provider_screen/controller/serviceProvider_controller.dart';

class ServiceProviderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceProviderController());
  }
}

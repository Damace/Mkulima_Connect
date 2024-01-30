
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/service_provider_screen/models/serviceProviders_model.dart';

class ServiceProviderController extends GetxController {
  Rx<ServiceProviderModel> callModelObj = ServiceProviderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

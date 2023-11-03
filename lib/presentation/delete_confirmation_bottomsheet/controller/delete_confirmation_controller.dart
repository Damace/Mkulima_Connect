import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/delete_confirmation_bottomsheet/models/delete_confirmation_model.dart';

class DeleteConfirmationController extends GetxController {
  Rx<DeleteConfirmationModel> deleteConfirmationModelObj =
      DeleteConfirmationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

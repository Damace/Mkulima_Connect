import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';
import 'package:mkulima_connect/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';


class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController formsearchemptyController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  SelectionPopupModel? selectedDropDownValue;

  var productList = <Products>[].obs;

  var isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
   
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    formsearchemptyController.dispose();
  }


  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    homeModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeModelObj.value.dropdownItemList.refresh();
  }
}

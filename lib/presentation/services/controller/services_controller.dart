import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/models/products_model.dart';
import 'package:mkulima_connect/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';


class ServicesController extends GetxController {
  ServicesController(this.homeModelObj);

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
  }



}

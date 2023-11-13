import 'dart:convert';
import 'package:mkulima_connect/core/app_export.dart';
import 'package:mkulima_connect/presentation/home_page/models/employee_model.dart';
import 'package:mkulima_connect/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController formsearchemptyController = TextEditingController();

  Rx<HomeModel> homeModelObj;

  SelectionPopupModel? selectedDropDownValue;

  var dataList = <dynamic>[].obs;

  var isLoading = false.obs;
  Employee? employee;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
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

  fetchData() async {
    try {
      isLoading(true);
      http.Response response = await http.get(Uri.tryParse(
          'http://mwakalikamo.pythonanywhere.com/employees')!);
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);

        employee = Employee.fromJson(result);
      } else {
        print('error fetching data');
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading(false);
    }
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

import 'package:get/get.dart';import 'layout1_item_model.dart';import 'layout3_item_model.dart';class FormDetailModel {Rx<List<Layout1ItemModel>> layout1ItemList = Rx(List.generate(2,(index) =>Layout1ItemModel()));

Rx<List<Layout3ItemModel>> layout3ItemList = Rx(List.generate(5,(index) =>Layout3ItemModel()));

 }

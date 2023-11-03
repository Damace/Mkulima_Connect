import 'package:get/get.dart';import 'chipview_item_model.dart';import 'listshape_item_model.dart';class TopLocationsLocationDetailModel {Rx<List<ChipviewItemModel>> chipviewItemList = Rx(List.generate(2,(index) =>ChipviewItemModel()));

Rx<List<ListshapeItemModel>> listshapeItemList = Rx(List.generate(2,(index) => ListshapeItemModel()));

 }

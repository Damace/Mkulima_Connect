import 'package:get/get.dart';import 'datalist_item_model.dart';import 'gridshape1_item_model.dart';class RealEstatesListByCategoryModel {Rx<List<DatalistItemModel>> datalistItemList = Rx(List.generate(3,(index) => DatalistItemModel()));

Rx<List<Gridshape1ItemModel>> gridshape1ItemList = Rx(List.generate(4,(index) => Gridshape1ItemModel()));

 }

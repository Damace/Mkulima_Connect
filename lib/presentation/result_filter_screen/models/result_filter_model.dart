import 'package:get/get.dart';import 'filter_item_model.dart';import 'listshape3_item_model.dart';class ResultFilterModel {Rx<List<FilterItemModel>> filterItemList = Rx(List.generate(3,(index) =>FilterItemModel()));

Rx<List<Listshape3ItemModel>> listshape3ItemList = Rx(List.generate(3,(index) => Listshape3ItemModel()));

 }

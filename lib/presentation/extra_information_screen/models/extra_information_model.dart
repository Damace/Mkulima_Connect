import 'package:get/get.dart';import 'layout5_item_model.dart';import 'listtype_item_model.dart';import 'layout7_item_model.dart';import 'layout9_item_model.dart';class ExtraInformationModel {Rx<List<Layout5ItemModel>> layout5ItemList = Rx(List.generate(2,(index) =>Layout5ItemModel()));

Rx<List<ListtypeItemModel>> listtypeItemList = Rx(List.generate(3,(index) => ListtypeItemModel()));

Rx<List<Layout7ItemModel>> layout7ItemList = Rx(List.generate(4,(index) =>Layout7ItemModel()));

Rx<List<Layout9ItemModel>> layout9ItemList = Rx(List.generate(7,(index) =>Layout9ItemModel()));

 }

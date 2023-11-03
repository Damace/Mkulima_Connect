import 'package:get/get.dart';import 'layout12_item_model.dart';import 'layout14_item_model.dart';import 'gridshape5_item_model.dart';import 'layout16_item_model.dart';import 'editform_item_model.dart';import 'layout18_item_model.dart';import 'chipview4_item_model.dart';class EditFormModel {Rx<List<Layout12ItemModel>> layout12ItemList = Rx(List.generate(2,(index) =>Layout12ItemModel()));

Rx<List<Layout14ItemModel>> layout14ItemList = Rx(List.generate(5,(index) =>Layout14ItemModel()));

Rx<List<Gridshape5ItemModel>> gridshape5ItemList = Rx(List.generate(4,(index) => Gridshape5ItemModel()));

Rx<List<Layout16ItemModel>> layout16ItemList = Rx(List.generate(2,(index) =>Layout16ItemModel()));

Rx<List<EditformItemModel>> editformItemList = Rx(List.generate(3,(index) => EditformItemModel()));

Rx<List<Layout18ItemModel>> layout18ItemList = Rx(List.generate(4,(index) =>Layout18ItemModel()));

Rx<List<Chipview4ItemModel>> chipview4ItemList = Rx(List.generate(7,(index) =>Chipview4ItemModel()));

 }

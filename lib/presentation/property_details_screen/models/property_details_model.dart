import 'package:get/get.dart';import 'chipviewlayout_item_model.dart';import 'layout20_item_model.dart';import 'package:mkulima_connect/data/models/selectionPopupModel/selection_popup_model.dart';import 'layout21_item_model.dart';import 'listshape4_item_model.dart';import 'gridshape6_item_model.dart';class PropertyDetailsModel {Rx<List<ChipviewlayoutItemModel>> chipviewlayoutItemList = Rx(List.generate(2,(index) =>ChipviewlayoutItemModel()));

Rx<List<Layout20ItemModel>> layout20ItemList = Rx(List.generate(3,(index) => Layout20ItemModel()));

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<Layout21ItemModel>> layout21ItemList = Rx(List.generate(3,(index) => Layout21ItemModel()));

Rx<List<Listshape4ItemModel>> listshape4ItemList = Rx(List.generate(2,(index) => Listshape4ItemModel()));

Rx<List<Gridshape6ItemModel>> gridshape6ItemList = Rx(List.generate(2,(index) => Gridshape6ItemModel()));

 }

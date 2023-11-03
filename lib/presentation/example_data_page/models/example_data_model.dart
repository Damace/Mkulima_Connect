import 'package:get/get.dart';import 'package:mkulima_connect/data/models/selectionPopupModel/selection_popup_model.dart';import 'listshape1_item_model.dart';import 'layout11_item_model.dart';class ExampleDataModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<Listshape1ItemModel>> listshape1ItemList = Rx(List.generate(3,(index) => Listshape1ItemModel()));

Rx<List<Layout11ItemModel>> layout11ItemList = Rx(List.generate(2,(index) => Layout11ItemModel()));

 }

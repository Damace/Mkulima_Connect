import 'package:get/get.dart';
import 'category1_item_model.dart';
import 'listtext_item_model.dart';
import 'layout23_item_model.dart';
import 'layout24_item_model.dart';
import 'layout25_item_model.dart';
import 'home_item_model.dart';
import 'package:mkulima_connect/data/models/selectionPopupModel/selection_popup_model.dart';

class HomeModel {
  Rx<List<Category1ItemModel>> category1ItemList =
      Rx(List.generate(4, (index) => Category1ItemModel()));

  Rx<List<ListtextItemModel>> listtextItemList =
      Rx(List.generate(2, (index) => ListtextItemModel()));

  Rx<List<Layout23ItemModel>> layout23ItemList =
      Rx(List.generate(2, (index) => Layout23ItemModel()));

  Rx<List<Layout24ItemModel>> layout24ItemList =
      Rx(List.generate(4, (index) => Layout24ItemModel()));

  Rx<List<Layout25ItemModel>> layout25ItemList =
      Rx(List.generate(5, (index) => Layout25ItemModel()));

  Rx<List<HomeItemModel>> homeItemList =
      Rx(List.generate(8, (index) => HomeItemModel()));

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}


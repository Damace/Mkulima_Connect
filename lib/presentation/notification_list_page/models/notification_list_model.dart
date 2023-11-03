import 'package:get/get.dart';import 'category_item_model.dart';import 'list_item_model.dart';class NotificationListModel {Rx<List<CategoryItemModel>> categoryItemList = Rx(List.generate(4,(index) => CategoryItemModel()));

Rx<List<ListItemModel>> listItemList = Rx(List.generate(3,(index) => ListItemModel()));

 }

import 'package:get/get.dart';import 'ratingcategory_item_model.dart';import 'listshape2_item_model.dart';class AllReviewsModel {Rx<List<RatingcategoryItemModel>> ratingcategoryItemList = Rx(List.generate(5,(index) => RatingcategoryItemModel()));

Rx<List<Listshape2ItemModel>> listshape2ItemList = Rx(List.generate(3,(index) => Listshape2ItemModel()));

 }

import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/listings_page/models/listings_model.dart';class ListingsController extends GetxController {ListingsController(this.listingsModelObj);

Rx<ListingsModel> listingsModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

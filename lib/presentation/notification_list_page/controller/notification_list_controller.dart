import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/notification_list_page/models/notification_list_model.dart';class NotificationListController extends GetxController {NotificationListController(this.notificationListModelObj);

Rx<NotificationListModel> notificationListModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

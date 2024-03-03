import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Body: ${message.notification?.body}');
  print('Payload: ${message.data}');
}

class FirebaseApi {
  final _firbaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    await _firbaseMessaging.requestPermission();
    final FCMToken = await _firbaseMessaging.getToken();
    print('Tocken:$FCMToken');
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
}

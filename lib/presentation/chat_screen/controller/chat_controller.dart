import 'package:mkulima_connect/core/app_export.dart';import 'package:mkulima_connect/presentation/chat_screen/models/chat_model.dart';import 'package:flutter/material.dart';class ChatController extends GetxController {TextEditingController descriptionOneController = TextEditingController();

TextEditingController formchatController = TextEditingController();

Rx<ChatModel> chatModelObj = ChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); descriptionOneController.dispose(); formchatController.dispose(); } 
 }

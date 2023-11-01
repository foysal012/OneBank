import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:onebankltd/main.dart';

class NotificationApi{

  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async{

    await firebaseMessaging.requestPermission();

    final fCMToken = await firebaseMessaging.getToken();

    print("FCM token is : $fCMToken");

  }

  void handleMessage(RemoteMessage? message){
    if(message == null) return;

    navigatorKey.currentState?.pushNamed(
      "/notification_screen",
      arguments: message,
    );
  }

  Future initPushNotification() async{

    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);

  }

}
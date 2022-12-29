import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Noti {
  static Future initialize(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInitialize =
        new AndroidInitializationSettings('mipmap/ic_launcher');
    var initializationSettings =
        new InitializationSettings(android: androidInitialize);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future showBigTextNotification(
      {var id = 0,
      required String titls,
      required String body,
      var payload,
      required FlutterLocalNotificationsPlugin fln}) async {
    AndroidNotificationDetails androidPlatformSpecifics =
        new AndroidNotificationDetails('not_working_name', 'channelName',
            playSound: true,
            // sound: RawResourceAndroidNotificationSound('notification.mp3'),
            importance: Importance.max,
            priority: Priority.high);
    var not = NotificationDetails(android: androidPlatformSpecifics);
    await fln.show(0, "Here is your Notification", "Bye", not);
  }
}

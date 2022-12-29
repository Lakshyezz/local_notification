import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_local_notification/single_page/notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    Noti.initialize(flutterLocalNotificationsPlugin);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Get Notification',
            style: GoogleFonts.poppins(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              Noti.showBigTextNotification(
                  titls: "Message",
                  body: "body",
                  fln: flutterLocalNotificationsPlugin);
            },
            child: Container(
              height: 60,
              width: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.teal,
              ),
              child: Center(
                  child: Text(
                "Press Me",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
              )),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_notifications.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          your_notifications,
        ),
      ),
      body: Column(
        children: [
          CustomNotifications(
            heading: notification_success_text,
            date: date27aug2019,
            iconPath: "assets/images/american_flag.jpg",
          ),
          CustomNotifications(
            heading: you_have_login_successfully,
            date: date27aug2019,
            iconPath: "assets/images/american_flag.jpg",
          ),
        ],
      ),
    );
  }
}

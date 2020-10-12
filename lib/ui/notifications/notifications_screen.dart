import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/widgets/custom_notifications.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomPaint(
          painter: NotificationsContainer(),
          child: Column(
            children: [

              Container(
                child: MyCustomAppBar().getTransparentAppBarWithTitle(my_notifications, Icons.arrow_back_ios),
              ),

              SizedBox(height: 30,),

              Expanded(
                  child: getNotificationsList()
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget getNotificationsList() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return CustomNotifications(
              heading: 'Notifications Title',
              content: 'Congrats! You have won the amount of Rs.100 for the contest of match India VS Australia',
              date: date27aug2019,
              iconData: AppImages.iconMenu
          );
        }
    );
  }

}

class NotificationsContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColors.colorSecondary;
    Path path = Path()
      ..relativeLineTo(0, 80)
      ..quadraticBezierTo(size.width / 2, 180.0, size.width, 120)
      ..relativeLineTo(0, -150)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
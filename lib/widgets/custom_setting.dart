import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/widgets/round_button.dart';
import 'package:flutter/material.dart';

class CustomSettingPage extends StatelessWidget {
  final String title;
  final IconData icon;

  CustomSettingPage({
    this.title,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
            onTap: (){},
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(color: Colors.grey[300], spreadRadius: 1, blurRadius: 5),
                  ]
              ),
              child: Icon(
                icon,
                size: 20,
                color: AppColors.colorGreyDark,
              ),
            ),
            trailing: Icon(
              Icons.navigate_next
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 15, fontFamily: 'Raleway', fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Divider(
          height: 3,
          thickness: 1,
        )
      ],
    );
  }
}

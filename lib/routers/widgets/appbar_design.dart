import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class AppbarDesign {

  static getDashboardAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.0),
      child: Container(
        color: AppColors.colorPrimary,
        child: Column(
          children: [
            Container(
              height: 50,
              child: Center(
                child: Row(
//                    mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10,),
                    Image.asset(AppImages.iconMenu, width: 35, height: 35,),
                    AppWidgets.getCircularAvatar(35, AppImages.userAvatar),
                    SizedBox(width: 15,),
                    Text('League', style: TextStyle(fontSize: 20, color: AppColors.colorWhite),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
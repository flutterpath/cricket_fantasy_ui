import 'package:fantasy_app/constants/color_constants.dart';
import 'package:flutter/material.dart';

class MyCustomAppBar {

  getAppBarWithTitle(String title, IconData icon) {
    return Container(
      height: 50,
      color: AppColors.colorPrimary,
      child: Center(
        child: Stack(
          children: [

            Container(
              height: 50,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(icon, color: Colors.white,),
                ],
              ),
            ),

            Container(
                child: Center(
                  child: Text(title,
                    style: TextStyle(fontSize: 20, color: AppColors.colorWhite, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

  getTransparentAppBarWithTitle(String title, IconData icon) {
    return Container(
      height: 50,
      color: AppColors.colorTransparent,
      child: Center(
        child: Stack(
          children: [

            Container(
              height: 50,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(icon, color: Colors.white,),
                ],
              ),
            ),

            Container(
                child: Center(
                  child: Text(title,
                    style: TextStyle(fontSize: 20, color: AppColors.colorWhite, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

}
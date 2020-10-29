import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:flutter/material.dart';

class MyCustomAppBar {

  getTransparentAppBarWithTitle(String title, IconData icon, VoidCallback onTap) {
    return Container(
      height: 50,
      color: AppColors.colorTransparent,
      child: Center(
        child: Stack(
          children: [

            InkWell(
              onTap: onTap,
              child: Container(
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(icon, color: Colors.white,),
                  ],
                ),
              ),
            ),

            Container(
                child: Center(
                  child: Text(title,
                    style: TextStyle(fontSize: 20, color: AppColors.colorWhite, fontWeight: FontWeight.bold, fontFamily: AppFontName),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

}
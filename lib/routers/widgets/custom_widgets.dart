import 'package:fantasy_app/constants/color_constants.dart';
import 'package:flutter/material.dart';

class AppWidgets {

  static getCircularAvatar(double size, String assetImage) {
    return Container(
      height: size,
      width: size,
      child: CircleAvatar(
        radius: size,
        backgroundColor: AppColors.colorGrey,
        child: CircleAvatar(
          radius: size - 3,
          backgroundImage: AssetImage(assetImage),
        ),
      ),
    );
  }



}
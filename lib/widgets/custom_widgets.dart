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

  static getCircularAvatarWithBorder(double size, String assetImage) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(size/2)),
      child: Container(
        height: size,
        width: size,
        color: AppColors.colorSecondary,
        child: CircleAvatar(
          radius: size - 5,
          backgroundImage: AssetImage(assetImage),
        ),
      ),
    );
  }



}
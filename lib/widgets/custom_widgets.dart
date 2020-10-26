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

  static getTextFieldFloatLabelWithInBorder(String labelText, TextInputType inputType, IconData icon, [TextEditingController controller]) {
    return TextField(
      controller: controller ?? TextEditingController(),
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 15),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.colorPrimary, width: 1.5),
          borderRadius: BorderRadius.circular(25.0),
        ),
        enabledBorder:OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.colorPrimary, width: 1.5),
          borderRadius: BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.colorPrimary, width: 1.5),
          borderRadius: BorderRadius.circular(25.0),
        ),
        prefixIcon: Icon(icon, size: 20, color: AppColors.colorPrimary,),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelText:labelText,
        labelStyle: TextStyle(color: AppColors.colorPrimary, fontFamily: 'Raleway', fontSize: 16),
//                        hintText: 'Enter Bank Account Number'
      ),
    );
  }

  static getCustomGradient() {
    return new LinearGradient(
        colors: [
          AppColors.colorPrimary,
          AppColors.colorGradient,
          AppColors.colorGradient2,
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: [0.0, 0.7, 1.0],
        tileMode: TileMode.clamp);
  }

  static getCustomGradient2() {
    return new LinearGradient(
        colors: [
          AppColors.colorGradient2,
          AppColors.colorGradient,
          AppColors.colorPrimary,
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: [0.0, 0.7, 1.0],
        tileMode: TileMode.clamp);
  }

}
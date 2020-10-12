import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title, description;

    CustomExpansionTile({
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 60),
      child: Stack(
        alignment: Alignment.center,
        overflow: Overflow.visible,
        children: [

          Container(
            height: MediaQuery.of(context).size.height*0.6,
            margin: const EdgeInsets.only(top: 20, left: 50, right: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: AppColors.colorGrey, spreadRadius: 1, blurRadius: 10),
              ],
            ),
            child: Image.asset(AppImages.iconAppScreenshot),
          ),

          Positioned(
            bottom: -30,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width-40,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: AppColors.colorWhite,
                boxShadow: [
                  BoxShadow(color: AppColors.colorPrimaryLight, spreadRadius: 2, blurRadius: 10),
                ],
              ),
              child: Column(
                children: [

                  Container(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.colorBlack,
                          fontFamily: 'Raleway'
                      ),
                    ),
                  ),

                  Center(child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
                    child: Divider(height: 1, color: AppColors.colorGreyDark,),
                  ),),

                  Container(
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.colorBlack,
                          fontFamily: 'Raleway'
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),



        ],
      ),
    );
  }
}

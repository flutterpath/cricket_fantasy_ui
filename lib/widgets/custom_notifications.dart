import 'package:fantasy_app/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNotifications extends StatelessWidget {
  final String heading, content, date;
  final String iconData;

  CustomNotifications({
    this.heading,
    this.content,
    this.date,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.colorWhite,
        boxShadow: [
          BoxShadow(color: AppColors.colorGrey, spreadRadius: 1, blurRadius: 10)
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Row(
          children: [

            Container(
              width: 80,
              height: 120,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
              color: AppColors.colorSecondary
              ),
              child: Image.asset(iconData, height: 25, width: 25,),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        heading,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.colorBlack,
                            fontFamily: 'Raleway'
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 2, right: 50),
                      child: Container(
                        height: 1 ,
                        color: AppColors.colorGrey,
                      ),
                    ),

                    Container(
                      //color: Colors.deepPurple,
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        content,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: AppColors.colorBlack,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Raleway'
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        date,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 12.0,
                            color: AppColors.colorGreyDark,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Raleway'
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

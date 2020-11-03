import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
//      color: AppColors.colorWhite,
      child: Stack(
        children: [

          Positioned(
            top: 350,
            child: Container(
              color: AppColors.colorWhite,
              height: height,
              width: width,
            ),
          ),

          Positioned(
            left: -90,
            right: -50,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation(30 / 360),
              child: Container(
                height: 700,
                width: 900,
                padding: EdgeInsets.only(top: 120),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(150), topRight: Radius.circular(100)),
                  child: Container(
                    color: AppColors.colorWhite,

                  ),
                ),
              ),
            ),
          ),

          Column(
            children: [

              Container(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    AppWidgets.getCircularAvatarWithBorder(85, AppImages.userAvatar),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          //color: Colors.deepPurple,
                          alignment: Alignment.center,
                          child: Text(
                            team_name.toUpperCase(),
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.left,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 13.0,
                                fontWeight: FontWeight.normal,
                                color: AppColors.colorWhite,
                                fontFamily: AppFontName
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 2),
                          width: 150,
                          height: 1 ,
                          color: AppColors.colorWhite,
                        ),

                        Container(
                          //color: Colors.deepPurple,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "ErikTeam",
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.left,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.colorWhite,
                                fontFamily: AppFontName
                            ),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[

                    Container(
                      margin: const EdgeInsets.only(right: 150, bottom: 20),
                      decoration: BoxDecoration(
                          color: AppColors.colorSecondary,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30))
                      ),
                      height: 45,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 15),
                            child: Image.asset(AppImages.iconUser, height: 25, width: 25,),
                          ),
                          Text('User Details'.toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: AppFontName, color: AppColors.colorWhite),)
                        ],
                      ),
                    ),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text(
                        name.toUpperCase(),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          color: AppColors.colorGrey,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Erik Walters",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.colorBlack,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Center(child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                      child: Divider(height: 1, color: AppColors.colorGrey,),
                    ),),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text(
                        email.toUpperCase(),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          color: AppColors.colorGrey,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "erikwalters123@gmail.com",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.colorBlack,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Center(child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                      child: Divider(height: 1, color: AppColors.colorGrey,),
                    ),),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text(
                        mobile_number.toUpperCase(),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          color: AppColors.colorGrey,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "9876543210",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.colorBlack,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Center(child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                      child: Divider(height: 1, color: AppColors.colorGrey,),
                    ),),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text(
                        date_of_birth.toUpperCase(),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          color: AppColors.colorGrey,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "10-May-1995".toUpperCase(),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.colorBlack,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Center(child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                      child: Divider(height: 1, color: AppColors.colorGrey,),
                    ),),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text(
                        gender.toUpperCase(),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          color: AppColors.colorGrey,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Male".toUpperCase(),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.colorBlack,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Center(child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                      child: Divider(height: 1, color: AppColors.colorGrey,),
                    ),),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text(
                        city.toUpperCase(),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.normal,
                          color: AppColors.colorGrey,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Container(
                      //color: Colors.deepPurple,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "London, UK".toUpperCase(),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.colorBlack,
                          fontFamily: AppFontName
                        ),
                      ),
                    ),

                    Center(child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 20),
                      child: Divider(height: 1, color: AppColors.colorGrey,),
                    ),),



                    /** -------- Playing History -------------- */

                    Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.colorSecondary,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30))
                        ),
                        height: 45,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 15),
                              child: Image.asset(AppImages.iconUpcomingMatch, height: 25, width: 25,),
                            ),
                            Text('Playing History'.toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: AppFontName, color: AppColors.colorWhite),)
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 5,),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      textDirection: TextDirection.ltr,
                      children: <Widget>[

                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                            decoration: BoxDecoration(
                                color: AppColors.colorPrimaryLight,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text(
                                    "400".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.colorSecondary,
                                        fontFamily: AppFontName
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Contests".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.colorGreyDark,
                                        fontFamily: AppFontName
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(height: 80, width: 1, color: AppColors.colorGreyLight,),

                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                            decoration: BoxDecoration(
                                color: AppColors.colorPrimaryLight,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text(
                                    "70".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.colorSecondary,
                                        fontFamily: AppFontName
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Matches".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.colorGreyDark,
                                        fontFamily: AppFontName
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        thickness: 1,
                        color: AppColors.colorGreyLight,
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      textDirection: TextDirection.ltr,
                      children: <Widget>[

                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                            decoration: BoxDecoration(
                                color: AppColors.colorPrimaryLight,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text(
                                    "15".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.colorSecondary,
                                        fontFamily: AppFontName
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Series".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.colorGreyDark,
                                        fontFamily: AppFontName
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Container(height: 80, width: 1, color: AppColors.colorGreyLight,),

                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                            decoration: BoxDecoration(
                                color: AppColors.colorPrimaryLight,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text(
                                    "10".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.colorSecondary,
                                        fontFamily: AppFontName
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "Wins".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.colorGreyDark,
                                        fontFamily: AppFontName
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                    SizedBox(height: 30,),

                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
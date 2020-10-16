import 'dart:async';

import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/ui/onboarding/on_boarding_screen.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushNamed(AppRouters.ON_BOARDING_SCREEN);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: AppColors.colorPrimaryLight,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
//        decoration: BoxDecoration(
//            gradient: LinearGradient(
//              colors: [Colors.deepPurpleAccent, Colors.purple],
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//            )
//        ),
        child: Stack(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Positioned(
              left: -50,
              bottom: -60,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: new BoxDecoration(
                    gradient: AppWidgets.getCustomGradient(),
                  ),

                ),
              ),
            ),

            Positioned(
              top: -40,
              right: -30,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: new BoxDecoration(
                    gradient: AppWidgets.getCustomGradient(),
                  ),

                ),
              ),
            ),

            Positioned(
              bottom: 80,
              right: -30,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: new BoxDecoration(
                    gradient: AppWidgets.getCustomGradient(),
                  ),

                ),
              ),
            ),

            Positioned(
              top: 80,
              left: -30,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: new BoxDecoration(
                    gradient: AppWidgets.getCustomGradient(),
                  ),

                ),
              ),
            ),

            Expanded(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 80,),
                    Image.asset(AppImages.imageSplashScreen,width: (MediaQuery.of(context).size.width)),
                    SizedBox(height: 30,),
                    Text("Cricket Fantasy", textScaleFactor: 2.5, style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.colorSecondary, fontFamily: 'Raleway'),),
                    SizedBox(height: 10),
                    CircularProgressIndicator(backgroundColor: AppColors.colorPrimary, strokeWidth: 5.0, valueColor: new AlwaysStoppedAnimation<Color>(AppColors.colorSecondary),),
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

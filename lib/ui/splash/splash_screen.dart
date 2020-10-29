import 'dart:async';

import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
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
    Navigator.of(context).pushReplacementNamed(AppRouters.ON_BOARDING_SCREEN);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: AppColors.colorPrimary,
        width: double.infinity,
        height: height,

        child: Stack(
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
                    gradient: AppWidgets.getCustomGradientLight(),
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
                    gradient: AppWidgets.getCustomGradientLight(),
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
                    gradient: AppWidgets.getCustomGradientLight(),
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
                    gradient: AppWidgets.getCustomGradientLight(),
                  ),

                ),
              ),
            ),

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ColorFiltered(
                      colorFilter: ColorFilter.mode(AppColors.colorPrimary, BlendMode.hue),
                      child: Image.asset(AppImages.imageSplash, width: width, height: width*0.8,)
                  ),
                  Image.asset(AppImages.iconAppName, width: width*0.8,),
                  SizedBox(height: 80),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}

import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TeamPreviewScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TeamPreviewScreenState();
}

class TeamPreviewScreenState extends State<TeamPreviewScreen> {



  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppImages.imagePreviewGround), fit: BoxFit.fill)
                ),
                child: ListView(
                  children: [

                    Container(
                      child: MyCustomAppBar().getTransparentAppBarWithTitle('MyTeam (TEAM 1)', Icons.close, () {
                        Navigator.of(context).pop();
                      }),
                    ),

                    players(1, 'WICKET - KEEPER'),
                    SizedBox(height: height*0.03,),
                    players(5, 'BATSMEN'),
                    SizedBox(height: height*0.03,),
                    players(2, 'ALL - ROUNDERS'),
                    SizedBox(height: height*0.03,),
                    players(3, 'BOWLERS'),
                  ],
                ),
              ),
            ),

            Container(
              color: AppColors.colorSecondary,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(AppImages.imageFlagIndia),
                      ),
                      SizedBox(width: 15,),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(fontSize: 17, color: AppColors.colorGreyExtraLight),
                            children: [
                              TextSpan(text: '7', style: TextStyle(fontSize: 17, color: AppColors.colorWhite, fontFamily: AppFontName, fontWeight: FontWeight.w600)),
                              TextSpan(text: '    /    ',),
                              TextSpan(text: '4', style: TextStyle(fontSize: 17, color: AppColors.colorWhite, fontFamily: AppFontName, fontWeight: FontWeight.w600)),
                            ]
                        ),
                      ),
                      SizedBox(width: 15,),
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(AppImages.imageFlagAustralia),
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),

                  Row(
                    children: [

                      Container(
                        width: 1,
                        height: 40,
                        color: AppColors.colorGreyLight,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            Text(
                              "8.5",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.colorWhite,
                                  fontFamily: AppFontName
                              ),
                            ),
                            SizedBox(height: 4,),
                            Text(
                              "Credit Left",
                              style: TextStyle(fontSize: 13.0, color: AppColors.colorGreyLight, fontFamily: AppFontName),
                            ),

                          ],
                        ),
                      ),

                      Container(
                        width: 1,
                        height: 40,
                        color: AppColors.colorGreyLight,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[

                            RichText(
                              text: TextSpan(
                                  style: TextStyle(fontSize: 16, color: AppColors.colorGreyLight),
                                  children: [
                                    TextSpan(text: '11', style: TextStyle(fontSize: 17, color: AppColors.colorWhite, fontFamily: AppFontName, fontWeight: FontWeight.w600)),
                                    TextSpan(text: ' / 11',),
                                  ]
                              ),
                            ),
                            SizedBox(height: 4,),
                            Text(
                              "Players",
                              style: TextStyle(fontSize: 13.0, color: AppColors.colorGreyLight, fontFamily: AppFontName),
                            ),

                          ],
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget players(int itemCount, String categoryName) {
    return Column(
      children: [
        Text(
          categoryName,
          style: TextStyle(
              color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold, fontFamily: AppFontName),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.center,
          height: 95,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: itemCount,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            AppImages.iconAvatarPlayer,
                            height: 50,
                          ),
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                              color: AppColors.colorPrimary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(40),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "M. Dhoni",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: AppFontName
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "0 Cr",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontFamily: AppFontName,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

}
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:flutter/material.dart';

class MyTeamsListBuilderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTeamsListBuilderScreenState();
}

class MyTeamsListBuilderScreenState extends State<MyTeamsListBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRouters.TEAM_PREVIEW_SCREEN);
              },
              child: Container(
                height: 150,
                margin: EdgeInsets.all(10),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      right: 5,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: width*0.6,
                            padding: EdgeInsets.only(left: 40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: AppColors.colorWhite,
                              boxShadow: [
                                BoxShadow(color: AppColors.colorGreyExtraLight, spreadRadius: 1, blurRadius: 10),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MaterialButton(
                                  color: AppColors.colorPrimary,
                                  height: 25,
                                  minWidth: 50,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(text: "(C)", style: TextStyle(fontSize: 13 ,fontWeight: FontWeight.bold, color: AppColors.colorWhite, fontFamily: 'Raleway'),),
                                        TextSpan(text: " Virat Kohli", style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.w400, color: AppColors.colorWhite, fontFamily: 'Raleway'),),
                                      ]
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                SizedBox(width: 5,),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(AppImages.userAvatar),
                                ),
                                SizedBox(width: 10,),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 50,
                            width: width*0.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
                              color: AppColors.colorWhite,
                              boxShadow: [
                                BoxShadow(color: AppColors.colorGreyExtraLight, spreadRadius: 1, blurRadius: 10),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MaterialButton(
                                  color: AppColors.colorPrimary,
                                  height: 25,
                                  minWidth: 50,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                                  child: RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(text: "(VC)", style: TextStyle(fontSize: 13 ,fontWeight: FontWeight.bold, color: AppColors.colorWhite, fontFamily: 'Raleway'),),
                                          TextSpan(text: " Aaron Finch", style: TextStyle(fontSize: 10 ,fontWeight: FontWeight.w400, color: AppColors.colorWhite, fontFamily: 'Raleway'),),
                                        ]
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                                SizedBox(width: 5),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(AppImages.userAvatar),
                                ),
                                SizedBox(width: 10,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 5,
                      child: Container(
                        width: width*0.48,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: AppColors.colorWhite,
                          boxShadow: [
                            BoxShadow(color: AppColors.colorGradient4, spreadRadius: 1, blurRadius: 8)
                          ]
                        ),
                        child: Column(
                          children: [

                            Container(
                              width: width*0.48,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                                color: AppColors.colorPrimary,
                              ),
                              alignment: Alignment.center,
                              child: Text('Team ${index+1}', style: TextStyle(fontSize: 16 ,color: AppColors.colorWhite, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),
                            ),

                            SizedBox(height: 5,),

                            Row(
                              children: [

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.colorPrimaryLight,
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "6".toUpperCase(),
                                              textAlign: TextAlign.center,
                                              softWrap: true,
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.colorSecondary,
                                                  fontFamily: 'Raleway'
                                              ),
                                            ),
                                            Text(
                                              "IND".toUpperCase(),
                                              textAlign: TextAlign.center,
                                              softWrap: true,
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.colorGrey,
                                                  fontFamily: 'Raleway'
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: AppColors.colorPrimaryLight,
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "5".toUpperCase(),
                                              textAlign: TextAlign.center,
                                              softWrap: true,
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.colorSecondary,
                                                  fontFamily: 'Raleway'
                                              ),
                                            ),
                                            Text(
                                              "AUS".toUpperCase(),
                                              textAlign: TextAlign.center,
                                              softWrap: true,
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.colorGrey,
                                                  fontFamily: 'Raleway'
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(height: 8,),

                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    children: <Widget>[

                                      Text(
                                        "WK",
                                        style: TextStyle(fontSize: 12.0, color: AppColors.colorGreyDark, fontFamily: 'Raleway'),
                                      ),

                                      Text(
                                        "1",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Raleway'
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  width: 1,
                                  height: 25,
                                  color: AppColors.colorGreyExtraLight,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    children: <Widget>[

                                      Text(
                                        "BAT",
                                        style: TextStyle(fontSize: 12.0, color: AppColors.colorGreyDark, fontFamily: 'Raleway'),
                                      ),

                                      Text(
                                        "4",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Raleway'
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  width: 1,
                                  height: 25,
                                  color: AppColors.colorGreyExtraLight,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    children: <Widget>[

                                      Text(
                                        "ALL",
                                        style: TextStyle(fontSize: 12.0, color: AppColors.colorGreyDark, fontFamily: 'Raleway'),
                                      ),

                                      Text(
                                        "3",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Raleway'
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  width: 1,
                                  height: 25,
                                  color: AppColors.colorGreyExtraLight,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    children: <Widget>[

                                      Text(
                                        "BOWL",
                                        style: TextStyle(fontSize: 12.0, color: AppColors.colorGreyDark, fontFamily: 'Raleway'),
                                      ),

                                      Text(
                                        "3",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Raleway'
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),

                            SizedBox(height: 10,),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
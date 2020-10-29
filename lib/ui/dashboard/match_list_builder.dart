import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:flutter/material.dart';

class MatchListBuilderScreen extends StatefulWidget {
  @override
  _MatchListBuilderScreenState createState() => _MatchListBuilderScreenState();
}

class _MatchListBuilderScreenState extends State<MatchListBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: InkWell(
                onTap: () {
                  if(index % 3 != 0)
                    Navigator.of(context).pushNamed(AppRouters.CONTESTS_DASHBOARD_SCREEN);
                  else
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text('Match will be launched soon', style: TextStyle(fontSize: 15, fontFamily: AppFontName),),));
                },
                child: Opacity(
                  opacity: (index % 3 == 0) ? 0.4 : 1.0,
                  child: Container(
                    width: width-20,

                    child: Stack(
                      children: [

                        Center(
                          child: Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.only(left: 35, right: 35),
                            padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.grey[600], spreadRadius: 1, blurRadius: 2),
                              ],
                            ),
                            child: Column(
                              children: [
                                Text("ICC Cricket World Cup", textScaleFactor: 0.9, style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppFontName)),
                                SizedBox(height: 10,),

                                Text("VS", textScaleFactor: 0.8, style: TextStyle(fontFamily: AppFontName, fontWeight: FontWeight.w500),),
                                SizedBox(height: 5,),

                                Text("01:30:00", textScaleFactor: 1.0, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontFamily: AppFontName),)
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          left: 10,
                          child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(AppImages.imageFlagIndia),
                                ),

                                MaterialButton(
                                  color: AppColors.colorPrimary,
                                  height: 25,
                                  minWidth: 50,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                                  child: Text("IND", textScaleFactor: 0.9, style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.colorWhite, fontFamily: AppFontName),),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          right: 10,
                          child: Container(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(AppImages.imageFlagAustralia),
                                ),

                                MaterialButton(
                                  color: AppColors.colorPrimary,
                                  height: 25,
                                  minWidth: 50,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                                  child: Text("AUS", textScaleFactor: 0.9, style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.colorWhite, fontFamily: AppFontName),),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}

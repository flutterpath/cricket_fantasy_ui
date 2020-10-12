import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:flutter/material.dart';

class MatchListBuilderScreen extends StatefulWidget {
  @override
  _MatchListBuilderScreenState createState() => _MatchListBuilderScreenState();
}

class _MatchListBuilderScreenState extends State<MatchListBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: InkWell(
                onTap: () {
                  if(index % 3 != 0)
                    Navigator.of(context).pushNamed(AppRouters.CONTESTS_DASHBOARD_SCREEN);
                  else
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text('Match will be launched soon', style: TextStyle(fontSize: 15, fontFamily: 'Raleway'),),));
                },
                child: Opacity(
                  opacity: (index % 3 == 0) ? 0.4 : 1.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width-20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey[500], spreadRadius: 1, blurRadius: 2),
                      ],
                    ),

                    child: Row(
                      children: [

                        Expanded(
                          flex: 1,
                          child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
                                    child: Container(
                                      width: 100,
                                      height: 70,
                                      color: AppColors.colorPrimary,
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(width: 10),
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundImage: AssetImage(AppImages.userAvatar),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  right: -30,
                                  top: 20,
                                  child: MaterialButton(
                                    color: AppColors.colorSecondary,
                                    height: 25,
                                    minWidth: 50,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                                    child: Text("IND", textScaleFactor: 0.9, style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.colorWhite, fontFamily: 'Raleway'),),
                                    onPressed: () {},
                                  ),
                                )
                              ]
                          ),
                        ),

                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text("ICC Cricket World Cup", textScaleFactor: 0.9, style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway')),
                                SizedBox(height: 10,),

                                Text("VS", textScaleFactor: 0.8, style: TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.w500),),
                                SizedBox(height: 5,),

                                Text("01:30:00", textScaleFactor: 1.0, style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),)
                              ],
                            )
                        ),

                        Expanded(
                          flex: 1,
                          child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(35), bottomLeft: Radius.circular(35)),
                                    child: Container(
                                      width: 100,
                                      height: 70,
                                      color: AppColors.colorPrimary,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          SizedBox(width: 10),
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundImage: AssetImage(AppImages.userAvatar),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: -30,
                                  top: 20,
                                  child: MaterialButton(
                                    color: AppColors.colorSecondary,
                                    height: 25,
                                    minWidth: 50,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                                    child: Text("AUS", textScaleFactor: 0.9, style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.colorWhite),),
                                    onPressed: () {},
                                  ),
                                )
                              ]
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

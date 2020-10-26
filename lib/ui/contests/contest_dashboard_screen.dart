import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/ui/contests/contest_list_builder.dart';
import 'package:fantasy_app/ui/contests/my_teams_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/constants/strings.dart';

class ContestDashboardScreen extends StatefulWidget {
  @override
  _ContestDashboardScreenState createState() => _ContestDashboardScreenState();
}

class _ContestDashboardScreenState extends State<ContestDashboardScreen> with SingleTickerProviderStateMixin  {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [

            Positioned(
              left: -200,
              top: -250,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(260)),
                child: Container(
                  height: 500,
                  width: 550,
                  color: AppColors.colorPrimary,

                ),
              ),
            ),


            Container(
              child: Column(
                children: [

                  Container(
                    child: MyCustomAppBar().getTransparentAppBarWithTitle(contests, Icons.arrow_back_ios, () {
                      Navigator.of(context).pop();
                    }),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                       Container(
                         height: 90,
                         margin: EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(15)),
                           color: AppColors.colorWhite,
                           boxShadow: [
                             BoxShadow(color: AppColors.colorGrey, spreadRadius: 1, blurRadius: 10)
                           ]
                         ),
                         child: Column(
                           children: [

                             SizedBox(height: 10,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 CircleAvatar(
                                   radius: 10,
                                   backgroundImage: AssetImage(AppImages.imageFlagIndia),
                                 ),
                                 SizedBox(width: 15,),
                                 RichText(
                                   text: TextSpan(
                                       style: TextStyle(fontSize: 13, color: AppColors.colorGreyDark, fontFamily: 'Raleway'),
                                       children: [
                                         TextSpan(text: 'IND', style: TextStyle(fontSize: 15, color: AppColors.colorBlack, fontFamily: 'Raleway', fontWeight: FontWeight.w600)),
                                         TextSpan(text: '  VS  ',),
                                         TextSpan(text: 'AUS', style: TextStyle(fontSize: 15, color: AppColors.colorBlack, fontFamily: 'Raleway', fontWeight: FontWeight.w600)),
                                       ]
                                   ),
                                 ),
                                 SizedBox(width: 15,),
                                 CircleAvatar(
                                   radius: 10,
                                   backgroundImage: AssetImage(AppImages.imageFlagAustralia),
                                 ),
                               ],
                             ),
                             SizedBox(height: 5,),

                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Expanded(
                                   child: Padding(
                                     padding: const EdgeInsets.only(left: 15, right: 10),
                                     child: RaisedButton(
                                       shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(25.0),
                                         side: BorderSide(color: AppColors.colorPrimary),
                                       ),
                                       color: Colors.white,
                                       child: Text(enter_contest_code.toUpperCase(), style: TextStyle(fontSize: 11, color: AppColors.colorPrimary, fontWeight: FontWeight.w400),),
                                       padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                                       onPressed: () {
                                         Navigator.of(context).pushNamed(AppRouters.CONTEST_CODE_SCREEN);
                                       },
                                     ),
                                   ),
                                 ),
                                 Expanded(
                                   child: Padding(
                                     padding: const EdgeInsets.only(left: 10, right: 15),
                                     child: RaisedButton(
                                       shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(25.0),
                                         side: BorderSide(color: AppColors.colorPrimary),
                                       ),
                                       color: Colors.white,
                                       child: Text(create_contest.toUpperCase(), style: TextStyle(fontSize: 11, color: AppColors.colorPrimary, fontWeight: FontWeight.w400),),
                                       padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                                       onPressed: () {
                                         Navigator.of(context).pushNamed(AppRouters.CREATE_CONTEST_SCREEN);
                                       },
                                     ),
                                   ),
                                 ),
                               ],
                             )

                           ],
                         ),
                       ),

                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                              color: AppColors.colorWhite,
                              boxShadow: [
                                BoxShadow(color: AppColors.colorGrey, spreadRadius: 1, blurRadius: 5)
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 45,
                                  child: TabBar(
                                      labelColor: AppColors.colorSecondary,
                                      unselectedLabelColor: Colors.grey,
                                      indicatorSize: TabBarIndicatorSize.label,
                                      indicatorColor: AppColors.colorSecondary,
                                      controller: _tabController,
                                      tabs: [
                                        Tab(
                                          child: Text(
                                            contests,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 16),
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            my_contests,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 16),
                                          ),
                                        ),
                                        Tab(
                                          child: Text(
                                            my_teams,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 16),
                                          ),
                                        ),
                                      ]),
                                ),
                                Divider(height: 1, color: AppColors.colorGreyLight,),
                                Container(
                                  height: MediaQuery.of(context).size.height-245,
                                  child: TabBarView(controller: _tabController, children: [
                                    ContestsListBuilderScreen(),
                                    ContestsListBuilderScreen(),
                                    MyTeamsListBuilderScreen(),
                                  ]),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),

            Positioned(
              bottom: 0,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRouters.CREATE_TEAM_SCREEN);
                },
                child: Container(
                  height: 40,
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                      color: AppColors.colorPrimary,
                      boxShadow: [
                        BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 1, blurRadius: 3)
                      ]
                  ),
                  child: Text(create_team.toUpperCase(), style: TextStyle(fontSize: 15, color: AppColors.colorWhite, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),
                ),
              ),
            )

          ],
        ),

      ),
    );
  }
}

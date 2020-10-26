import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/models/player_item_model.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/ui/create_team/player_list_builder.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CreateTeamDashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CreateTeamDashboardScreenState();
}

class CreateTeamDashboardScreenState extends State<CreateTeamDashboardScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;
  int selectedWicketKeeper = 0;
  int selectedBatsmen = 0;
  int selectedAllRounders = 0;
  int selectedBowlers = 0;
  
  List<PlayerItemModel> playersWicketKeeper = new List();
  List<PlayerItemModel> playersBatsmen = new List();
  List<PlayerItemModel> playersAllRounder = new List();
  List<PlayerItemModel> playersBowlers = new List();

  @override
  void initState() {
    super.initState();

    addPlayers();
    _tabController = TabController(vsync: this, length: 4, initialIndex: 0,);
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
                    child: MyCustomAppBar().getTransparentAppBarWithTitle(create_team, Icons.arrow_back_ios, () {
                      Navigator.of(context).pop();
                    }),
                  ),

                  Expanded(
                    child: Align(
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

                                SizedBox(height: 5,),
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
                                    Text(
                                      "Max 7 players from a team",
                                      style: TextStyle(fontSize: 13.0, color: AppColors.colorGreyDark, fontFamily: 'Raleway'),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 15,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  child: StepProgressIndicator(
                                    totalSteps: 11,
                                    currentStep: 6,
                                    size: 20,
                                    selectedColor: AppColors.colorPrimary,
                                    unselectedColor: AppColors.colorGrey,
                                    roundedEdges: Radius.circular(10),
                                    selectedGradientColor: AppWidgets.getCustomGradient2(),
                                    unselectedGradientColor: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [AppColors.colorGrey, AppColors.colorGreyLight],
                                    ),
                                  ),
                                ),

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
                                              'WK($selectedWicketKeeper)',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500, fontSize: 14),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              'BAT($selectedBatsmen)',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500, fontSize: 14),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              'AR($selectedAllRounders)',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500, fontSize: 14),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              'BOWL($selectedBowlers)',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500, fontSize: 14),
                                            ),
                                          ),
                                        ]),
                                  ),
                                  Divider(height: 1, color: AppColors.colorGreyLight,),
                                  Container(
                                    height: MediaQuery.of(context).size.height-305,
                                    child: TabBarView(controller: _tabController, children: [
                                      PlayerListBuilder(playersWicketKeeper),
                                      PlayerListBuilder(playersBatsmen),
                                      PlayerListBuilder(playersAllRounder),
                                      PlayerListBuilder(playersBowlers),
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                          ),

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
                                    TextSpan(text: '7', style: TextStyle(fontSize: 17, color: AppColors.colorWhite, fontFamily: 'Raleway', fontWeight: FontWeight.w600)),
                                    TextSpan(text: '    /    ',),
                                    TextSpan(text: '4', style: TextStyle(fontSize: 17, color: AppColors.colorWhite, fontFamily: 'Raleway', fontWeight: FontWeight.w600)),
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
                                        fontFamily: 'Raleway'
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    "Credit Left",
                                    style: TextStyle(fontSize: 13.0, color: AppColors.colorGreyLight, fontFamily: 'Raleway'),
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
                                          TextSpan(text: '11', style: TextStyle(fontSize: 17, color: AppColors.colorWhite, fontFamily: 'Raleway', fontWeight: FontWeight.w600)),
                                          TextSpan(text: ' / 11',),
                                        ]
                                    ),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    "Players",
                                    style: TextStyle(fontSize: 13.0, color: AppColors.colorGreyLight, fontFamily: 'Raleway'),
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

            Positioned(
              bottom: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRouters.TEAM_PREVIEW_SCREEN);
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.4,
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: AppColors.colorWhite,
                          boxShadow: [
                            BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 1, blurRadius: 3)
                          ],
                        border: new Border.all(width: 2.0, color: AppColors.colorPrimary,),
                      ),
                      child: Text('Team Preview'.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontSize: 15, color: AppColors.colorPrimary, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRouters.CAPTAIN_VICE_CAPTAIN_SCREEN);
                    },
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.4,
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: AppColors.colorPrimary,
                          boxShadow: [
                            BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 1, blurRadius: 3)
                          ]
                      ),
                      child: Text('Continue'.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontSize: 15, color: AppColors.colorWhite, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),),
                    ),
                  )
                ],
              ),
            )

          ],
        ),

      ),
    );
  }

  addPlayers() {
    //Wicket Keepers
    playersWicketKeeper.add(PlayerItemModel('Rohit Sharma', '', 'IND', 'WK', true, 0.0, 10));
    playersWicketKeeper.add(PlayerItemModel('Hashmin Amla', '', 'SA', 'WK', false, 0.0, 9));
    playersWicketKeeper.add(PlayerItemModel('MS Dhoni', '', 'IND', 'WK', true, 0.0, 9));
    playersWicketKeeper.add(PlayerItemModel('Alden Markram', '', 'SA', 'WK', false, 0.0, 8));
    playersWicketKeeper.add(PlayerItemModel('Dale Stylen', '', 'SA', 'WK', true, 0.0, 8));
    playersWicketKeeper.add(PlayerItemModel('Jasprit Bumrah', '', 'IND', 'WK', false, 0.0, 8));
    playersWicketKeeper.add(PlayerItemModel('Tim Seifert', '', 'SA', 'WK', true, 0.0, 7));

    //Batsmen
    playersBatsmen.add(PlayerItemModel('Rohit Sharma', '', 'IND', 'BAT', true, 0.0, 10));
    playersBatsmen.add(PlayerItemModel('Hashmin Amla', '', 'SA', 'BAT', false, 0.0, 10));
    playersBatsmen.add(PlayerItemModel('MS Dhoni', '', 'IND', 'BAT', true, 0.0, 9));
    playersBatsmen.add(PlayerItemModel('Alden Markram', '', 'SA', 'BAT', false, 0.0, 8));
    playersBatsmen.add(PlayerItemModel('Dale Stylen', '', 'SA', 'BAT', true, 0.0, 8));
    playersBatsmen.add(PlayerItemModel('Jasprit Bumrah', '', 'IND', 'BAT', false, 0.0, 7));
    playersBatsmen.add(PlayerItemModel('Tim Seifert', '', 'SA', 'BAT', true, 0.0, 7));

    //All Rounders
    playersAllRounder.add(PlayerItemModel('Rohit Sharma', '', 'IND', 'AR', true, 0.0, 10));
    playersAllRounder.add(PlayerItemModel('Hashmin Amla', '', 'SA', 'AR', false, 0.0, 9.5));
    playersAllRounder.add(PlayerItemModel('MS Dhoni', '', 'IND', 'AR', true, 0.0, 9));
    playersAllRounder.add(PlayerItemModel('Alden Markram', '', 'SA', 'AR', false, 0.0, 8.5));
    playersAllRounder.add(PlayerItemModel('Dale Stylen', '', 'SA', 'AR', true, 0.0, 8));
    playersAllRounder.add(PlayerItemModel('Jasprit Bumrah', '', 'IND', 'AR', false, 0.0, 8));
    playersAllRounder.add(PlayerItemModel('Tim Seifert', '', 'SA', 'AR', true, 0.0, 7));

    //Bowlers
    playersBowlers.add(PlayerItemModel('Rohit Sharma', '', 'IND', 'BOWL', true, 0.0, 10));
    playersBowlers.add(PlayerItemModel('Hashmin Amla', '', 'SA', 'BOWL', false, 0.0, 9.5));
    playersBowlers.add(PlayerItemModel('MS Dhoni', '', 'IND', 'BOWL', true, 0.0, 9));
    playersBowlers.add(PlayerItemModel('Alden Markram', '', 'SA', 'BOWL', false, 0.0, 8.5));
    playersBowlers.add(PlayerItemModel('Dale Stylen', '', 'SA', 'BOWL', true, 0.0, 8.5));
    playersBowlers.add(PlayerItemModel('Jasprit Bumrah', '', 'IND', 'BOWL', false, 0.0, 8));
    playersBowlers.add(PlayerItemModel('Tim Seifert', '', 'SA', 'BOWL', true, 0.0, 7.5));
  }

}
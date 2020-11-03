import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/models/player_item_model.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CaptainViceCaptainScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => CaptainViceCaptainScreenState();
}

class CaptainViceCaptainScreenState extends State<CaptainViceCaptainScreen> {

  List<PlayerItemModel> selectedPlayers = new List();
  String lastHeader = 'none';
  int captainIndex = -1;
  int viceCaptainIndex = -1;

  @override
  void initState() {
    super.initState();
    addPlayers();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [

            Positioned(
              left: -180,
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

            Column(
              children: [
                Container(
                  child: MyCustomAppBar().getTransparentAppBarWithTitle(create_team, Icons.arrow_back_ios, () {
                    Navigator.of(context).pop();
                  }),
                ),

                Container(height: 1, width: width*0.4, color: AppColors.colorGreyExtraLight, margin: EdgeInsets.only(top: 5, bottom: 10),),

                Center(
                  child: Text(
                    "Choose your Captain and Vice Captain",
                    style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: AppFontName),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.transparent,
                        child: Text(
                          "C",
                          style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: AppFontName, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "gets 2x points",
                      style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: AppFontName, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.transparent,
                        child: Text(
                          "C",
                          style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: AppFontName, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "gets 1.5x points",
                      style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: AppFontName, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                Expanded(
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

                        SizedBox(height: 5,),

                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: selectedPlayers.length,
                            itemBuilder: (context, index){
                              if(index > 0) {
                                lastHeader = selectedPlayers[index-1].playerType;
                              }
                            return Column(
                              children: [

                                    lastHeader != selectedPlayers[index].playerType
                                        ?  Padding(
                                          padding: EdgeInsets.only(top: 10, bottom: 10) ,
                                          child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [

                                              Container(color: AppColors.colorPrimary, height: 1.5, width: width*0.2,),

                                              Container(
                                                height: 30,
                                                margin: EdgeInsets.only(left: 10, right: 10),
                                                padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    color: AppColors.colorPrimary,
                                                    boxShadow: [
                                                      BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 1, blurRadius: 3)
                                                    ]
                                                ),
                                                child: Text(selectedPlayers[index].playerTypeComplete, textAlign: TextAlign.center, style: TextStyle(fontSize: 13, color: AppColors.colorWhite, fontWeight: FontWeight.w500, fontFamily: AppFontName),),
                                              ),

                                              Container(color: AppColors.colorPrimary, height: 1.5, width: width*0.2,),

                                          ],
                                        ),
                                        )
                                        : Container(),

                                    Container(
                                      padding: EdgeInsets.all(5),
                                      height: 90,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 50, right: 10),
                                            padding: EdgeInsets.only(left: 35, top: 5, bottom: 5, right: 10),
                                            height: 60,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                color: AppColors.colorWhite,
                                                boxShadow: [
                                                  BoxShadow(color: AppColors.colorGreyExtraLight, spreadRadius: 1, blurRadius: 5)
                                                ]
                                            ),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        selectedPlayers[index].playerName,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                            fontSize: 13.0,
                                                            fontWeight: FontWeight.bold,
                                                            color: AppColors.colorBlack,
                                                            fontFamily: AppFontName
                                                        ),
                                                      ),
                                                      SizedBox(height: 4,),
                                                      Text(
                                                        "${selectedPlayers[index].country} (${selectedPlayers[index].playerType})",
                                                        style: TextStyle(fontSize: 12.0, color: AppColors.colorGrey, fontFamily: AppFontName, fontWeight: FontWeight.w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                                Container(
                                                  margin: const EdgeInsets.all(2),
                                                  padding: EdgeInsets.only(left: 5, right: 5),
                                                  decoration: BoxDecoration(
                                                      color: AppColors.colorPrimaryLight,
                                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(2),
                                                    child: RichText(
                                                      text: TextSpan(
                                                          children: [
                                                            TextSpan(text: 'Points- '.toUpperCase(), style: TextStyle(color: AppColors.colorGreyDark, fontSize: 11, fontWeight: FontWeight.w500, fontFamily: AppFontName)),
                                                            TextSpan(text: '${selectedPlayers[index].points}'.toUpperCase(), style: TextStyle(color: AppColors.colorBlack, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: AppFontName)),
                                                          ]
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 20,),
                                                index == captainIndex
                                                    ? InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          captainIndex = index;
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 26,
                                                        height: 26,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.all(Radius.circular(13)),
                                                          color: AppColors.colorGreyDark,
                                                        ),
                                                        alignment: Alignment.center,
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(2),
                                                          child: Text('C', style: TextStyle(color: AppColors.colorWhite, fontSize: 12),),
                                                        ),
                                                      ),
                                                    )
                                                    : InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          captainIndex = index;
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 26,
                                                        height: 26,
                                                        decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.all(Radius.circular(13)),
                                                            border: Border.all(width: 1, color: AppColors.colorBlack, style: BorderStyle.solid)
                                                        ),
                                                        alignment: Alignment.center,
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(2),
                                                          child: Text('C', style: TextStyle(color: AppColors.colorGreyDark, fontSize: 12),),
                                                        ),
                                                      ),
                                                    ),
                                                SizedBox(width: 10,),
                                                index == viceCaptainIndex
                                                    ? InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      viceCaptainIndex = index;
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 26,
                                                    height: 26,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(13)),
                                                      color: AppColors.colorGreyDark,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(2),
                                                      child: Text('VC', style: TextStyle(color: AppColors.colorWhite, fontSize: 12),),
                                                    ),
                                                  ),
                                                )
                                                    : InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      viceCaptainIndex = index;
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 26,
                                                    height: 26,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.all(Radius.circular(13)),
                                                        border: Border.all(width: 1, color: AppColors.colorBlack, style: BorderStyle.solid)
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(2),
                                                      child: Text('VC', style: TextStyle(color: AppColors.colorGreyDark, fontSize: 12),),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),

                                          Positioned(
                                            left: 5,
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                                  color: AppColors.colorWhite,
                                                  boxShadow: [
                                                    BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 1, blurRadius: 5)
                                                  ]
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundImage: AssetImage(AppImages.userAvatar),
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ],
                                );


                            },),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  addPlayers() {
    //Wicket Keepers
    selectedPlayers.add(PlayerItemModel('Tim Seifert', '', 'SA', 'WK', true, 0.0, 7, playerTypeComplete: 'Wicket - Keeper'));

    //Batsmen
    selectedPlayers.add(PlayerItemModel('Rohit Sharma', '', 'IND', 'BAT', true, 0.0, 10, playerTypeComplete: 'Batsmen'));
    selectedPlayers.add(PlayerItemModel('Hashmin Amla', '', 'SA', 'BAT', false, 0.0, 10));
    selectedPlayers.add(PlayerItemModel('MS Dhoni', '', 'IND', 'BAT', true, 0.0, 9));
    selectedPlayers.add(PlayerItemModel('Alden Markram', '', 'SA', 'BAT', false, 0.0, 8));
    selectedPlayers.add(PlayerItemModel('Dale Stylen', '', 'SA', 'BAT', true, 0.0, 8));

    //All Rounders
    selectedPlayers.add(PlayerItemModel('Alden Markram', '', 'SA', 'AR', false, 0.0, 8.5, playerTypeComplete: 'All - Rounders'));
    selectedPlayers.add(PlayerItemModel('Dale Stylen', '', 'SA', 'AR', true, 0.0, 8));

    //Bowlers
    selectedPlayers.add(PlayerItemModel('Hashmin Amla', '', 'SA', 'BOWL', false, 0.0, 9.5, playerTypeComplete: 'Bowlers'));
    selectedPlayers.add(PlayerItemModel('MS Dhoni', '', 'IND', 'BOWL', true, 0.0, 9));
    selectedPlayers.add(PlayerItemModel('Alden Markram', '', 'SA', 'BOWL', false, 0.0, 8.5));
  }

}
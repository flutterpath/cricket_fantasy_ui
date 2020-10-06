import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rolling_nav_bar/indexed.dart';
import 'package:rolling_nav_bar/rolling_nav_bar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardScreenState();

}

class DashboardScreenState extends State<DashboardScreen> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  Color logoColor;
  int activeIndex;

  var iconData = <IconData>[
    FontAwesomeIcons.home,
    FontAwesomeIcons.trophy,
    FontAwesomeIcons.solidUser,
    FontAwesomeIcons.cog,
  ];

  var badges = <int>[null, null, null, null];

  var iconText = <Widget>[
    Padding(padding: const EdgeInsets.only(top: 3), child: Text('Home'.toUpperCase(), style: TextStyle(color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold)),),
    Padding(padding: const EdgeInsets.only(top: 3), child: Text('Standings'.toUpperCase(), style: TextStyle(color: Colors.black87, fontSize: 12)),),
    Padding(padding: const EdgeInsets.only(top: 3), child: Text('Profile'.toUpperCase(), style: TextStyle(color: Colors.black87, fontSize: 12)),),
    Padding(padding: const EdgeInsets.only(top: 3), child: Text('Settings'.toUpperCase(), style: TextStyle(color: Colors.black87, fontSize: 12)),),
//    Text('Settings'.toUpperCase(), style: TextStyle(color: Colors.grey, fontSize: 12)),
  ];

  var indicatorColors = <Color>[
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
  ];

  double scaledHeight(BuildContext context, double baseSize) {
    return baseSize * (MediaQuery.of(context).size.height / 800);
  }

  double scaledWidth(BuildContext context, double baseSize) {
    return baseSize * (MediaQuery.of(context).size.width / 375);
  }

  List<Widget> get badgeWidgets => indexed(badges)
      .map((Indexed indexed) => indexed.value != null
      ? Text(indexed.value.toString(),
      style: TextStyle(
        color: indexed.index == activeIndex
            ? indicatorColors[indexed.index]
            : Colors.white,
      ))
      : null)
      .toList();

  @override
  void initState() {
    logoColor = Colors.red[600];
    activeIndex = 0;
    super.initState();
  }

  void incrementIndex() {
    setState(() {
      activeIndex = activeIndex < (iconData.length - 1) ? activeIndex + 1 : 0;
      print(activeIndex);
    });
  }

  // ignore: unused_element
  _onAnimate(AnimationUpdate update) {
    setState(() {
      logoColor = update.color;
    });
  }

  _onTap(int index) {
    activeIndex = index;
  }

  void _incrementBadge() {
    badges[activeIndex] =
    badges[activeIndex] == null ? 1 : badges[activeIndex] + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    double navBarHeight = scaledHeight(context, 70);

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,

        drawer: Drawer(
          child: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    const Color(0xFFF78B6B),
                    const Color(0xFF7B422F),
                    const Color(0xFF251707),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 0.7, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Column(
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        AppWidgets.getCircularAvatar(80, AppImages.userAvatar),
                        SizedBox(height: 20,),
                        Text("UserName", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.colorWhite),),
                        SizedBox(height: 5,),
                        Text("useremail@gmail.com", style: TextStyle(fontSize: 14, color: AppColors.colorWhite),),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                        ),
                        SizedBox(height: 30,),

                        Row(
                          children: [

                            SizedBox(width: 10,),

                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,)),
                                    onTap: () {},
                                  )
                              ),
                            ),

                            SizedBox(width: 20,),

                            Text(myProfile.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                          child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                        ),

                        Row(
                          children: [

                            SizedBox(width: 10,),

                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,)),
                                    onTap: () {},
                                  )
                              ),
                            ),

                            SizedBox(width: 20,),

                            Text(myBalance.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                          child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                        ),

                        Row(
                          children: [

                            SizedBox(width: 10,),

                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,)),
                                    onTap: () {},
                                  )
                              ),
                            ),

                            SizedBox(width: 20,),

                            Text(notifications.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                          child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                        ),

                        Row(
                          children: [

                            SizedBox(width: 10,),

                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,)),
                                    onTap: () {},
                                  )
                              ),
                            ),

                            SizedBox(width: 20,),

                            Text(myReferrals.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                          child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                        ),

                        Row(
                          children: [

                            SizedBox(width: 10,),

                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,)),
                                    onTap: () {},
                                  )
                              ),
                            ),

                            SizedBox(width: 20,),

                            Text(infoAndSettings.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                          child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                        ),

                        Row(
                          children: [

                            SizedBox(width: 10,),

                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(25)),
                                  border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: InkWell(
                                    child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,)),
                                    onTap: () {},
                                  )
                              ),
                            ),

                            SizedBox(width: 20,),

                            Text(pointSystem.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                          child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: Border.all(width: 2, color: Colors.white, style: BorderStyle.solid)
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: InkWell(
                              child: Row(
                                children: [
                                  SizedBox(width: 15,),
                                  Text(logOut.toUpperCase(), style: TextStyle(fontSize: 15, color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                                  SizedBox(width: 15,),
                                ],
                              ),
                              onTap: () {},
                            )
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),

        body: Container(

          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFFF78B6B),
                  const Color(0xFF7B422F),
                  const Color(0xFF251707),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 0.7, 1.0],
                tileMode: TileMode.clamp),
          ),

          child: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    const Color(0xFFF78B6B),
                    const Color(0xFF7B422F),
                    const Color(0xFF251707),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 0.7, 1.0],
                  tileMode: TileMode.clamp),
            ),

            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  /**  ------ APP BAR ------  */
                  Container(
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            child: Image.asset(AppImages.iconMenu, width: 35, height: 35,),
                            onTap: () {
                              scaffoldKey.currentState.openDrawer();
                            },
                          ),
                          SizedBox(width: 10,),
                          AppWidgets.getCircularAvatar(35, AppImages.userAvatar),
                          SizedBox(width: 10,),
                          Text(league, style: TextStyle(fontSize: 20, color: AppColors.colorWhite),)
                        ],
                      ),
                    ),
                  ),


                  /**  ------ BODY & BOTTOM TAB-BAR ------  */
                  Container(

                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height- 100,

//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
//                      color: Colors.white,
//                      boxShadow: [
//                        BoxShadow(color: AppColors.colorWhite, spreadRadius: 2, blurRadius: 5),
//                      ],
//                    ),

                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            /**  ------ BODY  ------  */
                            Expanded(child: Text('Hello')),

                            /**  ------ BOTTOM TAB-BAR ------  */
                            Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: AppColors.colorPrimary, spreadRadius: 2, blurRadius: 10),
                                ],
                              ),

                              child: ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                                child: Container(
                                  // bottom: 0,
                                  height: navBarHeight,
                                  width: MediaQuery.of(context).size.width,

                                  // Option 1: Recommended
                                  child: RollingNavBar.iconData(
                                    activeBadgeColors: <Color>[
                                      Colors.white,
                                    ],
                                    activeIndex: activeIndex,
                                    animationCurve: Curves.linear,
                                    animationType: AnimationType.roll,
                                    baseAnimationSpeed: 200,
                                    badges: badgeWidgets,
                                    iconData: iconData,
                                    iconColors: <Color>[Colors.black87],
                                    iconText: iconText,
                                    indicatorColors: indicatorColors,
                                    iconSize: 20,
                                    indicatorRadius: scaledHeight(context, 30),
                                    onAnimate: _onAnimate,
                                    onTap: _onTap,
                                  ),

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),

      ),
    );
  }

}
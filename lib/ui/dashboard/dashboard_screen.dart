import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/ui/dashboard/home_screen.dart';
import 'package:fantasy_app/ui/dashboard/my_matches_screen.dart';
import 'package:fantasy_app/ui/dashboard/my_profile_screen.dart';
import 'package:fantasy_app/ui/dashboard/setting_screen.dart';
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
  PageController pageController;
  Color logoColor;
  int activeIndex;
  String appBarTitle;

  var iconData = <IconData>[
    FontAwesomeIcons.home,
    FontAwesomeIcons.trophy,
    FontAwesomeIcons.solidUser,
    FontAwesomeIcons.cog,
  ];

  var badges = <int>[null, null, null, null];

  var iconText = <Widget>[
    Padding(padding: const EdgeInsets.only(top: 3), child: Text('Home'.toUpperCase(), style: TextStyle(color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Raleway')),),
    Padding(padding: const EdgeInsets.only(top: 3), child: Text('My Matches'.toUpperCase(), style: TextStyle(color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Raleway')),),
    Padding(padding: const EdgeInsets.only(top: 3), child: Text('Profile'.toUpperCase(), style: TextStyle(color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Raleway')),),
    Padding(padding: const EdgeInsets.only(top: 3), child: Text('Settings'.toUpperCase(), style: TextStyle(color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Raleway')),),
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
    appBarTitle = 'League';
    activeIndex = 0;
    super.initState();
    pageController = PageController(
        initialPage: activeIndex
    );
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
//    setState(() {
      activeIndex = index;
      pageController.jumpToPage(activeIndex/*, duration: Duration(seconds: 1), curve: Curves.easeInOut*/);
//    });
  }

  void _incrementBadge() {
    badges[activeIndex] =
    badges[activeIndex] == null ? 1 : badges[activeIndex] + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double navBarHeight = scaledHeight(context, 70);

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.colorWhite,

        /**  ------ DRAWER SIDE MENU ------  */
        drawer: Drawer(
          child: Container(
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [
                      AppColors.colorPrimary,
                      AppColors.colorGradient,
                      AppColors.colorSecondary,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(0.0, 1.0),
                    stops: [0.0, 0.85, 1.0],
                    tileMode: TileMode.clamp),
              ),
            child: CustomPaint(
              painter: HeaderCurvedContainer(),
              child: Column(
                children: [

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          AppWidgets.getCircularAvatar(80, AppImages.userAvatar),
                          SizedBox(height: 30,),
                          Text("UserName", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.colorWhite),),
                          SizedBox(height: 5,),
                          Text("useremail@gmail.com", style: TextStyle(fontSize: 14, color: AppColors.colorWhite),),
                          SizedBox(height: 80,),

                          /** ---- PROFILE ----- */
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                              activeIndex = 2;
                              pageController.jumpToPage(activeIndex/*, duration: Duration(seconds: 1), curve: Curves.easeInOut*/);
                            },
                            child: Row(
                              children: [

                                SizedBox(width: 10,),

                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(25)),
                                      border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,))
                                  ),
                                ),

                                SizedBox(width: 20,),

                                Text(myProfile.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                            child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                          ),

                          /** ---- MY BALANCE ----- */
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(AppRouters.MY_BALANCE_SCREEN);
                            },
                            child: Row(
                              children: [

                                SizedBox(width: 10,),

                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(25)),
                                      border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,))
                                  ),
                                ),

                                SizedBox(width: 20,),

                                Text(myBalance.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                            child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                          ),

                          /** ---- NOTIFICATIONS ----- */
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(AppRouters.NOTIFICATIONS_SCREEN);
                            },
                            child: Row(
                              children: [

                                SizedBox(width: 10,),

                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(25)),
                                      border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,))
                                  ),
                                ),

                                SizedBox(width: 20,),

                                Text(notifications.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                            child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                          ),

                          /** ---- MY REFERRALS ----- */
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(AppRouters.MOBILE_SCREEN);
                            },
                            child: Row(
                              children: [

                                SizedBox(width: 10,),

                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(25)),
                                      border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,))
                                  ),
                                ),

                                SizedBox(width: 20,),

                                Text(myReferrals.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                            child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                          ),

                          /** ---- MY INFO & SETTINGS ----- */
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(AppRouters.UPDATE_PROFILE_SCREEN);
                            },
                            child: Row(
                              children: [

                                SizedBox(width: 10,),

                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(25)),
                                      border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,))
                                  ),
                                ),

                                SizedBox(width: 20,),

                                Text(infoAndSettings.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                            child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                          ),

                          /** ---- POINT SYSTEM ----- */
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(AppRouters.MOBILE_SCREEN);
                            },
                            child: Row(
                              children: [

                                SizedBox(width: 10,),

                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(25)),
                                      border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,))
                                  ),
                                ),

                                SizedBox(width: 20,),

                                Text(pointSystem.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 50,),
                            child: Divider(height: 1,color: AppColors.colorGreyExtraLight,),
                          ),

                          /** ---- SETTINGS ----- */
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                              activeIndex = 3;
                              pageController.jumpToPage(activeIndex/*, duration: Duration(seconds: 1), curve: Curves.easeInOut*/);
                            },
                            child: Row(
                              children: [

                                SizedBox(width: 10,),

                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(25)),
                                      border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: SizedBox(width: 30, height: 30, child: Icon(Icons.person, color: AppColors.colorWhite,))
                                  ),
                                ),

                                SizedBox(width: 20,),

                                Text(settings.toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 15),)

                              ],
                            ),
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
        ),

        body: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  AppColors.colorPrimary,
                  AppColors.colorGradient,
                  AppColors.colorSecondary,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          child: Image.asset(AppImages.iconMenu, width: 35, height: 35,),
                          onTap: () {
                            scaffoldKey.currentState.openDrawer();
                          },
                        ),
                        SizedBox(width: 10,),
//                        AppWidgets.getCircularAvatar(35, AppImages.userAvatar),
//                        SizedBox(width: 10,),
                        Text(appBarTitle, style: TextStyle(fontSize: 20, color: AppColors.colorWhite),)
                      ],
                    ),
                  ),
                ),


                /**  ------ BODY  ------  */
                Expanded(
                  child: Container(

                    width: width,

                    child: PageView(
                      controller: pageController,
                      children: [
                        HomeScreen(),
                        MyMatchesScreen(),
                        MyProfileScreen(),
                        SettingScreen()
                      ],
                      onPageChanged: (pageIndex) {
                        setState(() {
                          activeIndex = pageIndex;
                        });
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

        /**  ------ BOTTOM TAB-BAR ------  */
          bottomNavigationBar: Container(

            height: 80,
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
                width: width,

                // Option 1: Recommended
                child: RollingNavBar.iconData(
                  activeBadgeColors: <Color>[
                    Colors.white,
                  ],
                  activeIndex: activeIndex,
                  animationCurve: Curves.easeOut,
                  animationType: AnimationType.roll,
                  baseAnimationSpeed: 300,
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

      ),
    );
  }

  Widget getTabView(int index) {
    switch(index) {
      case 0:
        setState(() {
          appBarTitle = 'League';
        });
        return HomeScreen();
        break;
      case 1:
        setState(() {
          appBarTitle = 'My Matches';
        });
        return MyMatchesScreen();
        break;
      case 2:
        setState(() {
          appBarTitle = 'My Profile';
        });
        return MyProfileScreen();
        break;
      case 3:
        setState(() {
          appBarTitle = 'Settings';
        });
        return SettingScreen();
        break;
      default:
        setState(() {
          appBarTitle = 'League';
        });
        return HomeScreen();
    }
  }

}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColors.colorSecondary;
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 250.0, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
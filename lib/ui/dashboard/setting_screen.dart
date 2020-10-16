import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/widgets/custom_setting.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              CustomSettingPage(
                title: invite_friends,
                icon: Icons.person_add,
                routeName: AppRouters.INVITE_FRIENDS_SCREEN,
              ),
              CustomSettingPage(
                title: CONTEST_INVITE_CODE,
                icon: Icons.mail_outline,
                routeName: AppRouters.INVITE_CODE_SCREEN,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRouters.ACCOUNT_VERIFICATION_SCREEN);
                  },
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: AppColors.colorWhite,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(color: Colors.grey[300], spreadRadius: 1, blurRadius: 5),
                        ]
                    ),
                    child: Icon(
                      Icons.account_balance,
                      size: 20,
                      color: AppColors.colorGreyDark,
                    ),
                  ),
                  trailing: Container(
                    width: 200,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.colorGreyExtraLight,
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(50),
                                right: Radius.circular(50),
                              ),
                            ),
                            child: Text(
                              VERIFIED.toUpperCase(),
                              style: TextStyle(color: AppColors.colorGreen, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
                            ),
                          ),
                          Icon(Icons.navigate_next),
                        ]),
                  ),
                  title: Text(
                    KYC,
                    style: TextStyle(fontSize: 15, fontFamily: 'Raleway', fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Divider(
                height: 3,
                thickness: 1,
              ),
              CustomSettingPage(
                title: FANTASY_POINTS_SYSTEM,
                icon: Icons.ac_unit,
                routeName: AppRouters.FANTASY_POINT_SYSTEM_SCREEN,
              ),
              CustomSettingPage(
                title: HOW_TO_PLAY,
                icon: Icons.find_in_page,
                routeName: AppRouters.HOW_TO_PLAY_SCREEN,
              ),
              CustomSettingPage(
                title: ABOUT_US,
                icon: Icons.group,
                routeName: AppRouters.ABOUT_US_SCREEN,
              ),
              CustomSettingPage(
                title: LEGALITY,
                icon: FontAwesomeIcons.shieldAlt,
                routeName: AppRouters.LEGALITY_SCREEN,
              ),
              CustomSettingPage(
                title: TERMS_AND_CONDITIONS,
                icon: FontAwesomeIcons.fileAlt,
                routeName: AppRouters.TERMS_AND_CONDITIONS_SCREEN,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

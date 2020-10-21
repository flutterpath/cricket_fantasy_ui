import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/ui/notifications/notifications_screen.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateContestScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CreateContestScreenState();
}

class CreateContestScreenState extends State<CreateContestScreen> {

  bool changeRadioNo = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomPaint(
          painter: NotificationsContainer(),
          child: Column(
            children: [
              Container(
                child: MyCustomAppBar().getTransparentAppBarWithTitle(create_own_contest, Icons.arrow_back_ios),
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                    padding: EdgeInsets.only(top: 10),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: AppColors.colorWhite,
                        boxShadow: [
                          BoxShadow(color: AppColors.colorGrey, spreadRadius: 1, blurRadius: 10)
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 20,),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage: AssetImage(AppImages.imageFlagIndia),
                                ),
                                SizedBox(width: 10,),
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
                                SizedBox(width: 10,),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage: AssetImage(AppImages.imageFlagAustralia),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(dummy_date, textAlign: TextAlign.end, style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.colorPrimary, fontFamily: 'Raleway'),),
                            ),

                          ],
                        ),

                        Container(
                            width: MediaQuery.of(context).size.width-80,
                            padding: EdgeInsets.only(top: 10, bottom: 20),
                            child: Divider(height: 1, color: AppColors.colorGrey,)
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: AppWidgets.getTextFieldFloatLabelWithInBorder(give_your_contest_a_name, TextInputType.name, Icons.account_balance),
                        ),

                        SizedBox(height: 20,),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: AppWidgets.getTextFieldFloatLabelWithInBorder(total_wining_amount, TextInputType.name, Icons.account_balance),
                        ),
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          padding: const EdgeInsets.only(left: 40, right: 20, top: 5),
                          child: Text('Minimum Amount: 0', style: TextStyle(color: AppColors.colorPrimary, fontSize: 10),),
                        ),

                        SizedBox(height: 20,),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: AppWidgets.getTextFieldFloatLabelWithInBorder(contest_size, TextInputType.name, Icons.account_balance),
                        ),
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          padding: const EdgeInsets.only(left: 40, right: 20, top: 5),
                          child: Text('Minimum Amount: 2', style: TextStyle(color: AppColors.colorPrimary, fontSize: 10),),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                changeRadioNo = !changeRadioNo;
                              });
                            },
                            child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20,),
                                  changeRadioNo==true ?
                                      Icon(FontAwesomeIcons.solidCheckCircle, color: AppColors.colorPrimary, size: 25,)
                                      : Icon(FontAwesomeIcons.circle, color: AppColors.colorPrimary, size: 25,),
                                    SizedBox(width: 5,),
                                    Text('Allow friends to join with multiple teams',  style: TextStyle(fontSize: 13.0, fontFamily: 'Raleway', fontWeight: FontWeight.w400, color: AppColors.colorGreyDark),),
                                    SizedBox(width: 20,),
                                  ],
                                )
                            ),
                          ),
                        ),

                        Center(
                          child: Container(
                              width: MediaQuery.of(context).size.width-80,
                              padding: EdgeInsets.only(top: 10, bottom: 20),
                              child: Divider(height: 1, color: AppColors.colorGrey,)
                          ),
                        ),

                        RichText(
                          text: TextSpan(
                              style: TextStyle(fontSize: 13, color: AppColors.colorGreyDark, fontFamily: 'Raleway', fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(text: 'Entry Per Team:  ',),
                                TextSpan(text: '\$10', style: TextStyle(fontSize: 15, color: AppColors.colorPrimary, fontFamily: 'Raleway', fontWeight: FontWeight.w600)),
                              ]
                          ),
                        ),

                        Text('Entry is calculated based on total prize amount & contest size.', style: TextStyle(color: AppColors.colorGrey, fontSize: 10),),

                        SizedBox(height: 50,),

                      ],
                  ),
                  ),

                  Positioned(
                    bottom: -40,
                    child: InkWell(
                      onTap: () {
//                            Navigator.of(context).pushNamed(AppRouters.WITHDRAW_SCREEN);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 30),
                        padding: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          gradient: AppWidgets.getCustomGradient(),
                        ),
                        child: Text('Join This Contest'.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

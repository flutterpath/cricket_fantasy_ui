import 'package:dotted_border/dotted_border.dart';
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class InviteFriendsScreen extends StatefulWidget {
  @override
  _InviteFriendsScreenState createState() => _InviteFriendsScreenState();
}

class _InviteFriendsScreenState extends State<InviteFriendsScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _invitationCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(


        body: Stack(
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


            Column(
              children: [

                Container(
                  child: MyCustomAppBar().getTransparentAppBarWithTitle(invite_friends, Icons.arrow_back_ios, () {
                    Navigator.of(context).pop();
                  }),
                ),

                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(height: height*0.08,),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: AppColors.colorWhite,
                              boxShadow: [
                                BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 2, blurRadius: 10),
                              ]
                          ),
                          child: Column(
                            children: <Widget>[

                              SizedBox(height: height*0.04,),

                              Container(
                                child: Text(
                                  'Join Your Contest'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.colorBlack,
                                      fontFamily: AppFontName
                                  ),
                                ),
                              ),

                              Center(child: Padding(
                                padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                                child: Divider(height: 1, color: AppColors.colorGrey,),
                              ),),

                              SizedBox(height: height*0.02,),

                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ColorFiltered(
                                        colorFilter: ColorFilter.mode(AppColors.colorPrimary, BlendMode.hue),
                                        child: Image.asset(AppImages.imageBannerReferFriend,)
                                    )
                                  ],
                                ),
                              ),

                              SizedBox(height: height*0.04,),

                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 50, right: 50),
                                child: DottedBorder(
                                  color: AppColors.colorPrimary,
                                  borderType: BorderType.RRect,
                                  padding: EdgeInsets.only(top: height*0.04, bottom: height*0.04),
                                  dashPattern: [8, 4],
                                  strokeWidth: 2,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('FAN_4BFR74H8', style: TextStyle(fontSize:20 , color: AppColors.colorPrimary, fontFamily: AppFontName),),
                                      SizedBox(width: 20,),
                                      Builder(
                                        builder: (BuildContext context) {
                                          return InkWell(
                                              onTap: () {
                                                //copy to clipboard code
                                              },
                                              child: Icon(Icons.content_copy, size: 30, color: AppColors.colorPrimary,)
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),


                              SizedBox(height: height*0.04,),

                              InkWell(
                                onTap: () {

                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 50, right: 50),
                                  padding: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    gradient: AppWidgets.getCustomGradient(),
                                  ),
                                  child: Text('Join This Contest'.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontFamily: AppFontName, color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                                ),
                              ),


                              SizedBox(height: height*0.06,),

                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: height*0.08,),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

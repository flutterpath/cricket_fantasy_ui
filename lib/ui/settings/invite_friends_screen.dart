import 'package:clipboard_manager/clipboard_manager.dart';
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
                  child: MyCustomAppBar().getTransparentAppBarWithTitle(invite_friends, Icons.arrow_back_ios),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: AppColors.colorWhite,
                        boxShadow: [
                          BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 2, blurRadius: 10),
                        ]
                    ),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: <Widget>[

                        SizedBox(height: 30,),

                        Container(
                          child: Text(
                            'Join Your Contest'.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: AppColors.colorBlack,
                                fontFamily: 'Raleway'
                            ),
                          ),
                        ),

                        Center(child: Padding(
                          padding: const EdgeInsets.only(left: 60, right: 60, top: 10, bottom: 10),
                          child: Divider(height: 1, color: AppColors.colorGrey,),
                        ),),

                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 30),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(AppImages.imageBannerReferFriend,)
                              ],
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 50, right: 50),
                          child: DottedBorder(
                            color: AppColors.colorPrimary,
                            borderType: BorderType.RRect,
                            padding: EdgeInsets.only(top: 30, bottom: 30),
                            dashPattern: [8, 4],
                            strokeWidth: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('FAN_4BFR74H8', style: TextStyle(fontSize:20 , color: AppColors.colorPrimary, fontFamily: 'Raleway'),),
                                SizedBox(width: 20,),
                                Builder(
                                  builder: (BuildContext context) {
                                    return InkWell(
                                        onTap: () {
                                          ClipboardManager.copyToClipBoard("FAN_4BFR74H8").then((result) {
                                            final snackBar = SnackBar(
                                              content: Text('Copied to Clipboard'),
                                              backgroundColor: AppColors.colorPrimary,
                                            );
                                            Scaffold.of(context).showSnackBar(snackBar);
                                          });
                                        },
                                        child: Icon(Icons.content_copy, size: 30, color: AppColors.colorPrimary,)
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 30),
                            padding: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              gradient: AppWidgets.getCustomGradient(),
                            ),
                            child: Text('Join This Contest'.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                          ),
                        ),

                        SizedBox(height: 30,)

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
}

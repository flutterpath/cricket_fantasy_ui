import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:fantasy_app/widgets/simpleTextField.dart';
import 'package:flutter/material.dart';

class InviteCodeScreen extends StatefulWidget {
  @override
  _InviteCodeScreenState createState() => _InviteCodeScreenState();
}

class _InviteCodeScreenState extends State<InviteCodeScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _invitationCode = TextEditingController();

  String invitationValidator(String value) {
    if (value.length < 4) {
      return invitation_error;
    } else {
      return null;
    }
  }

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
                  child: MyCustomAppBar().getTransparentAppBarWithTitle(CONTEST_INVITE_CODE, Icons.arrow_back_ios),
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
                          padding: const EdgeInsets.only(top: 50, bottom: 30),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(AppImages.iconInvite, height: 80, width: 80,)
                              ],
                            ),
                          ),
                        ),

                        Container(
                          //color: Colors.deepPurple,
                          padding: EdgeInsets.only(top: 5, left: 60, right: 60, bottom: 30),
                          child: SimpleTextField(
                            onTap: () {},
                            readOnly: false,
                            inputType: TextInputType.name,
                            inputBorder: UnderlineInputBorder(borderSide: new BorderSide(color: AppColors.colorGreyLight)),
                            hint: "Enter Invite Code",
                            textAlign: TextAlign.center,
                            maxLength: 15,
                            textCapitalization: TextCapitalization.characters,
                          ),
                        ),

                        InkWell(
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

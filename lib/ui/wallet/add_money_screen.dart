import 'package:fantasy_app/animation/fadeAnimation.dart';
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:fantasy_app/widgets/filled_button.dart';
import 'package:fantasy_app/widgets/simpleTextField.dart';
import 'package:fantasy_app/widgets/textWidget.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddMoneyScreen extends StatefulWidget {
  @override
  _AddMoneyScreenState createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
  TextEditingController _moneyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: height*0.7,
                    decoration: BoxDecoration(
                      color: AppColors.colorPrimary,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: MyCustomAppBar().getTransparentAppBarWithTitle(add_money, Icons.arrow_back_ios, () {
                            Navigator.of(context).pop();
                          }),
                        ),
                        Positioned(
                            top: 0,
                            left: 10,
                            right: 10,
                            child: FadeAnimation(1.4, Container(
                              margin: EdgeInsets.only(top: height*0.1),
                              height: height*0.07,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: width*0.03,),
                                  AppWidgets.getCircularAvatar(height*0.05, AppImages.userAvatar),
                                  SizedBox(width: width*0.02,),
                                  Container(
                                    width: width*0.7,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            TextWidgetBold(
                                              data: "Erik Walters",
                                              fontSize: 18,
                                            ),
                                            TextWidgetBold(
                                              data: "Available Balance",
                                              fontSize: 14,
                                            ),
                                          ],
                                        ),
                                        TextWidgetBold(
                                          data: "\$ 2570",
                                          fontSize: 18,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),)
                        ),
                        Positioned(
                          child: FadeAnimation(1.6, Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextWidget(
                                    data: "Add Money to Wallet",
                                    style: TextStyle(color: AppColors.colorGreyExtraLight, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: AppFontName),
                                  ),
                                  SizedBox(height: 10,),
                                  SimpleTextField(
                                    textAlign: TextAlign.center,
                                    inputType: TextInputType.number,
                                    textController: _moneyController,
                                    hintColor: AppColors.colorGreyExtraLight,
                                    hint: "\$0",
                                    hintSize: 70,
                                    maxLength: 6,
                                    maxLines: null,
                                    readOnly: false,
                                    inputTextColor: Colors.white,
                                    textDirection: TextDirection.rtl,
                                    inputTextSize: 70,
                                  )
                                ],
                              )
                            ),
                          )),
                        ),
                        Positioned(
                          bottom: 10,
                            child: FadeAnimation(1.8, Container(
                              width: width,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FilledButton(
                                    onTap: (){
                                      setState(() {
                                        _moneyController.text = "50";
                                      });
                                    },
                                    buttonText: "\$50",
                                    textColor: Colors.black,
                                    buttonColor: Colors.white,
                                    width: width*0.2,
                                    radius: 30,
                                  ),
                                  FilledButton(
                                    onTap: (){
                                      setState(() {
                                        _moneyController.text = "100";
                                      });
                                    },
                                    buttonText: "\$100",
                                    textColor: Colors.black,
                                    buttonColor: Colors.white,
                                    width: width*0.2,
                                    radius: 30,
                                  ),
                                  FilledButton(
                                    onTap: (){
                                      setState(() {
                                        _moneyController.text = "500";
                                      });
                                    },
                                    buttonText: "\$500",
                                    textColor: Colors.black,
                                    buttonColor: Colors.white,
                                    width: width*0.2,
                                    radius: 30,
                                  ),
                                  FilledButton(
                                    onTap: (){
                                      setState(() {
                                        _moneyController.text = "1000";
                                      });
                                    },
                                    buttonText: "\$1000",
                                    textColor: Colors.black,
                                    buttonColor: Colors.white,
                                    width: width*0.2,
                                    radius: 30,
                                  )
                                ],
                              ),
                            ),
                            )
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        bottomSheet: FadeAnimation(1, Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: AppColors.colorPrimary,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                  onPressed: (){},
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.plus, color: Colors.white, size: 25,),
                      SizedBox(width: 10,),
                      TextWidget(
                        data: "Add Money",
                        style: TextStyle(color: AppColors.colorGreyExtraLight, fontSize: 18, fontWeight: FontWeight.w500, fontFamily: AppFontName),
                      ),
                    ],
                  )
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
import 'package:fantasy_app/animation/fadeAnimation.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:fantasy_app/widgets/filled_button.dart';
import 'package:fantasy_app/widgets/iconButton.dart';
import 'package:fantasy_app/widgets/round_button.dart';
import 'package:fantasy_app/widgets/simpleTextField.dart';
import 'package:fantasy_app/widgets/textWidget.dart';

import 'package:flutter/material.dart';

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
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: height*0.7,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top : 30,
                        left: 10,
                        child: Align(
                        alignment: Alignment.bottomLeft,
                        child: IconButton1(
                          icon: Icons.arrow_back_ios,
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          iconColor: Colors.white,
                        ),
                      ),),
                      Positioned(
                        top: 20,
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
                                SizedBox(width: width*0.04,),
                                AppWidgets.getCircularAvatar(height*0.06, AppImages.imageMobileScreen),
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
                                            data: "Anil Pradhan",
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
                                  style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                                ),
                                SimpleTextField(
                                  textAlign: TextAlign.center,
                                  inputType: TextInputType.number,
                                  textController: _moneyController,
                                  hint: "\$0",
                                  hintSize: 76,
                                  maxLength: 6,
                                  maxLines: null,
                                  readOnly: false,
                                  inputTextColor: Colors.white,
                                  textDirection: TextDirection.rtl,
                                  inputTextSize: 76,
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
              RoundButton(
                buttonColor: Colors.black,
                onPressed: (){},
                child: Icon(Icons.account_balance_wallet, color: Colors.white, size: 30,),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
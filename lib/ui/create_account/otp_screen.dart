
import 'package:fantasy_app/animation/fadeAnimation.dart';
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:fantasy_app/widgets/filled_button.dart';
import 'package:fantasy_app/widgets/iconButton.dart';
import 'package:fantasy_app/widgets/round_button.dart';
import 'package:fantasy_app/widgets/textWidget.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
          color: AppColors.colorPrimaryLight,
          child: Stack(
            children: [

              Positioned(
                left: -50,
                bottom: -60,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: new BoxDecoration(
                      gradient: AppWidgets.getCustomGradient(),
                    ),

                  ),
                ),
              ),

              Positioned(
                top: -40,
                right: -30,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: new BoxDecoration(
                      gradient: AppWidgets.getCustomGradient(),
                    ),

                  ),
                ),
              ),

              Positioned(
                bottom: 80,
                right: -30,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: new BoxDecoration(
                      gradient: AppWidgets.getCustomGradient(),
                    ),

                  ),
                ),
              ),

              Positioned(
                top: 80,
                left: -30,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: new BoxDecoration(
                      gradient: AppWidgets.getCustomGradient(),
                    ),

                  ),
                ),
              ),

              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, bottom: 50, top: 100),
                    child: Container(

                        height: 350,
                        decoration: BoxDecoration(boxShadow: [BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 1, blurRadius: 10),],
                          color: AppColors.colorWhite,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25)),

                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [

                            Positioned(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,right: 30),
                                child: Column(
                                  children: [

                                    SizedBox(height: height*0.12,),
                                    TextWidgetBold(
                                      data: "Verification Code",
                                    ),
                                    SizedBox(
                                      height: height*0.01,
                                    ),
                                    SizedBox(
//                                      width: width*0.5,
                                      child: TextWidget(
                                        data: "Please enter the verification code sent to +919997052132",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Raleway', fontSize: 14),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 5),
                                        child: Form(
                                          child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 30),
                                              child: PinCodeTextField(
                                                appContext: context,
                                                pastedTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
                                                length: 4,
                                                textStyle: TextStyle(color: AppColors.colorSecondary, fontWeight: FontWeight.bold, fontFamily: 'Raleway', fontSize: 23),
                                                obscureText: false,
                                                animationType: AnimationType.slide,
                                                pinTheme: PinTheme(
                                                    shape: PinCodeFieldShape.circle,
                                                    borderRadius: BorderRadius.circular(5),
                                                    fieldHeight: height*0.1,
                                                    fieldWidth: width*0.15,
                                                    activeColor: Colors.black,
                                                    activeFillColor: Colors.white,
                                                    inactiveColor: Colors.black,
                                                    inactiveFillColor: Colors.white,
                                                    selectedColor: Colors.black,
                                                    selectedFillColor: Colors.grey[300]
                                                ),
                                                animationDuration: Duration(milliseconds: 300),
                                                backgroundColor: Colors.white,
                                                enableActiveFill: true,
                                                controller: _otpController,
                                                keyboardType: TextInputType.number, onChanged: (String value) {  },
                                              )),
                                        ),
                                      ),
                                    ),
//                                    Text('Resend'),
                                    FilledButton(
                                      buttonText: "Resend OTP",
                                      width: width*0.3,
                                      radius: 30,
                                      textColor: AppColors.colorWhite,
                                    )
                                  ],
                                ),
                              ),
                            ),

                            Positioned(
                              bottom: -30,
                              right: 80,
                              child: Hero(
                                tag: "arrow",
                                child: RoundButton(
                                  onPressed: (){
                                    Navigator.of(context).pushNamed(AppRouters.DASHBOARD_SCREEN);
                                  },
                                  buttonColor: AppColors.colorSecondary,
                                  child : Icon(
                                    Icons.arrow_forward,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              top: -80,
                              left: width*0.3,
                              child: FadeAnimation(
                                1,
                                Container(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(AppImages.iconLogo, fit: BoxFit.fill,)),
                              ),
                            ),

                          ],
                        )
                    ),
                  ),
                ),
              )

            ],
          )
      ),
    );
  }

}

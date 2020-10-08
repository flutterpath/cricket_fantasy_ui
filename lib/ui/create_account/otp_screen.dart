
import 'package:fantasy_app/animation/fadeAnimation.dart';
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
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
                left: -300,
                bottom: -80,
                child: RotationTransition(
                  turns: new AlwaysStoppedAnimation(45 / 360),
                  child: Container(
                    height: 500,
                    width: 500,
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
                    child: Center(
                      child: Container(
                        color: AppColors.colorWhite,
                        height: 360,
                        width: 350,
                        child: Container(
                          color: AppColors.colorPrimaryLight,
                        ),
                      ),
                    ),

                  ),
                ),
              ),

              Positioned(
                right: -130,
                top: 30,
                child: RotationTransition(
                  turns: new AlwaysStoppedAnimation(45 / 360),
                  child: Container(
                    height: 70,
                    width: 700,
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
                  ),
                ),
              ),

              Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, bottom: 50, top: 100),
                    child: Container(

                        height: height*0.45,
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
                                                pastedTextStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                    fontFamily: 'Raleway'
                                                ),
                                                length: 4,
                                                textStyle: TextStyle(
                                                    color: AppColors.colorSecondary,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Raleway',
                                                    fontSize: 23
                                                ),
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
                              right: -30,
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

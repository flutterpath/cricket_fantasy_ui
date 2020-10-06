
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: IconButton1(
                  icon: Icons.arrow_back_ios,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  iconColor: Colors.black,
                ),
              ),
            ),
            SizedBox(height: height*0.2,),
            TextWidgetBold(
              data: "Verification Code",
            ),
            SizedBox(
              height: height*0.01,
            ),
            SizedBox(
              width: width*0.5,
              child: TextWidget(
                data: "Please enter the verification code sent to +919997052132",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
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
                        ),
                        length: 4,
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
            FilledButton(
              buttonText: "Resend",
              width: width*0.2,
              radius: 30,
            )
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: "arrow",
                child: RoundButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed(AppRouters.DASHBOARD_SCREEN);
                  },
                  buttonColor: Colors.black,
                  child : Icon(
                    Icons.arrow_forward,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

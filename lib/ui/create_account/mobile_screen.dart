import 'package:fantasy_app/animation/fadeAnimation.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/ui/create_account/otp_screen.dart';
import 'package:fantasy_app/widgets/round_button.dart';
import 'package:fantasy_app/widgets/simpleTextField.dart';
import 'package:fantasy_app/widgets/textWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:simple_animations/simple_animations.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  Country _selectedFilteredCupertinoCountry =
  CountryPickerUtils.getCountryByIsoCode('IN');
  TextEditingController _countryCode = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  String countryCode;

  Widget _buildCupertinoSelectedItem(Country country) {
    return Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(width: 8.0),
        Text("+${country.phoneCode}"),
        SizedBox(width: 8.0),
        Flexible(child: Text(country.name))
      ],
    );
  }

  void _openFilteredCupertinoCountryPicker() => showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CountryPickerCupertino(
          backgroundColor: Colors.white,
          itemBuilder: _buildCupertinoSelectedItem,
          pickerSheetHeight: 300.0,
          pickerItemHeight: 35,
          initialCountry: _selectedFilteredCupertinoCountry,
          onValuePicked: (Country country) =>
              setState(() {
                countryCode = "+${country.phoneCode}";
                _countryCode.text = "(+${country.phoneCode})"+" "+country.name;
                _selectedFilteredCupertinoCountry = country;
              } ),
          priorityList: [
            CountryPickerUtils.getCountryByIsoCode('IN'),
            CountryPickerUtils.getCountryByIsoCode('US'),
          ],
        );
      });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                       Positioned(
                         child: FadeAnimation(
                           1,
                           Container(
                              height: height*0.50,
                              child: Image.asset(AppImages.imageMobileScreen, fit: BoxFit.cover,)),
                         ),
                       ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                FadeAnimation(
                1.3,SimpleTextField(
                    onTap: _openFilteredCupertinoCountryPicker,
                    readOnly: true,
                    hint: "Select your country",
                    textController: _countryCode,
                  ),),
                  SizedBox(height: 20,),
              FadeAnimation(
                1.5,SimpleTextField(
                    onTap: (){},
                    readOnly: false,
                    hint: "Your Phone Number",
                  ),),
                ],
              ),
            ),

          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30,bottom: 30),
        child: FadeAnimation(
    1.5,Row(
          children: [
            Expanded(
              flex: 3,
              child: TextWidget(
                data: "By continuing you may receive an one time SMS for verification. Message carrier rates may apply",
              ),
            ),
            Expanded(
              flex: 1,
              child: Hero(
                tag: "arrow",
                child: RoundButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed(AppRouters.OTP_SCREEN);
                  },
                  buttonColor: Colors.black,
                  child : Icon(
                    Icons.arrow_forward,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),),
      ),
    );
  }
}

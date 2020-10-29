import 'package:fantasy_app/animation/fadeAnimation.dart';
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:fantasy_app/widgets/round_button.dart';
import 'package:fantasy_app/widgets/simpleTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  Country _selectedFilteredCupertinoCountry = CountryPickerUtils.getCountryByIsoCode('IN');
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
        return ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: CountryPickerCupertino(
            backgroundColor: AppColors.colorWhite,
//          textStyle: TextStyle(color: AppColors.colorWhite, fontWeight: FontWeight.w500, fontFamily: AppFontName),
            itemBuilder: _buildCupertinoSelectedItem,
            pickerSheetHeight: 250.0,
            pickerItemHeight: 50,
            initialCountry: _selectedFilteredCupertinoCountry,
            useMagnifier: true,
            diameterRatio: 2,
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
          ),
        );
      });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: AppColors.colorPrimaryLight,
        height: height,
        child: Stack(
          alignment: Alignment.center,
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
                margin: const EdgeInsets.only(left: 30, bottom: 50, top: 100),
                height: 280,
                decoration: BoxDecoration(boxShadow: [BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 1, blurRadius: 10),],
                  color: AppColors.colorWhite,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),

                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height*0.1,
                          ),
                          SimpleTextField(
                            onTap: _openFilteredCupertinoCountryPicker,
                            readOnly: true,
                            hint: "Select your country",
                            inputType: TextInputType.name,
                            inputBorder: UnderlineInputBorder(borderSide: new BorderSide(color: AppColors.colorGreyLight)),
                            textController: _countryCode,
                            textCapitalization: TextCapitalization.none,
                          ),

                          SizedBox(
                            height: height*0.02,
                          ),
                          FadeAnimation(
                            1.5,SimpleTextField(
                            onTap: (){},
                            readOnly: false,
                            inputType: TextInputType.number,
                            inputBorder: UnderlineInputBorder(borderSide: new BorderSide(color: AppColors.colorGreyLight)),
                            hint: "Your Phone Number",
                            textCapitalization: TextCapitalization.none,
                          ),),

                          SizedBox(
                            height: height*0.08,
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: -30,
                      right: 10,
                      child: Hero(
                        tag: "arrow",
                        child: RoundButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(AppRouters.OTP_SCREEN);
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
            )

          ],
        )
      ),
    );
  }
}

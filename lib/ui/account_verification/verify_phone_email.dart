import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/color_constants.dart';

class VerifyPhoneEmail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => VerifyPhoneEmailState();

}

class VerifyPhoneEmailState extends State<VerifyPhoneEmail> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: AppColors.colorPrimaryLight, spreadRadius: 2, blurRadius: 10),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                children: [
                  Icon(Icons.email, size: 40, color: AppColors.colorPrimary,),
                  SizedBox(height: 10,),
                  Text(verifyEmailAddress.toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Raleway',),),
                  SizedBox(height: 5,),
                  Container(
                      width: MediaQuery.of(context).size.width-80,
                      child: Divider(height: 1, color: AppColors.colorGreyLight,)
                  ),
                  SizedBox(height: 5,),
                  Text(verifyEmailAddressContent, style: TextStyle(fontSize: 14, fontFamily: 'Raleway',),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      gradient: new LinearGradient(
                          colors: [
                            AppColors.colorPrimary,
                            AppColors.colorGradient,
                            AppColors.colorSecondary,
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 0.7, 1.0],
                          tileMode: TileMode.clamp),
                    ),
                    child: Text(verify.toUpperCase(), style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 20,),
                ]
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: AppColors.colorPrimaryLight, spreadRadius: 2, blurRadius: 10),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  children: [
                    Icon(Icons.phone, size: 40, color: AppColors.colorPrimary,),
                    SizedBox(height: 10,),
                    Text(verifyPhoneNumber.toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Raleway',),),
                    SizedBox(height: 5,),
                    Container(
                        width: MediaQuery.of(context).size.width-80,
                        child: Divider(height: 1, color: AppColors.colorGreyLight,)
                    ),
                    SizedBox(height: 5,),
                    Text(verifyPhoneNumberContent, style: TextStyle(fontSize: 14, fontFamily: 'Raleway',),),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        gradient: new LinearGradient(
                            colors: [
                              AppColors.colorPrimary,
                              AppColors.colorGradient,
                              AppColors.colorSecondary,
                            ],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [0.0, 0.7, 1.0],
                            tileMode: TileMode.clamp),
                      ),
                      child: Text(verify.toUpperCase(), style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 20,),
                  ]
              ),
            ),
          ),
        ),

      ],
    );
  }

}
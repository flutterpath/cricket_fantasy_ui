import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:flutter/material.dart';

class VerifyPhoneEmail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => VerifyPhoneEmailState();

}

class VerifyPhoneEmailState extends State<VerifyPhoneEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [

          Container(
            width: MediaQuery.of(context).size.width-20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey[200], spreadRadius: 2),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  children: [
                    Text(verifyEmailAddress, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(verifyEmailAddressContent, style: TextStyle(fontSize: 15),),
                    FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)
                        ),
                        color: AppColors.colorPrimary,
                        textColor: AppColors.colorWhite,
                        padding: EdgeInsets.all(5),
                        child: Text(
                          verifyEmail.toUpperCase(),
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        )
                    ),
                  ]
              ),
            ),
          ),

        ],
      )
    );
  }

}
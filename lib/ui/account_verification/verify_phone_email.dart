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
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [

          SizedBox(height: 20,),

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
                    Icon(Icons.email, size: 40, color: AppColors.colorPrimary,),
                    SizedBox(height: 10,),
                    Text(verifyEmailAddress.toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Container(
                        width: MediaQuery.of(context).size.width-80,
                        child: Divider(height: 1, color: AppColors.colorGreyLight,)
                    ),
                    SizedBox(height: 5,),
                    Text(verifyEmailAddressContent, style: TextStyle(fontSize: 15),),
                    SizedBox(height: 20,),
                    RaisedButton(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textColor: Colors.white,
                      color: AppColors.colorPrimary,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      child: Text(verify.toUpperCase()),
                      onPressed: () {},
                    ),
                    SizedBox(height: 20,),
                  ]
              ),
            ),
          ),

          SizedBox(height: 30,),

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
                    Icon(Icons.phone, size: 40, color: AppColors.colorPrimary,),
                    SizedBox(height: 10,),
                    Text(verifyPhoneNumber.toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Container(
                        width: MediaQuery.of(context).size.width-80,
                        child: Divider(height: 1, color: AppColors.colorGreyLight,)
                    ),
                    SizedBox(height: 5,),
                    Text(verifyPhoneNumberContent, style: TextStyle(fontSize: 15),),
                    SizedBox(height: 20,),
                    RaisedButton(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textColor: Colors.white,
                      color: AppColors.colorPrimary,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      child: Text(verify.toUpperCase()),
                      onPressed: () {},
                    ),
                    SizedBox(height: 20,),
                  ]
              ),
            ),
          ),

        ],
      )
    );
  }

}
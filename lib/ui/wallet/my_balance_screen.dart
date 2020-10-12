import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/widgets/custom_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBalanceScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [

            Positioned(
              left: -200,
              top: -250,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(260)),
                child: Container(
                  height: 500,
                  width: 550,
                  color: AppColors.colorSecondary,

                ),
              ),
            ),


            Column(
              children: [

                Container(
                  child: MyCustomAppBar().getTransparentAppBarWithTitle(my_wallet, Icons.arrow_back_ios),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 30, left: 90),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Amount".toUpperCase(),
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: AppColors.colorWhite,
                              fontFamily: 'Raleway'
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "₹400".toUpperCase(),
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.colorWhite,
                              fontFamily: 'Raleway'
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: AppColors.colorWhite,
                      boxShadow: [
                        BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 2, blurRadius: 10),
                      ]
                    ),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: <Widget>[

                        SizedBox(height: 30,),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text(
                                "Deposit",
                                style: TextStyle(fontSize: 15.0, color: AppColors.colorGreyDark, fontFamily: 'Raleway'),
                              ),

                              Text(
                                "\$40",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'Raleway'
                                ),
                              ),

                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Divider(
                            thickness: 1,
                            color: AppColors.colorGreyLight,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text(
                                "Winning",
                                style: TextStyle(fontSize: 15.0, color: AppColors.colorGreyDark, fontFamily: 'Raleway'),
                              ),

                              Text(
                                "\$80",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: 'Raleway'
                                ),
                              ),

                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Divider(
                            thickness: 1,
                            color: AppColors.colorGreyLight,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text(
                                "Bonus",
                                style: TextStyle(fontSize: 15.0, color: AppColors.colorGreyDark, fontFamily: 'Raleway'),
                              ),

                              Text(
                                "\$10",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontFamily: 'Raleway'
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(height: 10,),

                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(AppRouters.ADD_MONEY_SCREEN);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 50, right: 50),
                            padding: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: AppColors.colorSecondary
                            ),
                            child: Text(add_money.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                          ),
                        ),

                        SizedBox(height: 20,),

                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(AppRouters.WITHDRAW_SCREEN);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 50, right: 50),
                            padding: EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                              color: AppColors.colorSecondary
                            ),
                            child: Text(withdraw_money.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                          ),
                        ),

                        SizedBox(height: 30,)

                      ],
                    ),
                  ),
                ),

                SizedBox(height: 60,),

                Divider(
                  height: 3,
                  thickness: 1,
                ),

                CustomSettingPage(
                  title: my_transactions,
                  icon: Icons.import_export,
                  routeName: AppRouters.TRANSACTION_HISTORY_SCREEN,
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

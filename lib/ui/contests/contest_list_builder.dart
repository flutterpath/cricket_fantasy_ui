import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:fantasy_app/widgets/rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:fantasy_app/widgets/rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:flutter/material.dart';

class ContestsListBuilderScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ContestsListBuilderScreenState();
}

class ContestsListBuilderScreenState extends State<ContestsListBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
//                  Navigator.of(context).pushNamed(AppRouters.CONTESTS_DASHBOARD_SCREEN);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width-20,

                  child: Stack(
                    children: [

                      Center(
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(color: Colors.grey[400], spreadRadius: 1, blurRadius: 2),
                            ],
                          ),

                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(15)),
                                            color: AppColors.colorGradient3,
                                          ),
                                          child: Column(
                                            children: [
                                              Text('Prize Pool', style: TextStyle(fontSize: 13, color: AppColors.colorGreyDark, fontWeight: FontWeight.w400),),
                                              SizedBox(height: 5,),
                                              Text('₹300'.toUpperCase(), style: TextStyle(fontSize: 14, color: AppColors.colorBlack, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                        ),

                                        InkWell(
                                          onTap: () {

                                          },
                                          child: Container(
                                            padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(25)),
                                                gradient: AppWidgets.getCustomGradient(),
                                              boxShadow: [
                                                BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 1, blurRadius: 5)
                                              ]
                                            ),
                                            child: Row(children: [
                                              Text('JOIN', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorGreyExtraLight, fontWeight: FontWeight.w400, fontSize: 13),),
                                              SizedBox(width: 10,),
                                              Text('₹15', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorWhite, fontWeight: FontWeight.bold, fontSize: 18),)
                                            ],),
                                          ),
                                        ),

                                        Container(
                                          padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(15)),
                                            color: AppColors.colorGradient3,
                                          ),
                                          child: Column(
                                            children: [
                                              Text('Winners', style: TextStyle(fontSize: 13, color: AppColors.colorGreyDark, fontWeight: FontWeight.w400),),
                                              SizedBox(height: 5,),
                                              Text('10'.toUpperCase(), style: TextStyle(fontSize: 14, color: AppColors.colorBlack, fontWeight: FontWeight.bold),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 5,),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 10),
                                      child: RoundedProgressBar(
                                        style: RoundedProgressBarStyle(
                                            borderWidth: 0,
                                            widthShadow: 0),
                                        margin: EdgeInsets.symmetric(vertical: 5),
                                        borderRadius: BorderRadius.circular(10),
                                        percent: 30,
                                        height: 10,
                                        theme: RoundedProgressBarTheme.blue,
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('2 Spots left', style: TextStyle(fontSize: 12, color: AppColors.colorGradient2, fontWeight: FontWeight.bold),),

                                          Row(
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 16,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                                    border: Border.all(width: 1, color: AppColors.colorBlack, style: BorderStyle.solid)
                                                ),
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(2),
                                                  child: Text('M', style: TextStyle(color: AppColors.colorPrimary, fontSize: 10),),
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Container(
                                                width: 16,
                                                height: 16,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                                    border: Border.all(width: 1, color: AppColors.colorBlack, style: BorderStyle.solid)
                                                ),
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(2),
                                                  child: Text('C', style: TextStyle(color: AppColors.colorGreyDark, fontSize: 10),),
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Container(
                                                height: 16,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                                    border: Border.all(width: 1, color: AppColors.colorBlack, style: BorderStyle.solid)
                                                ),
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(2),
                                                  child: Row(
                                                    children: [
                                                      Text(' B', style: TextStyle(color: AppColors.colorGreen, fontSize: 10),),
                                                      Text(' | ', style: TextStyle(color: AppColors.colorBlack, fontSize: 12),),
                                                      Text('40%', style: TextStyle(color: AppColors.colorGreen, fontSize: 10),),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),

                                          Text('10 Spots', style: TextStyle(fontSize: 12, color: AppColors.colorGradient2, fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),

                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }

}
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/ui/dashboard/match_list_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 5, bottom: 5, right: 15),
                  child: Image.asset(AppImages.iconUpcomingMatch, height: 25, width: 25,),
                ),
                Text(upcomingMatches.toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: AppFontName),)
              ],
            ),
            SizedBox(height: 5,),
            Divider(height: 1, color: AppColors.colorGreyDark,),

            Expanded(
                child: MatchListBuilderScreen()
            ),

          ],
        ),
      ),
    );
  }
}

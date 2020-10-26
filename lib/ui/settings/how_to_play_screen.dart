import 'package:fantasy_app/ui/notifications/notifications_screen.dart';
import 'package:fantasy_app/widgets/custom_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';

class HowToPlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomPaint(
          painter: NotificationsContainer(),
          child: Column(
            children: [

              Container(
                child: MyCustomAppBar().getTransparentAppBarWithTitle(how_to_play, Icons.arrow_back_ios, () {
                  Navigator.of(context).pop();
                }),
              ),

              SizedBox(height: 50,),

              Expanded(
                child: ListView(
                  children: <Widget>[

                    CustomExpansionTile(
                      title: 'Select a match',
                      description: 'Choose the match you want to play ans show-off the skills.',
                    ),
                    CustomExpansionTile(
                      title: 'Crate your team',
                      description: 'Create your team by selecting different players in defined credit points.',
                    ),
                    CustomExpansionTile(
                      title: 'Manage your team',
                      description: 'Here is the to manage your team from my teams section and can edit also.',
                    ),
                    CustomExpansionTile(
                      title: 'Fantasy cricket point system',
                      description: 'You will have different points for different players as per defined point system.',
                    ),
                    CustomExpansionTile(
                      title: 'Account balance',
                      description: 'You check your account balance along with bonus, winning amounts of your profile.',
                    ),
                    CustomExpansionTile(
                      title: 'FAQ',
                      description: 'If you are having any queries, you will have a section contains your related queries and solutions.',
                    ),
                    CustomExpansionTile(
                      title: 'Fantasy Seasonal Challenge',
                      description: 'App provides seasonal challenges for the users to enjoy the game.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

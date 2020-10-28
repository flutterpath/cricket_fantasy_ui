import 'package:fantasy_app/ui/notifications/notifications_screen.dart';
import 'package:fantasy_app/widgets/custom_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/constants/images_constants.dart';

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
                      image: AppImages.screenshot1,
                    ),
                    CustomExpansionTile(
                      title: 'Join Contests',
                      description: 'You will have different points for different players as per defined point system.',
                      image: AppImages.screenshot3,
                    ),
                    CustomExpansionTile(
                      title: 'Create your team',
                      description: 'Create your team by selecting different players in defined credit points.',
                      image: AppImages.screenshot4,
                    ),
                    CustomExpansionTile(
                      title: 'Manage your team',
                      description: 'Here is the to manage your team from my teams section and can edit also.',
                      image: AppImages.screenshot5,
                    ),
                    CustomExpansionTile(
                      title: 'Account balance',
                      description: 'You check your account balance along with bonus, winning amounts of your profile.',
                      image: AppImages.screenshot2,
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

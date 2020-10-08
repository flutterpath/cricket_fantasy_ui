import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushNamed(AppRouters.MOBILE_SCREEN);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, fontFamily: 'Raleway');
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: AppColors.colorPrimaryLight,
      imagePadding: EdgeInsets.zero,
    );

    return SafeArea(
      child: Stack(
        children: [

          IntroductionScreen(

            key: introKey,
            pages: [

              PageViewModel(
                title: "Select A Match",
                body: "Select any of the upcoming matches from any of the current or upcoming cricket series",
                image: Image.asset(AppImages.imageBannerIntro),
                decoration: pageDecoration,
              ),

              PageViewModel(
                title: "Join A Contest",
                body: "join and free or cash contest to win cash and the ultimate bragging rights to showoff your improvement in the free/ skill contests on Fixturers!",
                image: Image.asset(AppImages.imageBannerIntro),
                decoration: pageDecoration,
              ),

              PageViewModel(
                title: "Create Your Team",
                body: "Use your sports knowledge and showcase your skills to create your team within a budget of 100 credits",
                image: Image.asset(AppImages.imageBannerIntro),
                decoration: pageDecoration,
              ),

              // PageViewModel(
              //   title: "Another title page",
              //   body: "Another beautiful body text for this example onboarding",
              //   image: _buildImage('img2'),
              //   footer: RaisedButton(
              //     onPressed: () {
              //       introKey.currentState?.animateScroll(0);
              //     },
              //     child: const Text(
              //       'FooButton',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     color: Colors.lightBlue,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8.0),
              //     ),
              //   ),
              //   decoration: pageDecoration,
              // ),
              //
              // PageViewModel(
              //   title: "Title of last page",
              //   bodyWidget: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: const [
              //       Text("Click on ", style: bodyStyle),
              //       Icon(Icons.edit),
              //       Text(" to edit a post", style: bodyStyle),
              //     ],
              //   ),
              //   image: _buildImage('img1'),
              //   decoration: pageDecoration,
              // ),

            ],
            onDone: () => _onIntroEnd(context),
            //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
            showSkipButton: true,
            skipFlex: 0,
            nextFlex: 0,
            skip: Text('Skip'.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway')),
            next: const Icon(Icons.arrow_forward),
            done: Text('Done'.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Raleway')),
            dotsDecorator: const DotsDecorator(
              size: Size(10.0, 10.0),
              color: const Color(0xFF251707),
              activeColor: const Color(0xFFF78B6B),
              activeSize: Size(22.0, 10.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
          ),

          Positioned(
            left: -30,
            bottom: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Container(
                height: 70,
                width: 70,
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        const Color(0xFFF78B6B),
                        const Color(0xFF7B422F),
                        const Color(0xFF251707),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.0, 1.0),
                      stops: [0.0, 0.7, 1.0],
                      tileMode: TileMode.clamp),
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
                  gradient: new LinearGradient(
                      colors: [
                        const Color(0xFFF78B6B),
                        const Color(0xFF7B422F),
                        const Color(0xFF251707),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.0, 1.0),
                      stops: [0.0, 0.7, 1.0],
                      tileMode: TileMode.clamp),
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
                height: 110,
                width: 110,
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        const Color(0xFFF78B6B),
                        const Color(0xFF7B422F),
                        const Color(0xFF251707),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.0, 1.0),
                      stops: [0.0, 0.7, 1.0],
                      tileMode: TileMode.clamp),
                ),

              ),
            ),
          ),

          Positioned(
            top: -30,
            left: -30,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Container(
                height: 120,
                width: 120,
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        const Color(0xFFF78B6B),
                        const Color(0xFF7B422F),
                        const Color(0xFF251707),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.0, 1.0),
                      stops: [0.0, 0.7, 1.0],
                      tileMode: TileMode.clamp),
                ),

              ),
            ),
          ),

        ],
      ),
    );
  }
}

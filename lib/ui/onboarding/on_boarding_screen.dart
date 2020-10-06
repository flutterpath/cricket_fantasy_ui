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
    Navigator.of(context).pushReplacementNamed(AppRouters.MOBILE_SCREEN);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return SafeArea(
      child: IntroductionScreen(

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
        skip: const Text('Skip'),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }
}

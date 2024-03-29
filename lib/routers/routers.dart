import 'package:fantasy_app/ui/account_verification/account_verification_screen.dart';
import 'package:fantasy_app/ui/contests/contest_dashboard_screen.dart';
import 'package:fantasy_app/ui/contests/create_contest_screen.dart';
import 'package:fantasy_app/ui/contests/team_preview_screen.dart';
import 'package:fantasy_app/ui/create_account/mobile_screen.dart';
import 'package:fantasy_app/ui/create_account/otp_screen.dart';
import 'package:fantasy_app/ui/create_team/captain_vice_captain_screen.dart';
import 'package:fantasy_app/ui/create_team/create_team_dashboard_screen.dart';
import 'package:fantasy_app/ui/dashboard/dashboard_screen.dart';
import 'package:fantasy_app/ui/notifications/notifications_screen.dart';
import 'package:fantasy_app/ui/onboarding/on_boarding_screen.dart';
import 'package:fantasy_app/ui/profile/update_profile_screen.dart';
import 'package:fantasy_app/ui/settings/how_to_play_screen.dart';
import 'package:fantasy_app/ui/settings/invite_code_screen.dart';
import 'package:fantasy_app/ui/settings/invite_friends_screen.dart';
import 'package:fantasy_app/ui/splash/splash_screen.dart';
import 'package:fantasy_app/ui/wallet/add_money_screen.dart';
import 'package:fantasy_app/ui/wallet/my_balance_screen.dart';
import 'package:fantasy_app/ui/wallet/transaction_history_screen.dart';
import 'package:fantasy_app/ui/wallet/withdraw_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {

  // Router Names
  static const String SPLASH_SCREEN = 'splash_screen';
  static const String ON_BOARDING_SCREEN = 'on_boarding_screen';
  static const String MOBILE_SCREEN = 'mobile_screen';
  static const String OTP_SCREEN = 'otp_screen';
  static const String ACCOUNT_VERIFICATION_SCREEN = 'account_verification';
  static const String DASHBOARD_SCREEN = 'dashboard_screen';
  static const String ADD_MONEY_SCREEN = 'AddMoneyScreen';
  static const String TRANSACTION_HISTORY_SCREEN = 'transaction_history';
  static const String UPDATE_PROFILE_SCREEN = 'update_profile_screen';
  static const String MY_BALANCE_SCREEN = 'my_balance_screen';
  static const String NOTIFICATIONS_SCREEN = 'notifications_screen';
  static const String WITHDRAW_SCREEN = 'withdraw_screen';
  static const String CONTEST_CODE_SCREEN = 'contest_code_screen';
  static const String HOW_TO_PLAY_SCREEN = 'how_to_play_screen';
  static const String CONTESTS_DASHBOARD_SCREEN = 'contest_dashboard_screen';
  static const String INVITE_FRIENDS_SCREEN = 'invite_friends_screen';
  static const String FANTASY_POINT_SYSTEM_SCREEN = 'fantasy_point_system_screen';
  static const String ABOUT_US_SCREEN = 'about_us_screen';
  static const String LEGALITY_SCREEN = 'legality_screen';
  static const String TERMS_AND_CONDITIONS_SCREEN = 'terms_and_conditions_screen';
  static const String POINT_SYSTEM_SCREEN = 'point_system_screen';
  static const String CREATE_CONTEST_SCREEN = 'create_contest_screen';
  static const String TEAM_PREVIEW_SCREEN = 'team_preview_screen';
  static const String CREATE_TEAM_SCREEN = 'create_team_screen';
  static const String CAPTAIN_VICE_CAPTAIN_SCREEN = 'captain_vice_captain_screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {

    ArgumentsList args = settings.arguments;

    switch(settings.name) {
      case SPLASH_SCREEN:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case ON_BOARDING_SCREEN:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen());
      case MOBILE_SCREEN:
        return MaterialPageRoute(builder: (context) => MobileScreen());
      case OTP_SCREEN:
        return MaterialPageRoute(builder: (context) => OtpScreen());
      case ACCOUNT_VERIFICATION_SCREEN:
        return MaterialPageRoute(builder: (context) => AccountVerificationScreen());
      case DASHBOARD_SCREEN:
        return MaterialPageRoute(builder: (context) => DashboardScreen());
      case ADD_MONEY_SCREEN:
        return MaterialPageRoute(builder: (context) => AddMoneyScreen());
      case TRANSACTION_HISTORY_SCREEN:
        return MaterialPageRoute(builder: (context) => TransactionHistoryScreen());
      case UPDATE_PROFILE_SCREEN:
        return MaterialPageRoute(builder: (context) => UpdateProfileScreen());
      case MY_BALANCE_SCREEN:
        return MaterialPageRoute(builder: (context) => MyBalanceScreen());
      case NOTIFICATIONS_SCREEN:
        return MaterialPageRoute(builder: (context) => NotificationsScreen());
      case WITHDRAW_SCREEN:
        return MaterialPageRoute(builder: (context) => WithdrawScreen());
      case CONTEST_CODE_SCREEN:
        return MaterialPageRoute(builder: (context) => InviteCodeScreen());
      case HOW_TO_PLAY_SCREEN:
        return MaterialPageRoute(builder: (context) => HowToPlayScreen());
      case CONTESTS_DASHBOARD_SCREEN:
        return MaterialPageRoute(builder: (context) => ContestDashboardScreen());
      case INVITE_FRIENDS_SCREEN:
        return MaterialPageRoute(builder: (context) => InviteFriendsScreen());
      case CREATE_CONTEST_SCREEN:
        return MaterialPageRoute(builder: (context) => CreateContestScreen());
      case TEAM_PREVIEW_SCREEN:
        return MaterialPageRoute(builder: (context) => TeamPreviewScreen());
      case CREATE_TEAM_SCREEN:
        return MaterialPageRoute(builder: (context) => CreateTeamDashboardScreen());
      case CAPTAIN_VICE_CAPTAIN_SCREEN:
        return MaterialPageRoute(builder: (context) => CaptainViceCaptainScreen());
      default:
        return _errorRoute();
    }

  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("This page Not Found"),
        ),
      );
    });
  }

}

class ArgumentsList {
  int initialIndex;
  String pdfBackPop;

  ArgumentsList(this.initialIndex);

}
import 'package:fantasy_app/ui/account_vertification/account_verification_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {

  // Router Names
  static const String ACCOUNT_VERIFICATION_SCREEN = "account_verification";

  static Route<dynamic> generateRoute(RouteSettings settings) {

    ArgumentsList args = settings.arguments;

    switch(settings.name) {
      case ACCOUNT_VERIFICATION_SCREEN:
        return MaterialPageRoute(builder: (context) => AccountVerificationScreen());
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
          child: Text("page Not Found"),
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
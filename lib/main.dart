import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/shared_preferences.dart';
import 'package:fantasy_app/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/strings.dart';

SpUtil sp;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sp = await SpUtil.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cricket Fantasy',
      initialRoute: AppRouters.SPLASH_SCREEN,
      onGenerateRoute: AppRouters.generateRoute,
      theme: ThemeData(
          fontFamily: AppFontName,
          accentColor: AppColors.colorSecondaryMaterial,
          primaryColor: AppColors.colorPrimaryMaterial
      ),
    );
  }
}


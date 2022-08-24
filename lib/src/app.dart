import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/core/base/widget.dart';
import 'package:flutter_challenge/src/core/values/theme.dart';
import 'package:flutter_challenge/src/presentation/modules/home/home_page.dart';

class MyApp extends StatelessWidget with BaseWidgetStateless {

  MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge by Mottu',
      debugShowCheckedModeBanner: false,
      theme: MottuChallengeTheme.appTheme,
      navigatorKey: navigationHandler.appGlobalKey,
      onGenerateRoute: navigationHandler.appRoutes,
      initialRoute: HomePage.route,
    );
  }
}
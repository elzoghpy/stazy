import 'package:flutter/material.dart';
import 'package:stayz/constants/resources/strings.dart';
import 'package:stayz/presintation/screens/home_screen.dart';
import 'package:stayz/presintation/screens/mainview.dart';
import 'package:stayz/presintation/screens/splash_screen.dart';
import 'package:stayz/presintation/screens/stazy_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case stazy:
        return MaterialPageRoute(builder: (_) => const StazyScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case mainView:
        return MaterialPageRoute(builder: (_) => const MainView());
    }
    return null;
  }
}

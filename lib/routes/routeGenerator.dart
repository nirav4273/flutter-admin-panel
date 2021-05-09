import 'package:flutter/material.dart';
import 'package:np_admin_panel/pages/home.dart';
import 'package:np_admin_panel/pages/login.dart';
import 'package:np_admin_panel/pages/register.dart';
import 'package:np_admin_panel/routes/routeName.dart';
import 'package:page_transition/page_transition.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.Home:
        return PageTransition(
          child: HomePage(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case RouteNames.Login:
        return PageTransition(
          child: LoginPage(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case RouteNames.Register:
        return PageTransition(
          child: RegisterPage(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      default:
        return PageTransition(
          child: HomePage(),
          type: PageTransitionType.fade,
          settings: settings,
        );
    }
  }
}
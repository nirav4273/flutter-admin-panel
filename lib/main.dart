import 'package:flutter/material.dart';
import 'package:np_admin_panel/pages/home.dart';
import 'package:np_admin_panel/pages/login.dart';
import 'package:np_admin_panel/pages/register.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class RouteNames {
  static const Home = "/home";
  static const Login = "/login";
  static const Register = "/register";
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Np-Admin-Panel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteNames.Home,
      onGenerateRoute: (RouteSettings setting) {
        print(setting.name);
        switch (setting.name) {
          case RouteNames.Home:
            return PageTransition(
              child: HomePage(),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case RouteNames.Login:
            return PageTransition(
              child: LoginPage(),
              type: PageTransitionType.fade,
              settings: setting,
            );
          case RouteNames.Register:
            return PageTransition(
              child: RegisterPage(),
              type: PageTransitionType.fade,
              settings: setting,
            );
          default:
            return PageTransition(
              child: HomePage(),
              type: PageTransitionType.fade,
              settings: setting,
            );
        }
      },
    );
  }
}

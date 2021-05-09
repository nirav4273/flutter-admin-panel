import 'package:flutter/material.dart';
import 'package:np_admin_panel/pages/home.dart';
import 'package:np_admin_panel/pages/login.dart';
import 'package:np_admin_panel/pages/register.dart';
import 'package:np_admin_panel/routes/routeGenerator.dart';
import 'package:np_admin_panel/routes/routeName.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
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
      onGenerateRoute: RouteGenerator.generateRoute
    );
  }
}

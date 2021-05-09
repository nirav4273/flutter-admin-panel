import 'package:flutter/material.dart';
import 'package:np_admin_panel/routes/routeName.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: TextButton(
          child: Text("LOGIN"),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, RouteNames.Login, ModalRoute.withName('/'));
          },
        ),
      ),
    );
  }
}
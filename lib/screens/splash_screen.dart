import 'package:flutter/material.dart';
import 'package:todo_app/routes/routes.dart';
import 'dart:async';
import 'package:todo_app/utils/route_names.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => SetupRoutes.changeScreen(context, Routes.SPLASH_SCREEN));
    ;}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[200],
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(

            decoration: BoxDecoration(color: Colors.amber),
          ),

        ],
      ),
    );
  }
}
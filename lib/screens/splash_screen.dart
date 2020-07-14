import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo_app/routes/routes.dart';
import 'package:todo_app/utils/route_names.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => SetupRoutes.replaceScreen(context, Routes.PATIENT_SIGNUP));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/logo.jpeg',
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                    valueColor: AlwaysStoppedAnimation(
                      Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Loading..."),
//                RoundedButton(
//                  width: 100,
//                  height: 30,
//                  buttonColor: Colors.red,
//                  borderWidth: 1,
//                  bottomMargin: 1,
//                  widget: Text('This'),
//                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

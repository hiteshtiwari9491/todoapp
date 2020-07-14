import 'package:flutter/material.dart';
import 'package:todo_app/screens/doctor_signup_screen.dart';
import 'package:todo_app/screens/home.dart';
import 'package:todo_app/screens/listscreen.dart';
import 'package:todo_app/screens/loginscreen.dart';
import 'package:todo_app/screens/patient_signup_screen.dart';
import 'package:todo_app/screens/signup_screen.dart';
import 'package:todo_app/screens/splash_screen.dart';

import '../utils/route_names.dart';

class SetupRoutes {
  // Set initial route here
  static String initialRoute = Routes.SPLASH_SCREEN;

  /// Add entry for new route here
  static Map<String, WidgetBuilder> get routes {
    return {
      Routes.LOGIN: (context) => Login(),
      Routes.HOME: (context) => Home(),
      Routes.ADD_TO_LIST: (context) => ListScreen(),
      Routes.SPLASH_SCREEN: (context) => SplashScreen(),
      Routes.SIGNUP: (context) => Signup(),
      Routes.PATIENT_SIGNUP: (context) => PatientSignup(),
      Routes.DOCTOR_SIGNUP: (context) => DoctorSignup(),
    };
  }

  static Future changeScreen(BuildContext context, String value,
      {Object arguments, Function callbackAfterNavigation}) {
    return Navigator.pushNamed(context, value, arguments: arguments)
        .then((response) {
      if (callbackAfterNavigation != null) {
        callbackAfterNavigation();
      }
    });
  }

  static replaceScreen(BuildContext context, String value,
      {dynamic arguments, Function callbackAfterNavigation}) {
    Navigator.of(context)
        .pushReplacementNamed(value, arguments: arguments)
        .then((response) {
      if (callbackAfterNavigation != null) {
        callbackAfterNavigation();
      }
    });
  }

  static pushAndRemoveAll(BuildContext context, String value,
      {dynamic arguments, Function callbackAfterNavigation}) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(
      value,
      (_) => false,
      arguments: arguments,
    )
        .then((response) {
      if (callbackAfterNavigation != null) {
        callbackAfterNavigation();
      }
    });
  }
}

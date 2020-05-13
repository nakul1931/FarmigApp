import 'package:FarmingApp/src/screens/landing.dart';
import 'package:FarmingApp/src/screens/login.dart';
import 'package:FarmingApp/src/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static MaterialPageRoute materialRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Landing());

      case "/login":
        return MaterialPageRoute(builder: (context) => Login());

      case "/signup":
        return MaterialPageRoute(builder: (context) => Signup());

      default:
        return MaterialPageRoute(builder: (context) => Login());
    }
  }

  static CupertinoPageRoute cupertinoRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return CupertinoPageRoute(builder: (context) => Landing());

      case "/login":
        return CupertinoPageRoute(builder: (context) => Login());

      case "/signup":
        return CupertinoPageRoute(builder: (context) => Signup());

      default:
        return CupertinoPageRoute(builder: (context) => Login());
    }
  }
}

import 'package:FarmingApp/src/BLoC/authBloc.dart';
import 'package:FarmingApp/src/routes.dart';
import 'package:FarmingApp/src/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "dart:io";
import 'package:provider/provider.dart';

final authBloc = AuthBloc();

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => authBloc,
      child: PlatformApp(),
    );
  }

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }
}

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: Login(),
        onGenerateRoute: Routes.cupertinoRoute,
      );
    } else {
      return MaterialApp(
        home: Login(),
        onGenerateRoute: Routes.materialRoute,
      );
    }
  }
}

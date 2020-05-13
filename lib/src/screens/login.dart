import 'package:FarmingApp/src/BLoC/authBloc.dart';
import 'package:FarmingApp/src/widget/button.dart';
import 'package:FarmingApp/src/widget/textFields.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'dart:io';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: _pageBody(context),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: _pageBody(context),
      );
    }
  }

  Widget _pageBody(BuildContext context) {
    print("Here");
    return Consumer<AuthBloc>(
      builder: (context, authBloc, _) => ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Images/top.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Images/logo.png"),
              ),
            ),
          ),
          StreamBuilder<String>(
              stream: authBloc.emailStream,
              builder: (context, snapshot) {
                return AppTextField(
                    errorText: snapshot.error,
                    isIOS: Platform.isIOS,
                    icon: Icons.email,
                    hintText: "Email",
                    textInputType: TextInputType.emailAddress,
                    onChange: authBloc.emailSink);
              }),
          StreamBuilder<String>(
              stream: authBloc.passwordStream,
              builder: (context, snapshot) {
                return AppTextField(
                  errorText: snapshot.error,
                  isIOS: Platform.isIOS,
                  icon: Icons.lock,
                  hintText: "Password",
                  isPassword: true,
                  onChange: authBloc.passwordSink,
                );
              }),
          StreamBuilder<bool>(
              stream: authBloc.isValid,
              builder: (context, snapshot) {
                return AppButton(
                  buttonText: "Login",
                  buttonType: ButtonType.DarkBlue,
                  onTap: snapshot.hasData
                      ? () {
                          print("Has Data");
                        }
                      : () {},
                );
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Or",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

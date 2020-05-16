import 'package:FarmingApp/src/styles/base.dart';
import 'package:FarmingApp/src/styles/button.dart';
import 'package:FarmingApp/src/styles/colors.dart';

import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaButton extends StatelessWidget {
  final SocialType buttonType;

  const SocialMediaButton({Key key, this.buttonType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    IconData icon;
    Color iconColor;
    Color buttonColor;
    switch (buttonType) {
      case SocialType.Facebook:
        iconColor = Colors.white;
        buttonColor = AppColors.facebook;
        icon = FontAwesomeIcons.facebookF;
        break;
      case SocialType.Google:
        iconColor = Colors.white;
        buttonColor = AppColors.google;
        icon = FontAwesomeIcons.google;
        break;
      default:
        iconColor = Colors.white;
        buttonColor = AppColors.facebook;
        icon = FontAwesomeIcons.facebookF;
    }
    return Padding(
      padding: BaseStyles.listPadding,
      child: Container(
        height: ButtonStyles.buttonHeight,
        width: ButtonStyles.buttonHeight,
        decoration: BoxDecoration(
            boxShadow: ButtonStyles.boxShadow,
            color: buttonColor,
            borderRadius: BorderRadius.circular(BaseStyles.borerRadius)),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}

enum SocialType { Facebook, Google }

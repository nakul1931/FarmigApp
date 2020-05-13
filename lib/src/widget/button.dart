import 'package:FarmingApp/src/styles/base.dart';
import 'package:FarmingApp/src/styles/button.dart';
import 'package:FarmingApp/src/styles/colors.dart';
import 'package:FarmingApp/src/styles/text.dart';
import "package:flutter/material.dart";

class AppButton extends StatelessWidget {
  final String buttonText;
  final ButtonType buttonType;
  final Function onTap;

  const AppButton({@required this.buttonText, @required this.buttonType,@required this.onTap});
  @override
  Widget build(BuildContext context) {
    TextStyle fontStyle;
    Color buttonColor;
    switch (buttonType) {
      case ButtonType.Straw:
        fontStyle = TextStyles.buttonText;
        buttonColor = AppColors.straw;
        break;
      case ButtonType.DarkBlue:
        fontStyle = TextStyles.buttonText;
        buttonColor = AppColors.darkblue;
        break;
      default:
        fontStyle = TextStyles.buttonText;
        buttonColor = AppColors.lightblue;
    }
    return Padding(
      padding: BaseStyles.listPadding,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: ButtonStyles.buttonHeight,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              boxShadow: ButtonStyles.boxShadow,
              color: buttonColor,
              borderRadius: BorderRadius.circular(BaseStyles.borerRadius)),
          child: Center(child: Text(buttonText, style: fontStyle)),
        ),
      ),
    );
  }
}

enum ButtonType { LightBlue, Straw, LightGray, DarkGray, DarkBlue }

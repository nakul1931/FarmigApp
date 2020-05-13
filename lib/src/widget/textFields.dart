import 'package:FarmingApp/src/styles/base.dart';
import 'package:FarmingApp/src/styles/textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final bool isIOS;
  final String hintText;
  final IconData icon;
  final TextInputType textInputType;
  final bool isPassword;
  final Function(String) onChange;
  final String errorText;

  const AppTextField({
    @required this.isIOS,
    @required this.hintText,
    @required this.icon,
    this.isPassword,
    this.textInputType,
    @required this.onChange,
    @required this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    if (isIOS) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: BaseStyles.boxHorizontal,
            vertical: BaseStyles.boxVertical),
        child: CupertinoTextField(
          keyboardType:
              textInputType == null ? TextInputType.text : textInputType,
          padding: const EdgeInsets.all(12.0),
          placeholder: hintText,
          textAlign: TextFieldStyles.textAlign,
          placeholderStyle: TextFieldStyles.placeholder,
          style: TextFieldStyles.text,
          cursorColor: TextFieldStyles.cursorColor,
          prefix: TextFieldStyles.iconPrefix(icon),
          decoration: TextFieldStyles.cupertinoDecoration,
          obscureText: isPassword == null ? false : isPassword,
          onChanged: onChange,
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: BaseStyles.boxHorizontal,
            vertical: BaseStyles.boxVertical),
        child: TextField(
          keyboardType: textInputType,
          cursorColor: TextFieldStyles.cursorColor,
          style: TextFieldStyles.text,
          textAlign: TextFieldStyles.textAlign,
          decoration:
              TextFieldStyles.materialDecoration(hintText, icon, errorText),
          obscureText: isPassword == null ? false : isPassword,
          onChanged: onChange,
        ),
      );
    }
  }
}

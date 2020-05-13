import 'package:FarmingApp/src/styles/colors.dart';
import 'package:FarmingApp/src/styles/text.dart';
import 'package:flutter/material.dart';

import 'base.dart';

abstract class TextFieldStyles {
  static TextStyle get text => TextStyles.body;
  static TextStyle get placeholder => TextStyles.suggestions;
  static Color get cursorColor => AppColors.darkblue;
  static Widget iconPrefix(IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        icon,
        size: 35.0,
        color: AppColors.lightblue,
      ),
    );
  }

  static TextAlign get textAlign => TextAlign.center;

  //IOS styles
  static BoxDecoration get cupertinoDecoration => BoxDecoration(
      border: Border.all(
        color: AppColors.straw,
        width: BaseStyles.borerWidth,
      ),
      borderRadius: BorderRadius.circular(BaseStyles.borerRadius));

  //Material/Android styles
  static InputDecoration materialDecoration(
      String hintText, IconData icon, String errorText) {
    return InputDecoration(
      errorText: errorText,
      contentPadding: const EdgeInsets.all(8.0),
      hintText: hintText,
      hintStyle: TextFieldStyles.placeholder,
      border: InputBorder.none,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(BaseStyles.borerRadius),
        borderSide:
            BorderSide(color: AppColors.straw, width: BaseStyles.borerWidth),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(BaseStyles.borerRadius),
        borderSide:
            BorderSide(color: AppColors.red, width: BaseStyles.borerWidth),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(BaseStyles.borerRadius),
        borderSide:
            BorderSide(color: AppColors.red, width: BaseStyles.borerWidth),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(BaseStyles.borerRadius),
        borderSide:
            BorderSide(color: AppColors.straw, width: BaseStyles.borerWidth),
      ),
      prefixIcon: iconPrefix(icon),
    );
  }
}

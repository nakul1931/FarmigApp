import 'package:flutter/material.dart';

abstract class BaseStyles {
  static double get borerRadius => 20.0;
  static double get borerWidth => 2.0;
  static double get boxHorizontal => 25.0;
  static double get boxVertical => 8.0;
  static EdgeInsetsGeometry get listPadding => EdgeInsets.symmetric(
      vertical: BaseStyles.boxVertical, horizontal: BaseStyles.boxHorizontal);
}

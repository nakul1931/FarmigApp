import 'package:FarmingApp/src/styles/colors.dart';
import 'package:flutter/widgets.dart';

abstract class ButtonStyles {
  static double get buttonHeight => 50.0;

  static List<BoxShadow> get boxShadow => [
        BoxShadow(
            color: AppColors.darkgray.withOpacity(.5),
            blurRadius: 2.0,
            offset: Offset(1.0, 2.0))
      ];
}

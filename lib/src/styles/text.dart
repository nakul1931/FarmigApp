import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

abstract class TextStyles {
  static TextStyle get body => GoogleFonts.roboto(
        textStyle: TextStyle(color: AppColors.darkgray),
        fontSize: 16.0,
      );
  static TextStyle get suggestions => GoogleFonts.roboto(
        textStyle: TextStyle(color: AppColors.lightgray),
        fontSize: 14.0,
      );
  static TextStyle get buttonText => GoogleFonts.roboto(
      textStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0));
}

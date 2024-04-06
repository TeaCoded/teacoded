import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle ubuntuMedium(
      {required double fontSize,
      required Color color,
      FontWeight fontWeight = FontWeight.w400}) {
    return TextStyle(
        letterSpacing: 1,
        fontFamily: 'Ubuntu-Medium',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color);
  }

  static TextStyle varelaRound({
    required double fontSize,
    required Color color,
  }) {
    return TextStyle(
        letterSpacing: 0.5,
        fontFamily: 'VarelaRound',
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: color);
  }
}

import 'package:flutter/widgets.dart';
import 'package:test_muhammad_riski/core/extensions/material_color.dart';

class MTextStyle {
  static TextStyle hintTextStyle = TextStyle(
      color: MColors.primaryColorsGrey.shade600,
      fontSize: 15,
      fontWeight: FontWeight.w400);
  static TextStyle textFieldStyle = TextStyle(
      color: MColors.primaryColorsGrey.shade400, fontWeight: FontWeight.w600);
  static TextStyle textStyleNormalCGrey = TextStyle(
      color: MColors.primaryColorsGrey.shade400, fontWeight: FontWeight.w400);
  static TextStyle textStyleNormalCGreyShade600 = TextStyle(
      color: MColors.primaryColorsGrey.shade600, fontWeight: FontWeight.w400);
  static TextStyle textStyleNormalCWhite = TextStyle(
      color: MColors.primaryColorsGrey.shade900, fontWeight: FontWeight.w600);
}

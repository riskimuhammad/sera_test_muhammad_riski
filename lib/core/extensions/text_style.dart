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

  static TextStyle textStyleNormalW600 =
      TextStyle(color: MColors.black, fontWeight: FontWeight.w600);
  static TextStyle textStyleNormalW400 =
      TextStyle(color: MColors.black, fontWeight: FontWeight.w400);
  static TextStyle textStyleFZ18CAmberBold = TextStyle(
      fontSize: 18, color: MColors.amber, fontWeight: FontWeight.bold);
  static TextStyle textStyleFZ15W300 = TextStyle(
      fontSize: 15, color: MColors.black, fontWeight: FontWeight.w300);

  static TextStyle textStyleFZ15W400 = TextStyle(
      fontSize: 15, color: MColors.black, fontWeight: FontWeight.w400);
  static TextStyle textStyleFZ13W400 = TextStyle(
      fontSize: 13, color: MColors.black, fontWeight: FontWeight.w400);
  static TextStyle textStyleFZ28W500 = TextStyle(
      fontSize: 28, color: MColors.black, fontWeight: FontWeight.w500);
  static TextStyle textStyleFZ20W500 = TextStyle(
      fontSize: 20, color: MColors.black, fontWeight: FontWeight.w500);
  static TextStyle textStyleFZ20Bold = TextStyle(
      fontSize: 20, color: MColors.black, fontWeight: FontWeight.bold);
  static TextStyle textStyleFZ18CDarkBlueBold = TextStyle(
      fontSize: 18, color: MColors.blue.shade100, fontWeight: FontWeight.bold);
  static TextStyle textStyleFZ15Bold = TextStyle(
      fontSize: 15, color: MColors.black, fontWeight: FontWeight.bold);
}

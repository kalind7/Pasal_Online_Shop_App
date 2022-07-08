import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color,
  double letterSpacing,
  TextDecoration decoration,
) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
      letterSpacing: letterSpacing);
}

TextStyle headingStyle(
    {double fontSize = 24,
    required Color color,
    required FontWeight fontWeight,
    double? letterSpacing,
    TextDecoration? decoration}) {
  return _getTextStyle(fontSize, "DMSans", fontWeight, color,
      letterSpacing ?? 0, decoration ?? TextDecoration.none);
}

TextStyle subHeadingStyle(
    {double fontSize = 20,
    required Color color,
    required FontWeight fontWeight,
    double? letterSpacing,
    TextDecoration? decoration}) {
  return _getTextStyle(fontSize, "DMSans", fontWeight, color,
      letterSpacing ?? 0, decoration ?? TextDecoration.none);
}

TextStyle titleStyle(
    {double fontSize = 20,
    required Color color,
    required FontWeight fontWeight,
    double? letterSpacing,
    TextDecoration? decoration}) {
  return _getTextStyle(fontSize, "DMSans", fontWeight, color,
      letterSpacing ?? 0, decoration ?? TextDecoration.none);
}

TextStyle subTitleStyle(
    {double fontSize = 16,
    required Color color,
    required FontWeight fontWeight,
    double? letterSpacing,
    TextDecoration? decoration}) {
  return _getTextStyle(fontSize, "DMSans", fontWeight, color,
      letterSpacing ?? 0, decoration ?? TextDecoration.none);
}

TextStyle normalStyle(
    {double fontSize = 14,
    required Color color,
    required FontWeight fontWeight,
    double? letterSpacing,
    TextDecoration? decoration}) {
  return _getTextStyle(fontSize, "DMSans", fontWeight, color,
      letterSpacing ?? 0, decoration ?? TextDecoration.none);
}

TextStyle subNormalStyle(
    {double fontSize = 12,
    required Color color,
    required FontWeight fontWeight,
    double? letterSpacing,
    TextDecoration? decoration}) {
  return _getTextStyle(fontSize, "DMSans", fontWeight, color,
      letterSpacing ?? 0, decoration ?? TextDecoration.none);
}

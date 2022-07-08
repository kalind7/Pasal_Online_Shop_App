import 'package:flutter/material.dart';
import 'package:so_ezze_pasal_app/constant/colors/app_colors.dart';
import 'package:so_ezze_pasal_app/constant/textStyles/text_styles.dart';

ThemeData themeLight({Color? color}) {
  return ThemeData(
    primaryColor: AppColor.primary,
    primaryColorLight: AppColor.primary.withOpacity(0.7),
    fontFamily: 'DMSans',
    scaffoldBackgroundColor: AppColor.white,
    appBarTheme: AppBarTheme(
      color: AppColor.primary,
      elevation: 0,
      centerTitle: true,
      shadowColor: AppColor.transparent,
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 22, 22, 22)),
      titleTextStyle:
          headingStyle(color: AppColor.white, fontWeight: FontWeight.normal),
    ),
    buttonTheme: ButtonThemeData(buttonColor: AppColor.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColor.primary),
    )),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColor.primary),
    )),
    textTheme: TextTheme(
        headline1: headingStyle(
            color: color ?? Colors.white, fontWeight: FontWeight.bold),
        headline2: subHeadingStyle(
            color: color ?? Colors.white, fontWeight: FontWeight.w600),
        headline3: titleStyle(
            color: color ?? Colors.white, fontWeight: FontWeight.w600),
        headline4: subTitleStyle(
            color: color ?? Colors.white, fontWeight: FontWeight.normal),
        headline5: normalStyle(
            color: color ?? Colors.white, fontWeight: FontWeight.w600),
        headline6: subNormalStyle(
            color: color ?? Colors.white, fontWeight: FontWeight.normal)),
  );
}

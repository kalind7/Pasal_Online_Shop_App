import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../textStyles/text_styles.dart';

class Themes {
  final lightTheme = ThemeData(
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
        headline1:
            headingStyle(color: Colors.white, fontWeight: FontWeight.bold),
        headline2:
            subHeadingStyle(color: Colors.white, fontWeight: FontWeight.w600),
        headline3: titleStyle(color: Colors.white, fontWeight: FontWeight.w600),
        headline4:
            subTitleStyle(color: Colors.white, fontWeight: FontWeight.normal),
        headline5:
            normalStyle(color: Colors.white, fontWeight: FontWeight.w600),
        headline6:
            subNormalStyle(color: Colors.white, fontWeight: FontWeight.normal)),
  );

  final darkTheme = ThemeData(
    fontFamily: 'Montserrat Alternates',
    primaryColor: AppColor.dark,
    scaffoldBackgroundColor: AppColor.dark.withOpacity(0.7),
    appBarTheme: AppBarTheme(
      color: AppColor.primary,
      elevation: 0,
      centerTitle: true,
      shadowColor: AppColor.transparent,
      iconTheme: const IconThemeData(color: Color.fromARGB(255, 22, 22, 22)),
      titleTextStyle:
          headingStyle(color: AppColor.dark, fontWeight: FontWeight.normal),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColor.primary),
    )),
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColor.primary),
    )),
    textTheme: TextTheme(
        headline1:
            headingStyle(color: Colors.white, fontWeight: FontWeight.bold),
        headline2:
            subHeadingStyle(color: Colors.white, fontWeight: FontWeight.w600),
        headline3: titleStyle(color: Colors.white, fontWeight: FontWeight.w600),
        headline4:
            subTitleStyle(color: Colors.white, fontWeight: FontWeight.normal),
        headline5:
            normalStyle(color: Colors.white, fontWeight: FontWeight.w600),
        headline6:
            subNormalStyle(color: Colors.white, fontWeight: FontWeight.normal)),
  );
}

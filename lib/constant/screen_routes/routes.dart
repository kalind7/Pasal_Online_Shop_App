import 'package:flutter/material.dart';
import 'package:so_ezze_pasal_app/constant/screen_routes/routes_constant.dart';
import 'package:so_ezze_pasal_app/home_screen.dart';
import 'package:so_ezze_pasal_app/onboarding/pages/onboarding_page.dart';
import 'package:so_ezze_pasal_app/splash_page/page/splash_screen.dart';

class Routers {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => HomePage());

      case onboardPage:
        return MaterialPageRoute(builder: (_) => OnboardingPage());

      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}

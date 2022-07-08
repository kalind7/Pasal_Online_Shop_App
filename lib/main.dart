import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:so_ezze_pasal_app/constant/screen_routes/routes.dart';
import 'package:so_ezze_pasal_app/constant/screen_routes/routes_constant.dart';
import 'package:so_ezze_pasal_app/constant/themes/themes.dart';
import 'constant/themes/theme_service.dart';

void main() async {
  await GetStorage.init();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: Routers.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: splashPage,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),
    );
  }
}

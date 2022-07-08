import 'dart:async';

import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:so_ezze_pasal_app/constant/screen_routes/routes_constant.dart';
import 'package:so_ezze_pasal_app/home_screen.dart';

class SplashController extends GetxController {
  Rx<PackageInfo> myPackageInfo = PackageInfo(
    appName: 'appName',
    packageName: 'packageName',
    version: 'version',
    buildNumber: 'buildNumber',
    buildSignature: 'unknown',
  ).obs;

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    myPackageInfo.value = info;
  }

  // showSplash() {
  //   Timer(Duration(seconds: 2), () => Get.off(() => HomePage()));
  // }

  @override
  void onInit() {
    Timer(Duration(seconds: 2),
        () => Get.offNamedUntil(onboardPage, (route) => false));
    _initPackageInfo();
    super.onInit();
  }
}

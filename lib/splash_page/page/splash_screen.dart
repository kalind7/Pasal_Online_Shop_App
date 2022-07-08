import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:so_ezze_pasal_app/constant/asset_files/asset_path.dart';
import 'package:so_ezze_pasal_app/constant/textStyles/text_styles.dart';
import 'package:so_ezze_pasal_app/splash_page/controller/splash_controller.dart';

import '../../constant/colors/app_colors.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary.withOpacity(0.85),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColor.onboardingGradient2,
            AppColor.onboardingGradient3,
            AppColor.onboardingGradient1,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Stack(
          children: [
            Center(
              child: SvgPicture.asset(
                AssetPath.mainLogo,
                height: 50,
                width: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Version : ${splashController.myPackageInfo.value.version}',
                  style: normalStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

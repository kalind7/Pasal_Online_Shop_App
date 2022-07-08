import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:so_ezze_pasal_app/constant/asset_files/asset_path.dart';
import 'package:so_ezze_pasal_app/constant/colors/app_colors.dart';
import 'package:so_ezze_pasal_app/constant/screen_routes/routes_constant.dart';
import 'package:so_ezze_pasal_app/constant/textStyles/text_styles.dart';
import 'package:so_ezze_pasal_app/onboarding/controller/onboarding_controller.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: Obx(
          () => PageView(
            controller: controller.pageController.value,
            onPageChanged: (index) {
              controller.isLastPage.value = index == 2;
            },
            children: [
              controller.buildPages(
                  color: AppColor.onboardingGradient2,
                  color1: AppColor.onboardingGradient3,
                  color2: AppColor.onboardingGradient1,
                  image: AssetPath.onboard1,
                  title: 'IT\u0027S ONLINE\nYour Market',
                  subtitle: 'Add your shop items and show\nthem to customers.',
                  context: context),
              controller.buildPages(
                  color: AppColor.onboardingGradient2,
                  color1: AppColor.onboardingGradient3,
                  color2: AppColor.onboardingGradient1,
                  image: AssetPath.onboard2,
                  title: 'NO CASH ?\nDigital Money !!',
                  subtitle:
                      'Practise of social distancing led to this moment.\nE-Sewa, FonePay available.',
                  context: context),
              controller.buildPages(
                  color: AppColor.onboardingGradient2,
                  color1: AppColor.onboardingGradient3,
                  color2: AppColor.onboardingGradient1,
                  image: AssetPath.onboard3,
                  title: 'Get your products delivered',
                  subtitle: 'Deliver your products fast and secure.',
                  context: context),
            ],
          ),
        ),
      ),
      bottomSheet: Obx(
        () => controller.isLastPage.value
            ? TextButton(
                onPressed: () {
                  Get.offNamedUntil(homePage, (route) => false);
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  backgroundColor: AppColor.primary,
                  maximumSize: const Size.fromHeight(80),
                ),
                child: Center(
                    child: Text(
                  'Go to Login',
                  style: subTitleStyle(
                      color: Colors.black87, fontWeight: FontWeight.w600),
                )),
              )
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 80,
                color: AppColor.primary,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            controller.pageController.value.jumpToPage(2);
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: AppColor.blue),
                          child: Text(
                            'SKIP',
                            style: normalStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )),
                      Center(
                        child: SmoothPageIndicator(
                          controller: controller.pageController.value,
                          count: 3,
                          effect: const WormEffect(
                            dotHeight: 10,
                            dotWidth: 10,
                            radius: 10,
                            spacing: 15,
                            dotColor: Colors.black26,
                            activeDotColor: AppColor.blue,
                          ),
                          onDotClicked: (int index) => controller
                              .pageController.value
                              .animateToPage(index,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            controller.pageController.value.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: AppColor.blue),
                          child: Text(
                            'NEXT',
                            style: normalStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )),
                    ]),
              ),
      ),
    );
  }
}

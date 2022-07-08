import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_ezze_pasal_app/constant/textStyles/text_styles.dart';

class OnboardingController extends GetxController {
  Rx<PageController> pageController = PageController().obs;

  RxBool isLastPage = false.obs;

  @override
  void onInit() {
    pageController.value.initialPage;
    super.onInit();
  }

  @override
  void onClose() {
    pageController.value.dispose();
    super.onClose();
  }

  Widget buildPages({
    required Color color1,
    required Color color2,
    required Color color,
    required String image,
    required String title,
    required String subtitle,
    required BuildContext context,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color, color1, color2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: ListView(children: [
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height / 2,
          fit: BoxFit.fitHeight,
          width: double.infinity,
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            title,
            style: titleStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            subtitle,
            style: subTitleStyle(
                color: Colors.black, fontWeight: FontWeight.normal),
          ),
        )
      ]),
    );
  }
}

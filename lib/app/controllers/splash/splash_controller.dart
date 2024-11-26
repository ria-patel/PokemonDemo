// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:pokemon_demo/app_utils/routes/app_pages.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> bounceAnimation;

  @override
  void onInit() async {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    bounceAnimation = Tween<double>(begin: 300, end: 0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceOut,
      ),
    );

    animationController.forward();
    await Future.delayed(const Duration(seconds: 4), () {
      Get.offAllNamed(Routes.HOME);
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}

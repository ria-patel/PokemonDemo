// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

class DetailsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> easeAnimation;

  @override
  void onInit() async {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    easeAnimation = Tween<double>(begin: 200, end: 0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInCirc,
      ),
    );

    animationController.forward();
    await Future.delayed(const Duration(seconds: 3), () {});
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}

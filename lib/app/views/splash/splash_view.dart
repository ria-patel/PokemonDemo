// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:pokemon_demo/app/controllers/splash/splash_controller.dart';
import 'package:pokemon_demo/app_utils/constants/asset_constants.dart';
import 'package:pokemon_demo/app_utils/constants/string_constants.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      body: AnimatedBuilder(
        animation: controller.bounceAnimation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, controller.bounceAnimation.value),
            child: child,
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AssetConstants.imgPlaceHolder,
                height: 60,
                width: 60,
              ),
              const SizedBox(height: 18),
              Text(
                StringConstants.appName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

class LoadingUtils {
  static var isLoaderShowing = false;

  static void showLoader() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isLoaderShowing) {
        Get.dialog(
          barrierDismissible: false,
          const PopScope(
            canPop: false,
            child: Center(child: CircularProgressIndicator.adaptive()),
          ),
        );
        isLoaderShowing = true;
      }
    });
  }

  static void hideLoader() {
    if (isLoaderShowing) {
      Get.back();
      isLoaderShowing = false;
    }
  }
}

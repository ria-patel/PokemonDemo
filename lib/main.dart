// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

// Project imports:
import 'package:pokemon_demo/app/controllers/splash/splash_controller.dart';
import 'package:pokemon_demo/app_utils/constants/string_constants.dart';
import 'package:pokemon_demo/app_utils/helpers/app_utils.dart';
import 'package:pokemon_demo/app_utils/routes/app_pages.dart';
import 'package:pokemon_demo/app_utils/themes/app_theme.dart';

Future<void> main() async {
  await dotenv.load(fileName: "assets/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: StringConstants.appName,
      navigatorKey: AppUtils.navigationKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: Routes.SPLASH,
      getPages: AppPages.pages,
      defaultTransition: Transition.rightToLeftWithFade,
      onInit: () {
        Get.put(SplashController());
      },
    );
  }
}

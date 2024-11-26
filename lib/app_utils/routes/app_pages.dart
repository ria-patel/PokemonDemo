// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:pokemon_demo/app/models/details/bindings/details_binding.dart';
import 'package:pokemon_demo/app/models/home/bindings/home_binding.dart';
import 'package:pokemon_demo/app/models/splash/bindings/splash_binding.dart';
import 'package:pokemon_demo/app/views/details/details_view.dart';
import 'package:pokemon_demo/app/views/home/home_view.dart';
import 'package:pokemon_demo/app/views/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => const DetailsView(),
      binding: DetailsBinding(),
    ),
  ];
}

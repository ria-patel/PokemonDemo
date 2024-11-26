import 'package:get/get.dart';
import 'package:pokemon_demo/app/controllers/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}

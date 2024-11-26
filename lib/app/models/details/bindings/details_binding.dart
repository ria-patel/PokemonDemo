import 'package:get/get.dart';
import 'package:pokemon_demo/app/controllers/details/details_controller.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController());
  }
}

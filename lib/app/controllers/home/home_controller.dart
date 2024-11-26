// Flutter imports:
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:pokemon_demo/app/models/home/dtos/home/home_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/home_data/home_data_dto.dart';
import 'package:pokemon_demo/app/models/home/repositories/home_repository.dart';
import 'package:pokemon_demo/app_utils/helpers/exception_handler.dart';
import 'package:pokemon_demo/app_utils/loaders/loading_utils.dart';

class HomeController extends GetxController {
  final homeRepo = HomeRepository();
  final RxString error = RxString('');
  Rx<HomeDto> homeDto = HomeDto().obs;
  TextEditingController searchController = TextEditingController();
  RxBool searchVisible = RxBool(false);
  RxInt currentPage = RxInt(1);
  RxList<HomeDataDto> homeDataList = RxList([]);

  @override
  Future<void> onInit() async {
    super.onInit();
    await getHomeData();
  }

  Future<void> getHomeData() async {
    LoadingUtils.showLoader();
    final response = await homeRepo.getHomeData(
      page: currentPage.value,
      pageSize: 10,
      name: searchController.text.trim(),
    );
    if (response.error == null) {
      homeDto.value = response.data!;
      homeDataList.value = homeDto.value.data ?? [];
      LoadingUtils.hideLoader();
    } else {
      LoadingUtils.hideLoader();
      error.value = ErrorHandler.getErrorMessage(response.error!);
      if (error.value.isNotEmpty) {
        Get.rawSnackbar(
          titleText: const SizedBox.shrink(),
          message: error.value,
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 3),
        );
      }
    }
  }

  void updateSearchValue() {
    searchVisible.value = !searchVisible.value;
    if (!searchVisible.value) {
      searchController.text = '';
      getHomeData();
    }
  }

  void onPageChanged(int index) {
    currentPage.value = index + 1;
    getHomeData();
  }
}

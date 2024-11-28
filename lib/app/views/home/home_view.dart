// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:number_paginator/number_paginator.dart';

// Project imports:
import 'package:pokemon_demo/app/controllers/home/home_controller.dart';
import 'package:pokemon_demo/app/models/home/dtos/home_data/home_data_dto.dart';
import 'package:pokemon_demo/app/models/home/dtos/image/image_dto.dart';
import 'package:pokemon_demo/app_utils/constants/string_constants.dart';
import 'package:pokemon_demo/app_utils/routes/app_pages.dart';
import 'package:pokemon_demo/app_utils/widgets/image/cached_image.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: !controller.searchVisible.value
              ? const Text(StringConstants.appName)
              : TextField(
                  controller: controller.searchController,
                  onSubmitted: (value) {
                    controller.getHomeData();
                  },
                  decoration: InputDecoration(
                    hintText: StringConstants.searchByName,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        controller.updateSearchValue();
                      },
                    ),
                  ),
                ),
          actions: controller.searchVisible.value
              ? []
              : [
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(StringConstants.search),
                    ),
                    onTap: () {
                      controller.updateSearchValue();
                    },
                  ),
                ],
        ),
        body: controller.homeDataList.isEmpty
            ? const Center(
                child: Text(
                  StringConstants.noDataFound,
                  style: TextStyle(color: Colors.grey),
                ),
              )
            : GridView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: controller.homeDataList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.1,
                ),
                itemBuilder: (context, index) {
                  HomeDataDto homeDataDto = controller.homeDataList[index];
                  ImageDto imageDto = homeDataDto.images!;

                  return InkWell(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: CachedImage(
                                imageUrl: imageDto.small ?? '',
                                fit: BoxFit.fitWidth,
                                width: double.infinity,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            homeDataDto.set?.name ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Get.toNamed(
                        Routes.DETAILS,
                        arguments: homeDataDto,
                      );
                    },
                  );
                },
              ),
        bottomNavigationBar: controller.homeDataList.isEmpty
            ? const SizedBox.shrink()
            : NumberPaginator(
                initialPage: 0,
                numberPages: controller.homeDto.value.totalCount! ~/ 10,
                config: const NumberPaginatorUIConfig(
                    buttonSelectedBackgroundColor: Colors.blue),
                onPageChange: (int index) {
                  controller.onPageChanged(index);
                },
              ),
      ),
    );
  }
}

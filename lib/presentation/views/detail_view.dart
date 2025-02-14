import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_info/presentation/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.country.name ?? '',
          style: Get.textTheme.displaySmall,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                      controller: controller.pageController,
                      itemCount: controller.headerImages.length,
                      onPageChanged: (index) {
                        controller.currPage.value = index;
                      },
                      itemBuilder: (context, index) {
                        final imageUrl = controller.headerImages[index];
                        return Container(
                          height: 200,
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(imageUrl),
                              fit: index == 0 ? BoxFit.cover : BoxFit.fitHeight,
                            ),
                          ),
                        );
                      }),
                ),
                Positioned(
                  top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: controller.previousPage,
                        child: Obx(() {
                            return CircleAvatar(
                              backgroundColor: controller.currPage.value == 0 ? Colors.white38 : Colors.black38,
                              radius: 18,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(Icons.arrow_back_ios, color: controller.currPage.value == 0 ? Colors.white:Colors.black),
                              ),
                            );
                          }
                        ),
                      ),
                      GestureDetector(
                        onTap: controller.nextPage,
                        child: Obx(() {
                            return CircleAvatar(
                              backgroundColor: controller.currPage.value == 0 ? Colors.white38 : Colors.black38,
                              radius: 18,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Icon(Icons.arrow_forward_ios, color: controller.currPage.value == 0 ? Colors.white:Colors.black),
                              ),
                            );
                          }
                        ),
                      ),
                    ],
                  ),
                )),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.headerImages.length,
                        (index) => Container(
                          width: 6.0,
                          height: 6.0,
                          margin: const EdgeInsets.symmetric(horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: controller.currPage == index
                                ? Colors.white
                                : Colors.black45,
                          ),
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
            SizedBox(height: 16),
            _buildInfo(
                'Population: ', controller.country.population.toString()),
            _buildInfo('Region: ', controller.country.region ?? ''),
            _buildInfo('Capital: ', controller.country.capital ?? ''),
            _buildInfo('Motto: ', controller.country.motto ?? ''),
            SizedBox(height: 16),
            _buildInfo(
                'Official language: ', controller.country.language ?? ''),
            _buildInfo('Ethnic group: ', controller.country.ethnicity ?? ''),
            _buildInfo('Religion: ', controller.country.ethnicity ?? ''),
            _buildInfo('Government: ', controller.country.government ?? ''),
            SizedBox(height: 16),
            _buildInfo('Independence: ', controller.country.independence ?? ''),
            _buildInfo('Area: ', '${controller.country.area ?? '0'} km2'),
            _buildInfo('Currency: ', controller.country.currency ?? ''),
            _buildInfo('GDP: ', controller.country.gdp ?? ''),
            SizedBox(height: 16),
            _buildInfo('Time zone: ', controller.country.timezone ?? ''),
            _buildInfo('Date format: ', controller.country.dateFormat ?? ''),
            _buildInfo('Dialing code: ', controller.country.dialCode ?? ''),
            _buildInfo('Driving side: ', controller.country.driveSide ?? ''),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: Get.textTheme.titleSmall
                  ?.copyWith(fontWeight: FontWeight.bold)),
          SizedBox(
            width: 8,
          ),
          Text(value,
              style: Get.textTheme.titleSmall
                  ?.copyWith(color: CupertinoColors.systemGrey)),
        ],
      ),
    );
  }
}

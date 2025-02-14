import 'package:country_info/models/country_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {

  late CountryInfo country;
  final currPage = 0.obs;
  final headerImages = [];
  final PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();
    country = Get.arguments;
    if (country.flag != null) {
      headerImages.add(country.flag);
    }
    if (country.coatOfArm != null) {
      headerImages.add(country.coatOfArm);
    }
  }

  void previousPage() {
    pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void nextPage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }



}
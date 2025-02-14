import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';

import '../../models/az_item.dart';
import '../../models/country_info.dart';
import '../../provider/api_provider.dart';

class HomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final isLoading = false.obs;
  final searchedCountries = <CountryInfo>[].obs;
  late List<CountryInfo> countries = [];
  final debouncer = Debouncer(delay: Duration(milliseconds: 500));

  late ApiProvider _apiProvider;

  final selectedLang = "".obs;
  final languages = [
    "Bahasa",
    "Deutsch",
    "English",
    "Español",
    "Français",
    "Italiano",
    "Português",
    "Русский",
    "Svenska",
    "Türkçe",
    "普通话",
    "بالعربية",
    "বাঙ্গালী"
  ];

  final selectedContinents = [].obs;
  final continents = [
    "Africa",
    "Antarctica",
    "Asia",
    "Australia",
    "Europe",
    "North America",
    "South America"
  ];

  final selectedTimeZones = [].obs;
  final timeZones = [
    "GMT+1:00",
    "GMT+2:00",
    "GMT+3:00",
    "GMT+4:00",
    "GMT+5:00",
    "GMT+6:00",
    "GMT+7:00",
    "GMT-6:00",
  ];

  HomeController() {
    _apiProvider = ApiProvider();
    selectedLang.value = languages[2];
  }

  @override
  void onInit() {
    fetchCountryData();
    super.onInit();
  }

  Future<void> fetchCountryData() async {
    isLoading.value = true;
    try {
      final fetchedData = [];
      fetchedData.addAll((await _apiProvider.getCountries()));
      countries = formatCountries(fetchedData);
      searchedCountries.value = countries;
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 3),
      ).show();
    } finally {
     isLoading.value = false;
    }
  }

  List<CountryInfo> formatCountries(List countries) {
    // format the countries to be used in the AzListView
    final fmtCountries = countries.map((e) => CountryInfo.fromJson(e)).toList();
    SuspensionUtil.sortListBySuspensionTag(fmtCountries);
    // Show sus tag
    SuspensionUtil.setShowSuspensionStatus(fmtCountries);
    return fmtCountries;
  }

  void searchCountries(String text) {
    debouncer.call(() {
      final searchCountries = (text.isEmpty
          ? countries
          : [
        ...countries.where((country) => country.name
        !.toLowerCase().contains(text.toLowerCase()) || country.capital!.toLowerCase().contains(text.toLowerCase()))
      ]);
      searchedCountries.value = searchCountries;
    });
  }

}


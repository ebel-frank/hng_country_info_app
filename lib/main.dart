import 'package:country_info/common/theme.dart';
import 'package:country_info/presentation/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/routes.dart';

void main() {
  final ThemeController themeController = Get.put(ThemeController());

  runApp(GetMaterialApp(
    title: "Country Info",
    debugShowCheckedModeBanner: false,
    getPages: AppRoutes.routes,
    themeMode: themeController.themeMode,
    theme: AppTheme.getLightTheme(),
    darkTheme: AppTheme.getDarkTheme(),
  ));
}

import 'package:country_info/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterBottomSheet extends GetView<HomeController> {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Get.theme.primaryColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              color: Get.theme.focusColor.withOpacity(0.4),
              blurRadius: 30,
              offset: Offset(0, -30)),
        ],
      ),
      child: SingleChildScrollView(
        child: Theme(
          data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              checkboxTheme: CheckboxThemeData(
                fillColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return Get.isDarkMode ? Colors.white : Colors.black;
                  }
                  return Colors.transparent;
                }),
              )),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filter',
                      style: Get.textTheme.displaySmall,
                    ),
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(Icons.close, color: Get.theme.hintColor),
                    ),
                  ],
                ),
              ),
              ExpansionTile(
                title: Text("Continents".tr, style: Get.textTheme.bodyMedium),
                children: List.generate(controller.continents.length, (index) {
                  var continent = controller.continents.elementAt(index);
                  return Obx(() {
                    return CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: controller.selectedContinents.contains(continent),
                      // checkColor: Get.isDarkMode ? Colors.white : Colors.black,
                      onChanged: (value) {
                        if (value!) {
                          controller.selectedContinents.add(continent);
                        } else {
                          controller.selectedContinents
                              .removeWhere((element) => element == continent);
                        }
                      },
                      title: Text(
                        continent,
                        style: Get.textTheme.bodyLarge,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                        maxLines: 1,
                      ),
                    );
                  });
                }),
              ),
              ExpansionTile(
                title: Text("Time Zone".tr, style: Get.textTheme.bodyMedium),
                children: List.generate(controller.timeZones.length, (index) {
                  var continent = controller.timeZones.elementAt(index);
                  return Obx(() {
                    return CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: controller.selectedTimeZones.contains(continent),
                      // checkColor: Get.isDarkMode ? Colors.white : Colors.black,
                      onChanged: (value) {
                        if (value!) {
                          controller.selectedTimeZones.add(continent);
                        } else {
                          controller.selectedTimeZones
                              .removeWhere((element) => element == continent);
                        }
                      },
                      title: Text(
                        continent,
                        style: Get.textTheme.bodyLarge,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                        maxLines: 1,
                      ),
                    );
                  });
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        controller.selectedContinents.clear();
                        controller.selectedTimeZones.clear();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                              color: Get.theme.hintColor.withOpacity(0.2)),
                        ),
                        child: Text("Reset",
                            style: Get.textTheme.titleSmall,
                            textAlign: TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: InkWell(
                      onTap: () {
                        Get.back();
                        Get.snackbar("Success", "Filter applied successfully", snackPosition: SnackPosition.BOTTOM)
                            .show();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFFF6C00),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text("Show results",
                            style: Get.textTheme.titleSmall
                                ?.copyWith(color: Colors.white),
                            textAlign: TextAlign.center),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

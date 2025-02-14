import 'package:country_info/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageBottomSheet extends GetView<HomeController> {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height - 90,
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Languages',
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
          Expanded(
            child: ListView.builder(
              itemCount: controller.languages.length,
              itemBuilder: (context, index) {
                final language = controller.languages[index];
                return ListTile(
                  onTap: () {
                    controller.selectedLang.value = language;
                  },
                  title: Text(language, style: Get.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.normal),),
                  trailing: Obx(() {
                    return Icon(controller.selectedLang.value != language
                        ? Icons.circle_outlined
                        : Icons.radio_button_checked);
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

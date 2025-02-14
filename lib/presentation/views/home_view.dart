import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:country_info/models/country_info.dart';
import 'package:country_info/presentation/controllers/theme_controller.dart';
import 'package:country_info/presentation/views/filter_bottom_sheet.dart';
import 'package:country_info/presentation/widgets/option_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/assets.dart';
import '../../common/routes.dart';
import '../controllers/home_controller.dart';
import '../widgets/list_loading_tile.dart';
import 'language_bottom_sheet.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final expandedHeight = 110.0;
    return Scaffold(
      body: GetBuilder<HomeController>(builder: (controller) {
        return SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                floating: false,
                title: Image(
                  image: AssetImage(Get.find<ThemeController>().isDarkMode.value
                      ? Assets.logo
                      : Assets.logoDark),
                  width: Get.size.width * 0.3,
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        Get.find<ThemeController>().toggleTheme();
                        setState(() {});
                        Get.log("Theme: ${Get.theme.brightness}");
                      },
                      icon: Icon(Theme.of(context).brightness == Brightness.dark
                          ? Icons.dark_mode_outlined
                          : Icons.wb_sunny_outlined)),
                ],
                expandedHeight: expandedHeight,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(expandedHeight),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Search Country",
                            prefixIcon: Icon(Icons.search,
                                color: Get.theme.hintColor),
                            contentPadding: EdgeInsets.all(16),
                            filled: true,
                            fillColor: Get.theme.cardColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          onChanged: (text) {
                            controller.searchCountries(text);
                          },
                        ),
                        /*Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Get.theme.cardColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search, color: Get.theme.hintColor),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Search Country",
                                  style: Get.textTheme.titleSmall
                                      ?.copyWith(color: Get.theme.hintColor))
                            ],
                          ),
                        ),*/
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            OptionTile(
                                icon: Icons.language,
                                title: "EN",
                                onTap: () {
                                  Get.bottomSheet(
                                    LanguageBottomSheet(),
                                    isScrollControlled: true,
                                  );
                                }),
                            Spacer(),
                            OptionTile(
                              icon: Icons.filter_alt_outlined,
                              title: "Filter",
                              onTap: () {
                                Get.bottomSheet(FilterBottomSheet(),
                                    isScrollControlled: true,
                                    ignoreSafeArea: false);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Obx(() {
                if (controller.isLoading.value) {
                  return SliverFillRemaining(child: ListLoadingTile());
                }
                return SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  return _buildListItem(
                      controller.searchedCountries.elementAt(index),
                      () => Get.toNamed(AppRoutes.DETAIL,
                          arguments: controller.searchedCountries[index]));
                }, childCount: controller.searchedCountries.length));
              })
            ],
          ),
        );
      }),
    );
  }

  Widget _buildSusWidget(String susTag) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      height: 30,
      width: double.infinity,
      alignment: Alignment.bottomLeft,
      child: Text(
        susTag,
        style: Get.textTheme.bodyMedium
            ?.copyWith(color: CupertinoColors.systemGrey, fontSize: 14),
      ),
    );
  }

  Widget _buildListItem(CountryInfo item, VoidCallback onTap) {
    String susTag = item.getSuspensionTag();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Offstage(
          offstage: item.isShowSuspension != true,
          child: _buildSusWidget(susTag),
        ),
        ListTile(
          onTap: onTap,
          leading: Container(
            width: 45,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: item.flag ?? '',
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          title: Text(item.name ?? ''),
          subtitle: Text(
            item.capital ?? '',
            maxLines: 1,
            style: Get.textTheme.bodySmall,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}

import 'package:country_info/presentation/views/detail_view.dart';
import 'package:get/get.dart';

import '../presentation/bindings/home_binding.dart';
import '../presentation/views/home_view.dart';

class AppRoutes {
  static const HOME = '/';
  static const DETAIL = '/detail';

  static var routes = [
    GetPage(name: HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(name: DETAIL, page: () => DetailView(), binding: HomeBinding()),
  ];
}

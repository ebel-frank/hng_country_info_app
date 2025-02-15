import 'package:get/get.dart';

import '../controllers/detail_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());

    Get.lazyPut<DetailController>(() => DetailController());
  }
}
import 'package:get/get.dart';

import '../controllers/web_nav_controller.dart';

class WebNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebNavController>(
      () => WebNavController(),
    );
  }
}

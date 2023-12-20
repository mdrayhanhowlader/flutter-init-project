import 'package:get/get.dart';

import '../controllers/api_handling_controller.dart';

class ApiHandlingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiHandlingController>(
      () => ApiHandlingController(),
    );
  }
}

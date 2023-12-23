import 'package:get/get.dart';

import '../controllers/new_application_controller.dart';

class NewApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewApplicationController>(
      () => NewApplicationController(),
    );
  }
}

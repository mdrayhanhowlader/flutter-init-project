import 'package:get/get.dart';

import '../controllers/e_infaq_controller.dart';

class EInfaqBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EInfaqController>(
      () => EInfaqController(),
    );
  }
}

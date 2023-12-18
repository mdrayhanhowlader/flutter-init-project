import 'package:get/get.dart';

import '../controllers/infaq_pay_controller.dart';

class InfaqPayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfaqPayController>(
      () => InfaqPayController(),
    );
  }
}

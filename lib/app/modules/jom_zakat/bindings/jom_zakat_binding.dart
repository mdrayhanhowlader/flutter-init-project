import 'package:get/get.dart';

import '../controllers/jom_zakat_controller.dart';

class JomZakatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JomZakatController>(
      () => JomZakatController(),
    );
  }
}

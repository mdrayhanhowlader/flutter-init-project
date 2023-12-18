import 'package:get/get.dart';

import '../controllers/tafsiran_logo_controller.dart';

class TafsiranLogoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TafsiranLogoController>(
      () => TafsiranLogoController(),
    );
  }
}

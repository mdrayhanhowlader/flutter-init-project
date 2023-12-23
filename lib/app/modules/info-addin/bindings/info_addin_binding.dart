import 'package:get/get.dart';

import '../controllers/info_addin_controller.dart';

class InfoAddinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoAddinController>(
      () => InfoAddinController(),
    );
  }
}
